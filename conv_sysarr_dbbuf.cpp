#include "hw_param.h"

// using macro in PRAGMA
#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)

#define ARRAY_K 4
#define ARRAY_C 4
#define TILESIZE_H 1
#define TILESIZE_W 1

void runWeight2Reg(DPTYPE weight_regfile[ARRAY_K][ARRAY_C], DPTYPE (*weight_l2)[ARRAY_C], const uint C,
		const uint RS, const uint ko, const uint co, const uint r, const uint s) {
	for (int ki = 0; ki < ARRAY_K; ki++) {
		for (int ci = 0; ci < ARRAY_C; ci++) {
			#pragma HLS pipeline //must be pipelined for dataflow, (and ARRAY_K & ARRAY_C may be small)
			int k = (ko * ARRAY_K + ki);
			int c = (co * ARRAY_C + ci);
			weight_regfile[ki][ci] = weight_l2[ko * C * RS
					* RS + c * RS * RS + r * RS + s][ki];
		}
	}
}

void runL2toL1(DPTYPE data_l1buf[512][ARRAY_C], DPTYPE (*data_l2)[ARRAY_C], uint TILED_H,
		uint TILED_W, uint co, uint ho, uint wo, uint r, uint s, uint WH_in) {
	LOOP_L2_H: for (int hi = 0; hi < TILED_H; hi++) {
		#pragma HLS loop_tripcount min=7 max=7
		LOOP_L2_W: for (int wi = 0; wi < TILED_W; wi++) {
			#pragma HLS loop_tripcount min=7 max=7
			for (int ci = 0; ci < ARRAY_C; ci++) { // place unroll to inner-most
				#pragma HLS unroll
				int c = (co * ARRAY_C + ci);
				int h = (ho * TILED_H + hi) + r;
				int w = (wo * TILED_W + wi) + s;
				data_l1buf[hi * TILED_W + wi][ci] =
						data_l2[co * WH_in * WH_in + h * WH_in + w][ci];
			}
		}
	}
}

void runSysArr(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE data_l1buf[512][ARRAY_C],
		MACTYPE (*output_l1_pass)[ARRAY_K],
		uint input_rows, uint TILED_H, uint TILED_W,
		uint ko, bool isFirst) {
	static MACTYPE output_l1_local[1024][ARRAY_K];

	DPTYPE data_reg[ARRAY_K][ARRAY_C];
	#pragma HLS dependence variable=data_reg
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
	#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
	#pragma HLS ARRAY_PARTITION variable=output_reg complete  // Register
	LOOP_INPUT_ROW: for (int i = 0; i < input_rows; i++) {
		#pragma HLS LOOP_TRIPCOUNT max=55 min=55
		#pragma HLS DEPENDENCE variable=output_l1
		#pragma HLS pipeline

		DPTYPE input_data[ARRAY_C];
		#pragma HLS array_partition variable=input_data complete
		for (int ci = 0; ci < ARRAY_C; ci++) {
			#pragma HLS pipeline
			int hi = (i - ci) / TILED_W;
			int wi = (i - ci) % TILED_W;
			if (i - ci >= 0)
				input_data[ci] = data_l1buf[hi * TILED_W + wi][ci];
			else
				input_data[ci] = 0; //Bubble
		}
		MACTYPE output_buf[ARRAY_K];
		for (int ki = ARRAY_K - 1; ki >= 0; ki--) {
			int hi = (i - ki) / TILED_W;
			int wi = (i - ki) % TILED_W;
			if (i - ki >= 0)
				output_buf[ki] = (isFirst)?(0):(output_l1_local[hi * TILED_W + wi][ki]);
			else
				output_buf[ki] = 0;
		}

		for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
			#pragma HLS DEPENDENCE variable=output_reg inter WAR false
			#pragma HLS unroll
			for (int ci = ARRAY_C - 1; ci >= 0; ci--) { // SysArr DIM : C
				#pragma HLS DEPENDENCE variable=output_reg inter WAR false
				#pragma HLS unroll
				data_reg[ki][ci] =
						(ki == 0) ? (input_data[ci]) : (data_reg[(ki - 1)][ci]);
				MACTYPE psum =
						(ci == 0) ?
								(output_buf[ki]) : (output_reg[ki][(ci - 1)]);
				output_reg[ki][ci] = psum
						+ (MACTYPE) data_reg[ki][ci]
								* (MACTYPE) weight_regfile[ki][ci];
			}
		}

		for (int ki = ARRAY_K - 1; ki >= 0; ki--) {
			if ((i - ARRAY_C + 1) - ki >= 0 && (i - ARRAY_C + 1) - ki < TILED_W * TILED_H) { //is needed?
				int k = (ko * ARRAY_K + ki);
				int hi = ((i - ARRAY_C + 1) - ki) / TILED_W;
				int wi = ((i - ARRAY_C + 1) - ki) % TILED_W;
				output_l1_local[(i - ARRAY_C + 1) - ki][ki] =
						output_reg[ki][(ARRAY_C - 1)];
				output_l1_pass[(i - ARRAY_C + 1) - ki][ki] = output_l1_local[(i - ARRAY_C + 1) - ki][ki];
			}
		}
	}
}


void Conv_sysarr(hls::stream<k2k_data> &bias_in,
		hls::stream<k2k_data> &weight_in, hls::stream<k2k_data> &data_in,
		hls::stream<k2k_data> &conv_out) {
	#pragma HLS expression_balance

	DPTYPE bias_l2[2048];
	DPTYPE weight_l2[512][ARRAY_K];
	DPTYPE data_l2[1024][ARRAY_C];
	MACTYPE output_l2[2048];
	DPTYPE bias_l1[512][ARRAY_K];
	MACTYPE output_l1[512][ARRAY_K];

	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 cyclic factor=ARRAY_C)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 cyclic factor=ARRAY_K)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l1 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l1 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l1 dim=2 complete)

	k2k_data param_tmp;
	k2k_data bias_tmp;
	k2k_data weight_tmp;
	k2k_data input_tmp;
	k2k_data output_tmp;

	param_tmp = bias_in.read();
	uint K = (uint) param_tmp.data(31, 0);
	param_tmp = bias_in.read();
	uint C = (uint) param_tmp.data(31, 0);
	param_tmp = bias_in.read();
	uint WH = (uint) param_tmp.data(31, 0);
	uint TILED_H = WH / TILESIZE_H;
	uint TILED_W = WH / TILESIZE_W;
	param_tmp = bias_in.read();
	uint WH_in = (uint) param_tmp.data(31, 0);
	uint H_in_TILE = WH_in / TILESIZE_H;
	uint W_in_TILE = WH_in / TILESIZE_H;
	param_tmp = bias_in.read();
	uint RS = (uint) param_tmp.data(31, 0);

	uint input_rows = TILED_H * TILED_W + (ARRAY_K - 1) + (ARRAY_C - 1);

	// Read Bias from DRAM
	for (unsigned int ko = 0; ko < K/VEC_SIZE; ko++) {
		#pragma HLS loop_tripcount min=4 max=4
		bias_tmp = bias_in.read();
		for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			unsigned int v = ki;
			bias_l1[ko][ki] = (DPTYPE) bias_tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH);
		}
	}
	// Read Weight from DRAM
	for (unsigned int crs = 0; crs < C * RS * RS; crs++) {
		#pragma HLS loop_tripcount min=36 max=36
		for (unsigned int ko = 0; ko < K / VEC_SIZE; ko++) {
			#pragma HLS loop_tripcount min=4 max=4
			weight_tmp = weight_in.read();
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
				unsigned int kcrs = ko*C*RS*RS + crs;
				unsigned int v = ki;
				weight_l2[kcrs][ki] = (DPTYPE) weight_tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH);
			}
		}
	}
	// Read Input from DRAM
	for(unsigned int wh = 0; wh < WH_in * WH_in; wh++) {
		#pragma HLS loop_tripcount min=81 max=81
		for (unsigned int co = 0; co < C/VEC_SIZE; co++) {
			#pragma HLS loop_tripcount min=1 max=1
			input_tmp = data_in.read();
			for(unsigned int ci = 0; ci < VEC_SIZE; ci++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
				unsigned int v = ci;
				data_l2[co*WH_in * WH_in + wh][ci] = (DPTYPE) input_tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH);
			}
		}
	}

	LOOP_K_OUTER: for (int ko = 0; ko < K / ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=4 max=4
		LOOP_C_OUTER: for (int co = 0; co < C / ARRAY_C; co++) {
			#pragma HLS loop_tripcount min=1 max=1
			LOOP_H_OUTER: for (int ho = 0; ho < TILESIZE_H; ho++) { // TODO: Tiling
				LOOP_W_OUTER: for (int wo = 0; wo < TILESIZE_W; wo++) { // TODO: Tiling
					// Bias Initialization
					for (int hi = 0; hi < TILED_H; hi++) {
						#pragma HLS loop_tripcount min=7 max=7
						for (int wi = 0; wi < TILED_W; wi++) {
							#pragma HLS loop_tripcount min=7 max=7
							for (int ki = 0; ki < ARRAY_K; ki++) {
								#pragma HLS unroll
								output_l1[ko*TILED_H*TILED_W + hi*TILED_W + wi][ki] = bias_l1[ko][ki];
							}
						}
					}

					// Systolic Array
					MACTYPE output_l1_pass[1024][ARRAY_K];
					LOOP_R: for (int r = 0; r < RS; r++) { // TODO: Tiling
						#pragma HLS loop_tripcount min=3 max=3
						LOOP_S: for (int s = 0; s < RS; s++) { // TODO: Tiling
							#pragma HLS loop_tripcount min=3 max=3
							#pragma HLS dataflow
							bool isFirst;
							if(r==0 && s==0) isFirst = true;
							else isFirst = false;

							DPTYPE weight_regfile[ARRAY_K][ARRAY_C];
							DPTYPE data_l1buf[512][ARRAY_C];
							#pragma HLS ARRAY_PARTITION variable=weight_regfile dim=0 complete // Register
							#pragma HLS ARRAY_PARTITION variable=data_l1buf dim=2 complete // Register

							//Systolic Array
							runWeight2Reg(weight_regfile, weight_l2, C, RS, ko, co, r, s);
							runL2toL1(data_l1buf, data_l2, TILED_H, TILED_W, co, ho, wo, r, s, WH_in);
							runSysArr(weight_regfile, data_l1buf, output_l1_pass, input_rows,
									TILED_H, TILED_W, ko, isFirst);
						} // Loop S
					} // Loop R

					// Store output
					for (unsigned int wh = 0; wh < TILED_H * TILED_W; wh++) {
						#pragma HLS loop_tripcount min=49 max=49
						for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
							#pragma HLS unroll
							output_l1[ko*TILED_H*TILED_W + wh][ki] += output_l1_pass[wh][ki];
						}
					}
				}
			}
		}
	}

	for (unsigned int wh = 0; wh < WH * WH; wh++) {
		#pragma HLS loop_tripcount min=49 max=49
		for (unsigned int ko = 0; ko < (K / VEC_SIZE); ko++) {
			#pragma HLS loop_tripcount min=4 max=4
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
				unsigned int v = ki;
				output_tmp.data((v+1)*MAC_WIDTH-1, v*MAC_WIDTH) = output_l1[ko * WH * WH + wh][ki];
			}
			conv_out.write(output_tmp);
		}
	}

	printf("Kernel coreConv compelete !!!\n");
}
