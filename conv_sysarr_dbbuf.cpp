#include "hw_param.h"

// using macro in PRAGMA
#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)

#define ARRAY_K 4
#define ARRAY_C 4
#define   DATA_L2_SIZE 817216
#define WEIGHT_L2_SIZE 589824
#define OUTPUT_L2_SIZE 802816
#define   BIAS_L2_SIZE 16
#define   DATA_L1_SIZE 196
#define WEIGHT_L1_SIZE -1
#define OUTPUT_L1_SIZE 196

void runWeight2Reg(DPTYPE weight_regfile[ARRAY_K][ARRAY_C], DPTYPE (*weight_l2)[ARRAY_C], const uint C,
		const uint RS, const uint ko, const uint co, const uint r, const uint s) {
	for (int ci = 0; ci < ARRAY_C; ci++) {
			for (int ki = 0; ki < ARRAY_K; ki++) {
			//#pragma HLS pipeline //must be pipelined for dataflow, (and ARRAY_K & ARRAY_C may be small) ..?
			int k = (ko * ARRAY_K + ki);
			int c = (co * ARRAY_C + ci);
			weight_regfile[ki][ci] = weight_l2[ko * C * RS
					* RS + c * RS * RS + r * RS + s][ki];
		}
	}
}

void runDataL2toL1(DPTYPE (*data_l1)[ARRAY_C], DPTYPE (*data_l2)[ARRAY_C], uint TILESIZE_H,
		uint TILESIZE_W, uint co, uint ho, uint wo, uint r, uint s, uint WH_in) {
	LOOP_L2_H_IN: for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=7 max=7
		LOOP_L2_W_IN: for (int wi = 0; wi < TILESIZE_W; wi++) {
			#pragma HLS loop_tripcount min=7 max=7
			for (int ci = 0; ci < ARRAY_C; ci++) { // place unroll to inner-most
				#pragma HLS unroll
				int c = (co * ARRAY_C + ci);
				int h = (ho * TILESIZE_H + hi) + r;
				int w = (wo * TILESIZE_W + wi) + s;
				data_l1[hi * TILESIZE_W + wi][ci] =
						data_l2[co * WH_in * WH_in + h * WH_in + w][ci];
			}
		}
	}
}


void runOutputL1toL2(MACTYPE (*output_l1)[ARRAY_K], MACTYPE (*output_l2)[ARRAY_K],
		uint TILESIZE_H, uint TILESIZE_W, uint ko, uint ho, uint wo, uint WH) {
	LOOP_L2_H: for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=7 max=7
		LOOP_L2_W: for (int wi = 0; wi < TILESIZE_W; wi++) {
			#pragma HLS loop_tripcount min=7 max=7
			for (int ki = 0; ki < ARRAY_K; ki++) { // place unroll to inner-most
				#pragma HLS unroll
				int k = (ko * ARRAY_K + ki);
				int h = (ho * TILESIZE_H + hi);
				int w = (wo * TILESIZE_W + wi);
				output_l2[ko * WH * WH + h * WH + w][ki] =
						output_l1[hi * TILESIZE_W + wi][ki];
			}
		}
	}
}

void doSysArr(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE (*data_l1)[ARRAY_C],
		DPTYPE data_reg[ARRAY_K][ARRAY_C], MACTYPE output_reg[ARRAY_K][ARRAY_C],
		MACTYPE (*output_l1_local)[ARRAY_K], MACTYPE (*output_l1)[ARRAY_K],
		uint hi, uint wi, uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S, bool isFirst) {
#pragma HLS inline //for pipelining
	// Push Input
	int i = hi*TILESIZE_W + wi;
	DPTYPE input_data[ARRAY_C];
	#pragma HLS array_partition variable=input_data complete
	for (int ci = 0; ci < ARRAY_C; ci++) {
		#pragma HLS unroll
		//int hi = (i - ci) / TILESIZE_W;
		//int wi = (i - ci) % TILESIZE_W;
		if (i - ci >= 0)
			//input_data[ci] = data_l1[hi * TILESIZE_W + wi][ci];
			input_data[ci] = data_l1[i - ci][ci];
		else
			input_data[ci] = 0; //Bubble
	}

	// SysArr
	for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
		#pragma HLS unroll
		for (int ci = ARRAY_C - 1; ci >= 0; ci--) { // SysArr DIM : C
			#pragma HLS unroll
			data_reg[ki][ci] =
					(ki == 0) ? (input_data[ci]) : (data_reg[(ki - 1)][ci]);
			MACTYPE psum =
					(ci == 0) ?
							(0) : (output_reg[ki][(ci - 1)]);
			output_reg[ki][ci] = psum
					+ (data_reg[ki][ci]	* weight_regfile[ki][ci]);
		}
	}

	// Pull Output
	for (int ki = ARRAY_K - 1; ki >= 0; ki--) {
		#pragma HLS unroll
		if ((i - ARRAY_C + 1) - ki >= 0 && (i - ARRAY_C + 1) - ki < TILESIZE_W * TILESIZE_H) { //is needed?
			/*if(isFirst)
				output_l1_local[(i - ARRAY_C + 1) - ki][ki] =
						output_reg[ki][(ARRAY_C - 1)];
			else
				output_l1_local[(i - ARRAY_C + 1) - ki][ki] +=
						output_reg[ki][(ARRAY_C - 1)];*/
			MACTYPE tmp = (isFirst)?(0):(output_l1_local[(i - ARRAY_C + 1) - ki][ki]);
			output_l1_local[(i - ARRAY_C + 1) - ki][ki] =
									tmp + output_reg[ki][(ARRAY_C - 1)];
			output_l1[((i - ARRAY_C + 1) - ki)][ki] = output_l1_local[(i - ARRAY_C + 1) - ki][ki];
		}
	}
}

void runSysArr(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE (*data_l1)[ARRAY_C],
		MACTYPE (*output_l1_local)[ARRAY_K], MACTYPE (*output_l1)[ARRAY_K],
		int input_rows,
		int bubble_h, int bubble_w,
		uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S,
		bool isFirst) {

	DPTYPE data_reg[ARRAY_K][ARRAY_C];
	#pragma HLS dependence variable=data_reg
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
	#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
	#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete  // Register
	LOOP_R_INNER: for (int ri = 0; ri < TILESIZE_R; ri++) {
		#pragma HLS LOOP_TRIPCOUNT max=10 min=10
		LOOP_S_INNER: for (int si = 0; si < TILESIZE_S; si++) {
			#pragma HLS LOOP_TRIPCOUNT max=10 min=10
			#pragma HLS loop_flatten
			LOOP_INPUT_ROW: for (int i = 0; i < input_rows; i++) { {
			/*LOOP_H_INNER: for (int hi = 0; hi <= TILESIZE_H + bubble_h; hi++) {
				#pragma HLS LOOP_TRIPCOUNT max=8 min=8
				LOOP_W_INNER: for (int wi = 0; wi < TILESIZE_W; wi++) {
					#pragma HLS LOOP_TRIPCOUNT max=7 min=7*/
					#pragma HLS LOOP_TRIPCOUNT max=10000 min=10000
					#pragma HLS DEPENDENCE variable=output_l1
					#pragma HLS DEPENDENCE variable=output_l1_local
					#pragma HLS pipeline rewind
					#pragma HLS latency min=1 max=1 // systolic array implementation
					int hi = (i) / TILESIZE_W;
					int wi = (i) % TILESIZE_W;
					doSysArr(weight_regfile, data_l1,
							data_reg, output_reg,
							output_l1_local, output_l1,
							hi, wi, TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S, isFirst);
				}
			}
		}
	}
}

void Conv_sysarr(
		hls::stream<k2k_data> &param_in,
		hls::stream<k2k_data> &bias_in,
		hls::stream<k2k_data> &weight_in,
		hls::stream<k2k_data> &data_in,
		hls::stream<k2k_data> &conv_out) {
	#pragma HLS expression_balance

	DPTYPE bias_l2[BIAS_L2_SIZE][ARRAY_K];
	DPTYPE weight_l2[WEIGHT_L2_SIZE][ARRAY_K];
	DPTYPE data_l2[DATA_L2_SIZE][ARRAY_C];
	MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_K];

	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=2 complete)

	k2k_data param_tmp;
	k2k_data bias_tmp;
	k2k_data weight_tmp;
	k2k_data input_tmp;

	param_tmp = param_in.read();
	uint K = (uint) param_tmp.data(31, 0);
	param_tmp = param_in.read();
	uint C = (uint) param_tmp.data(31, 0);
	param_tmp = param_in.read();
	uint WH = (uint) param_tmp.data(31, 0);
	param_tmp = param_in.read();
	uint WH_in = (uint) param_tmp.data(31, 0);
	param_tmp = param_in.read();
	uint RS = (uint) param_tmp.data(31, 0);
	param_tmp = param_in.read();
	uint TILESIZE_W = (uint) param_tmp.data(31, 0);
	param_tmp = param_in.read();
	uint TILESIZE_H = (uint) param_tmp.data(31, 0);
	param_tmp = param_in.read();
	uint TILESIZE_R = (uint) param_tmp.data(31, 0);
	param_tmp = param_in.read();
	uint TILESIZE_S = (uint) param_tmp.data(31, 0);

	uint TILES_W = WH / TILESIZE_W;
	uint TILES_H = WH / TILESIZE_H;
	uint TILES_R = RS / TILESIZE_R;
	uint TILES_S = RS / TILESIZE_S;

	const uint input_rows = TILESIZE_H * TILESIZE_W + (ARRAY_K - 1) + (ARRAY_C - 1); // inner loop with sysarr bubble
	const uint bubble = (ARRAY_K - 1) + (ARRAY_C - 1);
	const uint bubble_h = bubble / TILESIZE_W;
	const uint bubble_w = bubble % TILESIZE_W;

	// Read Bias from DRAM
	for (unsigned int ko = 0; ko < K/VEC_SIZE; ko++) {
		#pragma HLS loop_tripcount min=4 max=4
		bias_tmp = bias_in.read();
		for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			unsigned int v = ki;
			bias_l2[ko][ki] = (DPTYPE) bias_tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH);
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

	//uchar flag = 0x01;
	LOOP_K_OUTER: for (int ko = 0; ko < K / ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=4 max=4
		LOOP_C_OUTER: for (int co = 0; co < C / ARRAY_C; co++) {
			#pragma HLS loop_tripcount min=10 max=10
			LOOP_H_OUTER: for (int ho = 0; ho < TILES_H; ho++) { // TODO: Tiling
				#pragma HLS loop_tripcount min=10 max=10
				LOOP_W_OUTER: for (int wo = 0; wo < TILES_W; wo++) { // TODO: Tiling
					#pragma HLS loop_tripcount min=10 max=10
					LOOP_R_OUTER: for (int ro = 0; ro < TILES_R; ro++) { // TODO: Tiling
						#pragma HLS loop_tripcount min=3 max=3
						LOOP_S_OUTER: for (int so = 0; so < TILES_S; so++) { // TODO: Tiling
							// L2->L1
							#pragma HLS loop_tripcount min=3 max=3
							#pragma HLS dataflow
							bool isFirst;
							if(ro==0 && so==0) isFirst = true;
							else isFirst = false;

							DPTYPE weight_regfile[ARRAY_K][ARRAY_C];
							DPTYPE data_l1[DATA_L1_SIZE][ARRAY_C];
							MACTYPE output_l1[OUTPUT_L1_SIZE][ARRAY_K];
							static MACTYPE output_l1_local[OUTPUT_L1_SIZE][ARRAY_K];
							#pragma HLS ARRAY_PARTITION variable=weight_regfile dim=0 complete //register
							#pragma HLS ARRAY_PARTITION variable=data_l1 dim=2 complete
							#pragma HLS ARRAY_PARTITION variable=output_l1 dim=2 complete
							#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=2 complete

							//Systolic Array
							runWeight2Reg(weight_regfile, weight_l2, C, RS, ko, co, ro, so);
							runDataL2toL1(data_l1, data_l2, TILESIZE_H, TILESIZE_W, co, ho, wo, ro, so, WH_in);
							runSysArr(weight_regfile, data_l1, output_l1_local, output_l1,
										input_rows,
										bubble_h, bubble_w,
										TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S, isFirst);
							runOutputL1toL2(output_l1, output_l2, TILESIZE_H, TILESIZE_W, ko, ho, wo, WH);
						} // Loop S
					} // Loop R
					//flag = (~flag)&0x01;
				}
			}
		}
	}

	for (unsigned int wh = 0; wh < WH * WH; wh++) {
		#pragma HLS loop_tripcount min=49 max=49
		for (unsigned int ko = 0; ko < (K / VEC_SIZE); ko++) {
			#pragma HLS loop_tripcount min=4 max=4
			k2k_data output_tmp;
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
				unsigned int v = ki;
				output_tmp.data((v+1)*MAC_WIDTH-1, v*MAC_WIDTH) = output_l2[ko * WH * WH + wh][ki]
																	+ bias_l2[ko][ki];
			}
			conv_out.write(output_tmp);
		}
	}

	printf("Kernel coreConv compelete !!!\n");
}
