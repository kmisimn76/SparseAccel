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

// Conv SysArr with Double buffering
void Conv_sysarr_dbbuf(hls::stream<k2k_data> &bias_in,
		hls::stream<k2k_data> &weight_in, hls::stream<k2k_data> &data_in,
		hls::stream<k2k_data> &conv_out) {
#pragma HLS expression_balance

#pragma HLS expression_balance
//#pragma HLS dataflow

	DPTYPE bias_l2[2048];
	DPTYPE weight_l2[2048];
	//DPTYPE data_l2[2048];
	DPTYPE data_l2[1024][ARRAY_C];
	MACTYPE output_l2[2048];
	DPTYPE bias_l1[512][ARRAY_C];
	DPTYPE weight_l1[512][ARRAY_K];
//DPTYPE data_l1[2][512][ARRAY_C]; //double buffer
	DPTYPE data_l1[512][ARRAY_C][2]; //double buffer
	MACTYPE output_l1[512][ARRAY_K];
	//static MACTYPE output_l1[512][112*ARRAY_K];
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 cyclic factor=ARRAY_C) //BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 cyclic factor=ARRAY_K)//BRAM cyclic
	//DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 cyclic factor=ARRAY_C)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 cyclic factor=ARRAY_K)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l1 dim=2 complete)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l1 dim=2 complete)//BRAM cyclic
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 dim=2 complete)//BRAM cyclic
//DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 dim=3 complete) //BRAM cyclic //double buffer
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l1 dim=2 complete)//BRAM cyclic
	DPTYPE weight_reg[ARRAY_K][ARRAY_C];
	DPTYPE data_reg[ARRAY_K][ARRAY_C];
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
#pragma HLS ARRAY_PARTITION variable=weight_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=output_reg complete  // Register

	DPTYPE input_data[ARRAY_C];
#pragma HLS array_partition variable=input_data complete

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

	for (unsigned int k = 0; k < K; k++) {
		bias_tmp = bias_in.read();
		bias_l2[k] = (DPTYPE) bias_tmp.data(7, 0);
	}
	for (unsigned int k = 0; k < K * C * RS * RS; k++) {
		weight_tmp = weight_in.read();
		weight_l2[k] = (DPTYPE) weight_tmp.data(7, 0);
	}
	//for (unsigned int k = 0; k < C * WH_in * WH_in; k++) {
	for (unsigned co = 0; co < C/ARRAY_C; co++) {
		for(unsigned ci = 0; ci < ARRAY_C; ci++) {
#pragma HLS unroll
			for(unsigned wh = 0; wh < WH_in * WH_in; wh++) {
		input_tmp = data_in.read();
		//data_l2[k] = (DPTYPE) input_tmp.data(7, 0);
		data_l2[co*WH_in * WH_in + wh][ci] = (DPTYPE) input_tmp.data(7, 0);
			}
		}
	}

	LOOP_K_OUTER: for (int ko = 0; ko < K / ARRAY_K; ko++) {
//#pragma HLS loop_tripcount min=4 max=4
#pragma HLS LOOP_TRIPCOUNT max=128 min=128
		LOOP_C_OUTER: for (int co = 0; co < C / ARRAY_C; co++) {
//#pragma HLS loop_tripcount min=1 max=1
#pragma HLS LOOP_TRIPCOUNT max=128 min=128
			LOOP_H_OUTER: for (int ho = 0; ho < TILE_H; ho++) // No Tiling
					{
				LOOP_W_OUTER: for (int wo = 0; wo < TILE_W; wo++) // No Tiling
						{
					// Bias Initialization
					for (int ki = 0; ki < ARRAY_K; ki++) {
						for (int hi = 0; hi < H_TILE; hi++) {
//#pragma HLS loop_tripcount min=7 max=7
#pragma HLS LOOP_TRIPCOUNT max=14 min=14
							for (int wi = 0; wi < W_TILE; wi++) {
//#pragma HLS loop_tripcount min=7 max=7
#pragma HLS LOOP_TRIPCOUNT max=14 min=14
								// TODO: WH TILE
								int k = (ko * ARRAY_K + ki);
								output_l1[ko * H_TILE * W_TILE + hi * W_TILE
										+ wi][ki] = bias_l2[k];
							}
						}
					}

					bool buffer_number = 0; //double buffering
					LOOP_R: for (int r = 0; r < 3/*RS*/; r++) { // No Tiling
//#pragma HLS loop_tripcount min=3 max=3
						LOOP_S: for (int s = 0; s < 3/*RS*/; s++) { // No Tiling
//#pragma HLS loop_tripcount min=3 max=3
#pragma HLS dataflow
							//#pragma HLS loop_merge
							//#pragma HLS pipeline
							//#pragma HLS pipeline off
							//Systolic Array

							// Store1: Assign Weight L2 -> reg
							for (int ki = 0; ki < ARRAY_K; ki++) {
#pragma HLS unroll
								for (int ci = 0; ci < ARRAY_C; ci++) {
#pragma HLS unroll
									int k = (ko * ARRAY_K + ki);
									int c = (co * ARRAY_C + ci);
									weight_reg[ki][ci] = weight_l2[k * C * RS
														* RS + c * RS * RS + r * RS + s];
								}
							}
							// Input L2 -> L1
							// Performance Bottleck for K=16 C=4 WH=7 RS=3
							//for (int ci = 0; ci < ARRAY_C; ci++) { // unable unroll in outer loop
							//	#pragma HLS unroll
							LOOP_L2_H: for (int hi = 0; hi < H_TILE; hi++) { // H_TILE is VARIABLE!!: could reduce performance when H_TILE is big
//#pragma HLS loop_tripcount min=7 max=7
#pragma HLS LOOP_TRIPCOUNT max=14 min=14
								LOOP_L2_W: for (int wi = 0; wi < W_TILE; wi++) {
//#pragma HLS loop_tripcount min=7 max=7
#pragma HLS LOOP_TRIPCOUNT max=14 min=14
//#pragma HLS Loop_FLATTEN
								//for (int hi = 0; hi < 7; hi++)  {
									//for (int wi = 0; wi < 7; wi++) {
										for (int ci = 0; ci < ARRAY_C; ci++) { // for performance(unroll inner-most loop)
											#pragma HLS unroll
										int c = (co * ARRAY_C + ci);
										int h = (ho * H_TILE + hi) + r;
										int w = (wo * W_TILE + wi) + s;
										data_l1[hi * W_TILE + wi][ci][0] =
												//data_l2[c * WH_in * WH_in
												//		+ h * WH_in + w];
												data_l2[co * WH_in * WH_in
														+ h * WH_in + w][ci];
										// To Improvement: Im2Col for data_l1
									}
								}
							}
							// TODO: double buffering
							// PE Array
							int input_rows = H_TILE
									* W_TILE + (ARRAY_K-1)+(ARRAY_C-1); //input size: WH*WH + input systolic bubble: (C-1) + output systolic bubble: ARRAY (K-1)+C
									//* W_TILE + (C-1)+(ARRAY_K-1)+ARRAY_C; //input size: WH*WH + input systolic bubble: (C-1) + output systolic bubble: ARRAY (K-1)+C
							                  /// (C-1) correct???
							LOOP_INPUT_ROW: for (int i = 0; i < input_rows; i++) {
//#pragma HLS LOOP_TRIPCOUNT max=59 min=59
#pragma HLS LOOP_TRIPCOUNT max=202 min=202
							//for (int i = 0; i < 59; i++) {
#pragma HLS DEPENDENCE variable=output_l1
#pragma HLS pipeline
								//Im2Col & input bubble
								for (int ci = 0; ci < ARRAY_C; ci++) {
#pragma HLS unroll
									int hi = (i - ci) / W_TILE;
									int wi = (i - ci) % W_TILE;
									if (i - ci >= 0)
										input_data[ci] = data_l1[hi * W_TILE + wi][ci][0];
									else
										input_data[ci] = 0; //Bubble
								}
								MACTYPE output_buf[ARRAY_K];
								for(int ki = ARRAY_K-1; ki >=0; ki--) {
									int hi = (i - ki) / W_TILE;
									int wi = (i - ki) % W_TILE;
									if (i - ki >= 0)
									output_buf[ki] = output_l1[ko * H_TILE * W_TILE	+ hi * W_TILE + wi][ki];
									//output_buf[ki] = output_l1[ko * H_TILE * W_TILE	+ hi * W_TILE][wi*ARRAY_K+ki];
									else
									output_buf[ki] = 0;
								}

								/*for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
#pragma HLS unroll
//#pragma HLS DEPENDENCE variable=output_reg
									MACTYPE psum3	=	(output_reg[ki][2]);
									MACTYPE psum2	=	(output_reg[ki][1]);
									MACTYPE psum1	=	(output_reg[ki][0]);
									MACTYPE psum0	=	output_buf[ki];
										// C=3
										data_reg[ki][3] =	(ki==0) ?
															(input_data[3]) :
															(data_reg[(ki - 1)][3]);
										output_reg[ki][3] =	psum3 +(MACTYPE) data_reg[ki][3]* (MACTYPE) weight_reg[ki][3];

										// C=2
										data_reg[ki][2] =	(ki==0) ?
															(input_data[2]) :
															(data_reg[(ki - 1)][2]);
										output_reg[ki][2] =	psum2 +(MACTYPE) data_reg[ki][2]* (MACTYPE) weight_reg[ki][2];

										// C=1
										data_reg[ki][1] =	(ki==0) ?
															(input_data[1]) :
															(data_reg[(ki - 1)][1]);
										output_reg[ki][1] =	psum1 +(MACTYPE) data_reg[ki][1]* (MACTYPE) weight_reg[ki][1];

										// C=0
										data_reg[ki][0] =	(ki==0) ?
															(input_data[0]) :
															(data_reg[(ki - 1)][0]);
										output_reg[ki][0] =	psum0 +(MACTYPE) data_reg[ki][0]* (MACTYPE) weight_reg[ki][0];
								}*/

								for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
#pragma HLS DEPENDENCE variable=output_reg inter WAR false
#pragma HLS unroll
									for (int ci = ARRAY_C - 1; ci >= 0; ci--) { // SysArr DIM : C
#pragma HLS DEPENDENCE variable=output_reg inter WAR false
#pragma HLS unroll
										//Store2: Input Shift
										data_reg[ki][ci] =	(ki==0) ?
															(input_data[ci]) :
															(data_reg[(ki - 1)][ci]);
										// Load from buf
										//output_reg[ki][ci]=	(ci==0) ?
										//					(output_buf[ki]):
										//					(output_reg[ki][(ci - 1)]);
										// output MAC & shift
										//MACTYPE psum = output_reg[ki][ci];
										MACTYPE psum	=	(ci==0) ?
															(output_buf[ki]):
															(output_reg[ki][(ci - 1)]);
										output_reg[ki][ci] =
												psum +
												(MACTYPE) data_reg[ki][ci]
													* (MACTYPE) weight_reg[ki][ci];
									}
								}
								//alternative
								/*MACTYPE mult[ARRAY_K][ARRAY_C];
								for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
#pragma HLS unroll
									for (int ci = ARRAY_C - 1; ci >= 0; ci--) { // SysArr DIM : C
#pragma HLS unroll
										data_reg[ki][ci] =	(ki==0) ?
															(input_data[ci]) :
															(data_reg[(ki - 1)][ci]);
									}
								}
								for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
#pragma HLS unroll
									for (int ci = ARRAY_C - 1; ci >= 0; ci--) { // SysArr DIM : C
#pragma HLS unroll
										output_reg[ki][ci]=	(ci==0) ?
															(output_buf[ki]):
															(output_reg[ki][(ci - 1)]);
									}
								}
								for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
#pragma HLS unroll
									for (int ci = ARRAY_C - 1; ci >= 0; ci--) { // SysArr DIM : C
#pragma HLS unroll
										mult[ki][ci] = (MACTYPE) data_reg[ki][ci]
													* (MACTYPE) weight_reg[ki][ci];
									}
								}
								for (int ki = 0; ki < ARRAY_K; ki++) { // SysArr DIM : K
#pragma HLS unroll
									for (int ci = 0; ci < ARRAY_C; ci++) { // SysArr DIM : C
#pragma HLS unroll
										output_reg[ki][ci] += mult[ki][ci];
									}
								}*/

								for(int ki = ARRAY_K-1; ki >=0; ki--) {
									if ((i - ARRAY_C + 1) - ki >= 0 // i >= ki+(ARRAY_C-1)
											&&
											(i - ARRAY_C + 1) - ki < W_TILE * H_TILE
											) { // ki+(ARRAY_C-1) <= i < ki+(ARRAY_C-1)+WH TILE (X*Y)
										int k = (ko * ARRAY_K + ki);
										int hi = ((i - ARRAY_C + 1) - ki)
												/ W_TILE;
										int wi = ((i - ARRAY_C + 1) - ki)
												% W_TILE;
										output_l1[ko * H_TILE * W_TILE
												+ hi * W_TILE + wi][ki] =
										//output_l1[ko * H_TILE + hi][wi*ARRAY_K+ki] =
												output_reg[ki][(ARRAY_C - 1)]; //Cause Pipeline Violation(output_l1 port)
									}
								}
							} //Loop Input Row
							// Output l1 -> l2
							buffer_number = ~buffer_number;
						} // Loop S
					} // Loop R
				}
			}
		}
	}

	for (int k = 0; k < (K / ARRAY_K); k++) {
		for (int ki = 0; ki < ARRAY_K; ki++) {
			for (int wh = 0; wh < WH * WH; wh++) {
				output_tmp.data(31, 0) = output_l1[k * WH * WH + wh][ki];
				conv_out.write(output_tmp);
			}
		}
	}
	/*for (int k = 0; k < (K / ARRAY_K); k++) {
		for (int ki = 0; ki < ARRAY_K; ki++) {
			for (int hi = 0; hi < WH; hi++) {
				for (int wi = 0; wi < WH; wi++) {
					output_tmp.data(31, 0) = output_l1[k * WH * WH + hi][wi + ki];
					conv_out.write(output_tmp);
				}
			}
		}
	}*/

	printf("Kernel coreConv lanched !!!\n");
}
