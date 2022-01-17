#include "hw_param.h"

#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)
#define ARRAY_K 4
#define ARRAY_C 4
#define TILE_H 1
#define TILE_W 1
#define MAX_H 100
#define MAX_W 100
#define SYSARR_LOOP_MAX  (MAX_H*MAX_W+(C-1)+(ARRAY_K-1)+ARRAY_C)

typedef struct _DPTYPE_REGFILE {
	DPTYPE data[ARRAY_K][ARRAY_C];
}DPTYPE_REGFILE;
typedef struct _DPTYPE_BUF {
	DPTYPE data[512][ARRAY_C];
}DPTYPE_BUF;
typedef struct _MACTYPE_BUF {
	DPTYPE data[512][ARRAY_K];
}MACTYPE_BUF;


//void runWeight2Reg(hls::stream<DPTYPE_REGFILE> &weight_regfile_fifo, uint C,
void runWeight2Reg(DPTYPE weight_regfile[ARRAY_K][ARRAY_C], DPTYPE (*weight_l2)[ARRAY_C], const uint C,
		const uint RS, const uint ko, const uint co, const uint r, const uint s,
		uint &ko_tmp
		) {
	ko_tmp = ko;
//#pragma HLS DATA_PACK variable=weight_regfile_fifo
	//DPTYPE_REGFILE weight_regfile;
	DPTYPE tmp;
	for (int ki = 0; ki < ARRAY_K; ki++) {
//#pragma HLS unroll
		for (int ci = 0; ci < ARRAY_C; ci++) {
//#pragma HLS unroll
#pragma HLS pipeline //must be pipelined for dataflow, (and ARRAY_K & ARRAY_C may be small)
			int k = (ko * ARRAY_K + ki);
			int c = (co * ARRAY_C + ci);
			//weight_reg[ki][ci] = weight_l2[k * C * RS
			tmp = weight_l2[ko * C * RS
					* RS + c * RS * RS + r * RS + s][ki];
			weight_regfile[ki][ci] = tmp;
		}
	}
	//weight_regfile_fifo.write(weight_regfile);
}

//void runL2toL1(hls::stream<DPTYPE_BUF> &data_l1buf_fifo, uint H_TILE,
void runL2toL1(DPTYPE data_l1buf[512][ARRAY_C], DPTYPE (*data_l2)[ARRAY_C], uint H_TILE,
		uint W_TILE, uint co, uint ho, uint wo, uint r, uint s, uint WH_in,
		uint &H_TILE_tmp, uint &W_TILE_tmp) {
	H_TILE_tmp = H_TILE;
	W_TILE_tmp = W_TILE;
//#pragma HLS DATA_PACK variable=data_l1buf_fifo
	//for (int ci = 0; ci < ARRAY_C; ci++) { // unable unroll in outer loop
	//	#pragma HLS unroll
	//DPTYPE_BUF data_l1buf;
	LOOP_L2_H: for (int hi = 0; hi < H_TILE; hi++) {
//#pragma HLS PIPELINE off
		// H_TILE is VARIABLE!!: could reduce performance when H_TILE is big
#pragma HLS loop_tripcount min=7 max=7
//#pragma HLS LOOP_TRIPCOUNT max=14 min=14
//#pragma HLS pipeline
		LOOP_L2_W: for (int wi = 0; wi < W_TILE; wi++) {
//#pragma HLS PIPELINE off
#pragma HLS loop_tripcount min=7 max=7
//#pragma HLS LOOP_TRIPCOUNT max=14 min=14
//#pragma HLS Loop_FLATTEN
//#pragma HLS pipeline
			//for (int hi = 0; hi < 7; hi++)  {
			//for (int wi = 0; wi < 7; wi++) {
			for (int ci = 0; ci < ARRAY_C; ci++) { // for performance(unroll inner-most loop)
				#pragma HLS unroll
//#pragma HLS pipeline
				int c = (co * ARRAY_C + ci);
				int h = (ho * H_TILE + hi) + r;
				int w = (wo * W_TILE + wi) + s;
				data_l1buf[hi * W_TILE + wi][ci] =
						data_l2[co * WH_in * WH_in + h * WH_in + w][ci];
				// To Improvement: Im2Col for data_l1
			}
		}
	}
	//data_l1buf_fifo.write(data_l1buf);
}

/*void runOutputPass(MACTYPE (*output_l1)[ARRAY_K], MACTYPE (*output_l1_input)[ARRAY_K], uint H_TILE, uint W_TILE, uint ko) {
	for(uint hi = 0; hi < H_TILE; hi++) {
		for(uint wi = 0; wi < W_TILE; wi++) {
			for (int ki = ARRAY_K - 1; ki >= 0; ki--) {
				output_l1_input[hi * W_TILE + wi][ki] =
						output_l1[ko * H_TILE * W_TILE + hi * W_TILE + wi][ki];
			}
		}
	}
}*/

//void runSysArr(hls::stream<DPTYPE_REGFILE> &weight_regfile_fifo,
//		hls::stream<DPTYPE_BUF> &data_l1buf_fifo, uint H_TILE, uint W_TILE,
//// this function has mismatch cycles between synth & cosim
void runSysArr(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE data_l1buf[512][ARRAY_C],
		MACTYPE (*output_l1_pass)[ARRAY_K],
		uint input_rows, uint H_TILE, uint W_TILE,
		uint ko, bool isFirst) {
	//output_l1[0][0] = weight_regfile[H_TILE%4][W_TILE%4];
	//output_l1[0][1] = data_l1buf[H_TILE%4][W_TILE%4];
	static MACTYPE output_l1_local[1024][ARRAY_K];

//#pragma HLS DATA_PACK variable=weight_regfile_fifo
//#pragma HLS DATA_PACK variable=data_l1buf_fifo
	//DPTYPE weight_reg__[ARRAY_K][ARRAY_C];
	DPTYPE data_reg[ARRAY_K][ARRAY_C];
#pragma HLS dependence variable=data_reg
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
//#pragma HLS ARRAY_PARTITION variable=weight_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=output_reg complete  // Register
	//DPTYPE_REGFILE weight_regfile;
	//DPTYPE_BUF data_l1buf;
	//weight_regfile_fifo.read(weight_regfile);
	//data_l1buf_fifo.read(data_l1buf);
	//int input_rows = H_TILE * W_TILE + (ARRAY_K - 1) + (ARRAY_C - 1); //input size: WH*WH + input systolic bubble: (C-1) + output systolic bubble: ARRAY (K-1)+C
	//* W_TILE + (C-1)+(ARRAY_K-1)+ARRAY_C; //input size: WH*WH + input systolic bubble: (C-1) + output systolic bubble: ARRAY (K-1)+C
	/// (C-1) correct???
	LOOP_INPUT_ROW: for (int i = 0; i < input_rows; i++) {
#pragma HLS LOOP_TRIPCOUNT max=55 min=55
//#pragma HLS LOOP_TRIPCOUNT max=202 min=202
//for (int i = 0; i < 59; i++) {
#pragma HLS DEPENDENCE variable=output_l1
#pragma HLS pipeline
		//Im2Col & input bubble
		DPTYPE input_data[ARRAY_C];
#pragma HLS array_partition variable=input_data complete
		for (int ci = 0; ci < ARRAY_C; ci++) {
//#pragma HLS unroll
#pragma HLS pipeline
			int hi = (i - ci) / W_TILE;
			int wi = (i - ci) % W_TILE;
			if (i - ci >= 0)
				input_data[ci] = data_l1buf[hi * W_TILE + wi][ci];
			////input_data[ci] = data_l1[hi * W_TILE + wi][ci][0];
			else
				input_data[ci] = 0; //Bubble
		}
		MACTYPE output_buf[ARRAY_K];
		for (int ki = ARRAY_K - 1; ki >= 0; ki--) {
			int hi = (i - ki) / W_TILE;
			int wi = (i - ki) % W_TILE;
			if (i - ki >= 0)
				output_buf[ki] = (isFirst)?(0):(output_l1_local[hi * W_TILE + wi][ki]);
			//	output_buf[ki] = output_l1[ko * H_TILE * W_TILE + hi * W_TILE
			//			+ wi][ki];
			////output_buf[ki] = output_l1[ko * H_TILE * W_TILE	+ hi * W_TILE][wi*ARRAY_K+ki];
			else
				output_buf[ki] = 0;
		}

		for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
#pragma HLS DEPENDENCE variable=output_reg inter WAR false
#pragma HLS unroll
			for (int ci = ARRAY_C - 1; ci >= 0; ci--) { // SysArr DIM : C
#pragma HLS DEPENDENCE variable=output_reg inter WAR false
#pragma HLS unroll
				//Store2: Input Shift
				data_reg[ki][ci] =
						(ki == 0) ? (input_data[ci]) : (data_reg[(ki - 1)][ci]);
				// Load from buf
				//output_reg[ki][ci]=	(ci==0) ?
				//					(output_buf[ki]):
				//					(output_reg[ki][(ci - 1)]);
				// output MAC & shift
				//MACTYPE psum = output_reg[ki][ci];
				MACTYPE psum =
						(ci == 0) ?
								(output_buf[ki]) : (output_reg[ki][(ci - 1)]);
				output_reg[ki][ci] = psum
						+ (MACTYPE) data_reg[ki][ci]
								* (MACTYPE) weight_regfile[ki][ci];
				//* (MACTYPE) weight_reg[ki][ci];
			}
		}

		for (int ki = ARRAY_K - 1; ki >= 0; ki--) {
			if ((i - ARRAY_C + 1) - ki >= 0 // i >= ki+(ARRAY_C-1)
			&& (i - ARRAY_C + 1) - ki < W_TILE * H_TILE) { // ki+(ARRAY_C-1) <= i < ki+(ARRAY_C-1)+WH TILE (X*Y)
				int k = (ko * ARRAY_K + ki);
				int hi = ((i - ARRAY_C + 1) - ki) / W_TILE;
				int wi = ((i - ARRAY_C + 1) - ki) % W_TILE;
			//	output_l1[ko * H_TILE * W_TILE + hi * W_TILE + wi][ki] =
				//output_l1_local[hi * W_TILE + wi][ki] =
				output_l1_local[(i - ARRAY_C + 1) - ki][ki] =
				//output_l1[ko * H_TILE + hi][wi*ARRAY_K+ki] =
						output_reg[ki][(ARRAY_C - 1)]; //Cause Pipeline Violation(output_l1 port)
				output_l1_pass[(i - ARRAY_C + 1) - ki][ki] = output_l1_local[(i - ARRAY_C + 1) - ki][ki];
			}
		}
	} //Loop Input Row

	/*for (unsigned int wh = 0; wh < H_TILE * W_TILE; wh++) {
	#pragma HLS loop_tripcount min=49 max=49
			for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
#pragma HLS unroll
				output_l1_pass[wh][ki] = output_l1_local[wh][ki];
			}
	}*/
}
/*
void runOutputPass(MACTYPE (*output_l1_local)[ARRAY_K], MACTYPE (*output_l1_pass)[ARRAY_K], uint H_TILE, uint W_TILE) {
	for (unsigned int wh = 0; wh < H_TILE * W_TILE; wh++) {
	#pragma HLS loop_tripcount min=49 max=49
			for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
#pragma HLS unroll
				output_l1_pass[wh][ki] = output_l1_local[wh][ki];
			}
	}
}*/

// Conv SysArr with Double buffering
void Conv_sysarr_dbbuf(hls::stream<k2k_data> &bias_in,
		hls::stream<k2k_data> &weight_in, hls::stream<k2k_data> &data_in,
		hls::stream<k2k_data> &conv_out) {
#pragma HLS expression_balance

#pragma HLS expression_balance
//#pragma HLS dataflow

	DPTYPE bias_l2[2048];
	DPTYPE weight_l2[512][ARRAY_K];
	//DPTYPE data_l2[2048];
	DPTYPE data_l2[1024][ARRAY_C];
	MACTYPE output_l2[2048];
	DPTYPE bias_l1[512][ARRAY_K];
	//DPTYPE weight_l1[512][ARRAY_K];
	//DPTYPE data_l1[2][512][ARRAY_C]; //double buffer
	DPTYPE data_l1__[512][ARRAY_C][2]; //double buffer
	MACTYPE output_l1[512][ARRAY_K];
	//static MACTYPE output_l1[512][112*ARRAY_K];

	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 cyclic factor=ARRAY_C) //BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=2 complete)//BRAM cyclic
	//DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 cyclic factor=ARRAY_K)//BRAM cyclic
	//DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 cyclic factor=ARRAY_C)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 cyclic factor=ARRAY_K)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l1 dim=2 complete)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l1 dim=2 complete)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 dim=2 complete)//BRAM cyclic
//DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 dim=3 complete) //BRAM cyclic //double buffer
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l1 dim=2 complete)//BRAM cyclic
//	DPTYPE weight_reg__[ARRAY_K][ARRAY_C];
//	DPTYPE data_reg[ARRAY_K][ARRAY_C];
//	MACTYPE output_reg[ARRAY_K][ARRAY_C];
//#pragma HLS ARRAY_PARTITION variable=weight_reg dim=0 complete // Register
//#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
//#pragma HLS ARRAY_PARTITION variable=output_reg complete  // Register

	k2k_data param_tmp;
	k2k_data bias_tmp;
	k2k_data weight_tmp;
	k2k_data input_tmp;
	k2k_data output_tmp;

	param_tmp = bias_in.read();
	uint K = (uint) param_tmp.data(31, 0);
	//uint K = 16;
	param_tmp = bias_in.read();
	uint C = (uint) param_tmp.data(31, 0);
	//uint C = 4;
	param_tmp = bias_in.read();
	uint WH = (uint) param_tmp.data(31, 0); //output W(=H)
	//uint WH = 7;
	uint H_TILE = WH / TILE_H;
	uint W_TILE = WH / TILE_W;
//#define H_TILE 7
//#define W_TILE 7
	param_tmp = bias_in.read();
	uint WH_in = (uint) param_tmp.data(31, 0); //input W(=H)
	//uint WH_in = 9;
	uint H_in_TILE = WH_in / TILE_H;
	uint W_in_TILE = WH_in / TILE_H;
	param_tmp = bias_in.read();
	uint RS = (uint) param_tmp.data(31, 0); //R(=S)
	//uint RS = 3;
	uint contol = 0;
	uint input_rows = H_TILE * W_TILE + (ARRAY_K - 1) + (ARRAY_C - 1);

	for (unsigned int ko = 0; ko < K/VEC_SIZE; ko++) {
#pragma HLS loop_tripcount min=4 max=4
		bias_tmp = bias_in.read();
		for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // MUST split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			unsigned int v = ki;
			bias_l1[ko][ki] = (DPTYPE) bias_tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH);
		}
	}
	for (unsigned int crs = 0; crs < C * RS * RS; crs++) {
#pragma HLS loop_tripcount min=36 max=36
		for (unsigned int ko = 0; ko < K / VEC_SIZE; ko++) {
#pragma HLS loop_tripcount min=4 max=4
			weight_tmp = weight_in.read();
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // MUST split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
				//int kcrs = (ko*VEC_SIZE + ki)*C*RS*RS + crs;
				unsigned int kcrs = ko*C*RS*RS + crs;
				unsigned int v = ki;
				weight_l2[kcrs][ki] = (DPTYPE) weight_tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH);
			}
		}
	}
	//for (unsigned int k = 0; k < C * WH_in * WH_in; k++) {
	for(unsigned int wh = 0; wh < WH_in * WH_in; wh++) {
	#pragma HLS loop_tripcount min=81 max=81
		for (unsigned int co = 0; co < C/VEC_SIZE; co++) {
		#pragma HLS loop_tripcount min=1 max=1
			input_tmp = data_in.read();
			//for(unsigned int ci = 0; ci < ARRAY_C; ci++) {
			for(unsigned int ci = 0; ci < VEC_SIZE; ci++) { // MUST split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
//#pragma HLS unroll
				//data_l2[k] = (DPTYPE) input_tmp.data(7, 0);
				unsigned int v = ci;
				data_l2[co*WH_in * WH_in + wh][ci] = (DPTYPE) input_tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH);
			}
		}
	}
	//weight_tmp = weight_in.read();
	//input_tmp = data_in.read();
	//weight_l2[0][0] = weight_tmp.data(7,0);
	//data_l2[0][0] = input_tmp.data(7,0);

	LOOP_K_OUTER: for (int ko = 0; ko < K / ARRAY_K; ko++) {
#pragma HLS loop_tripcount min=4 max=4
//#pragma HLS LOOP_TRIPCOUNT max=128 min=128
		LOOP_C_OUTER: for (int co = 0; co < C / ARRAY_C; co++) {
#pragma HLS loop_tripcount min=1 max=1
//#pragma HLS LOOP_TRIPCOUNT max=128 min=128
			LOOP_H_OUTER: for (int ho = 0; ho < TILE_H; ho++) // No Tiling
					{
				LOOP_W_OUTER: for (int wo = 0; wo < TILE_W; wo++) // No Tiling
						{
					// Bias Initialization
					for (int hi = 0; hi < H_TILE; hi++) {
#pragma HLS loop_tripcount min=7 max=7
//#pragma HLS LOOP_TRIPCOUNT max=14 min=14
						for (int wi = 0; wi < W_TILE; wi++) {
#pragma HLS loop_tripcount min=7 max=7
//#pragma HLS LOOP_TRIPCOUNT max=14 min=14
								// TODO: WH TILE
							for (int ki = 0; ki < ARRAY_K; ki++) {
#pragma HLS unroll
								//int k = (ko * ARRAY_K + ki);
								output_l1[ko * H_TILE * W_TILE + hi * W_TILE
										+ wi][ki] = bias_l1[ko][ki];
							}
						}
					}

					MACTYPE output_l1_pass[1024][ARRAY_K];
					//uchar flag = 0; //double buffering
					LOOP_R: for (int r = 0; r < RS; r++) { // No Tiling
#pragma HLS loop_tripcount min=3 max=3
						LOOP_S: for (int s = 0; s < RS; s++) { // No Tiling
#pragma HLS loop_tripcount min=3 max=3
//#pragma HLS loop_flatten
#pragma HLS dataflow
							bool isFirst, isLast;
							if(r==0 && s==0) isFirst = true;
							else isFirst = false;
							if(r==RS-1 && s==RS-1) isLast = true;
							else isLast = false;

							//hls::stream<DPTYPE_REGFILE> weight_regfile_fifo;
							//hls::stream<DPTYPE_BUF> data_l1buf_fifo;
							DPTYPE weight_regfile[ARRAY_K][ARRAY_C];
							DPTYPE data_l1buf[512][ARRAY_C];
		#pragma HLS ARRAY_PARTITION variable=weight_regfile dim=0 complete // Register
		#pragma HLS ARRAY_PARTITION variable=data_l1buf dim=2 complete // Register

							uint H_TILE_tmp, W_TILE_tmp, ko_tmp;

//#pragma HLS DEPENDENCE false variable=data_l2
//#pragma HLS DEPENDENCE false variable=weight_l2
//#pragma HLS DEPENDENCE false variable=output_l1

							//#pragma HLS loop_merge
							//#pragma HLS pipeline
							//#pragma HLS pipeline off
							//Systolic Array
							// ===============================================  Assign Weight L2 -> reg
							//runWeight2Reg(weight_regfile_fifo, C, RS, ko, co, r, s);
							runWeight2Reg(weight_regfile, weight_l2, C, RS, ko, co, r, s,
									ko_tmp);
							//==================================================== Input L2 -> L1
							//runL2toL1(data_l1buf_fifo, H_TILE, W_TILE, co, ho, wo, r, s, WH_in);
							//runL2toL1(data_l1buf, data_l2, H_TILE, W_TILE, co, ho, wo, r, s, WH_in);
							runL2toL1(data_l1buf, data_l2, H_TILE, W_TILE, co, ho, wo, r, s, WH_in,
									H_TILE_tmp, W_TILE_tmp);
							//=================================================== prev output l1 pass, for double buffering
							//runOutputPass(output_l1, output_l1_input, H_TILE, W_TILE, ko);
							//==================================================== PE Array
							//runSysArr(weight_regfile_fifo, data_l1buf_fifo, H_TILE, W_TILE, ko);
							//runSysArr(weight_regfile, data_l1buf, output_l1, input_rows, H_TILE, W_TILE, ko);
							runSysArr(weight_regfile, data_l1buf, output_l1_pass, input_rows,
									H_TILE, W_TILE, ko, isFirst);
							//runOutputPass(output_l1_local, output_l1_pass, H_TILE, W_TILE);

							// Output l1 -> l2
							//flag = ~flag;
						} // Loop S
					} // Loop R
					for (unsigned int wh = 0; wh < H_TILE * W_TILE; wh++) {
					#pragma HLS loop_tripcount min=49 max=49
							for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
				#pragma HLS unroll
									output_l1[ko*H_TILE*W_TILE + wh][ki] += output_l1_pass[wh][ki];
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
			//for (int ki = 0; ki < ARRAY_K; ki++) {
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // MUST split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
//#pragma HLS unroll
				unsigned int v = ki;
				output_tmp.data((v+1)*MAC_WIDTH-1, v*MAC_WIDTH) = output_l1[ko * WH * WH + wh][ki];
			}
			conv_out.write(output_tmp);
		}
	}
	//output_tmp.data(31,0) = output_l1[0];
	//conv_out.write(output_tmp);


	printf("Kernel coreConv lanched !!!\n");
}
