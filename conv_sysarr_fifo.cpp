
#include "hw_param.h"


#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)
#define ARRAY_K 4
#define ARRAY_C 4
#define TILE_H 1
#define TILE_W 1




void Conv(
	hls::stream<k2k_data> &bias_in,
	hls::stream<k2k_data> &weight_in,
	hls::stream<k2k_data> &data_in,
	hls::stream<k2k_data> &conv_out)
{
	#pragma HLS expression_balance

	DPTYPE bias_l2[2048];
	DPTYPE weight_l2[2048];
	DPTYPE data_l2[2048];
	MACTYPE output_l2[2048];
	DPTYPE bias_l1[512][ARRAY_C];
	DPTYPE weight_l1[512][ARRAY_K];
	//DPTYPE data_l1[2][512][ARRAY_C]; //double buffer
	//DPTYPE data_l1[512][ARRAY_C][2]; //double buffer
	hls::stream<DPTYPE> data_l1
	MACTYPE output_l1[512][ARRAY_K];
DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 cyclic factor=ARRAY_K) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 cyclic factor=ARRAY_K) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l1 dim=2 complete) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l1 dim=2 complete) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 dim=2 complete) //BRAM cyclic
//DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 dim=3 complete) //BRAM cyclic //double buffer
DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l1 dim=2 complete) //BRAM cyclic
	DPTYPE weight_reg[ARRAY_K][ARRAY_C][2];
	DPTYPE data_reg[ARRAY_K][ARRAY_C];
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
#pragma HLS ARRAY_PARTITION variable=weight_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete // Register

	DPTYPE input_data[ARRAY_C];
	#pragma HLS array_partition variable=input_data complete

	k2k_data param_tmp;
	k2k_data bias_tmp;
	k2k_data weight_tmp;
	k2k_data input_tmp;
	k2k_data output_tmp;

	param_tmp = bias_in.read();
	uint K = (uchar)param_tmp.data(31,0);
	param_tmp = bias_in.read();
	uint C = (uchar)param_tmp.data(31,0);
	param_tmp = bias_in.read();
	uint WH = (uchar)param_tmp.data(31,0); //output W(=H)
	uint H_TILE = WH / TILE_H;
	uint W_TILE = WH / TILE_W;
	param_tmp = bias_in.read();
	uint WH_in = (uchar)param_tmp.data(31,0); //input W(=H)
	uint H_in_TILE = WH_in / TILE_H;
	uint W_in_TILE = WH_in / TILE_H;
	param_tmp = bias_in.read();
	uint RS = (uchar)param_tmp.data(31,0); //R(=S)
	uint contol = 0;

	for (unsigned int k = 0; k < K; k++) {
		bias_tmp = bias_in.read(); bias_l2[k] = (DPTYPE)bias_tmp.data(7,0);
	}
	for (unsigned int k = 0; k < K*C*RS*RS; k++) {
		weight_tmp = weight_in.read(); weight_l2[k] = (DPTYPE)weight_tmp.data(7,0);
	}
	for (unsigned int k = 0; k < C*WH_in*WH_in; k++) {
		input_tmp = data_in.read(); data_l2[k] = (DPTYPE)input_tmp.data(7,0);
	}

	for (int ko = 0; ko < K/ARRAY_K; ko++)
	{
		for (int co = 0; co < C/ARRAY_C; co++)
		{
			for (int ho = 0; ho < TILE_H; ho++) // No Tiling
			{
				for (int wo = 0; wo < TILE_W; wo++) // No Tiling
				{
					// Bias Initialization
					for(int ki=0; ki < ARRAY_K; ki++) {
						int k = (ko*ARRAY_K+ki);
						for (int hi = 0; hi < H_TILE; hi++) {
							for (int wi = 0; wi < W_TILE; wi++) {
								// TODO: WH TILE
								output_l1[ko*H_TILE*W_TILE+hi*W_TILE+wi][ki] = bias_l2[k];
							}
						}
					}

					bool buf_num = 0;
					for (int r = 0; r < RS; r++) // No Tiling
					{
						for (int s = 0; s < RS; s+=2) // No Tiling
						{
						//#pragma HLS loop_merge
						//#pragma HLS pipeline
						//#pragma HLS pipeline off
							//Systolic Array

							// Store1: Assign Weight L2 -> reg
							for(int ki=0; ki < ARRAY_K; ki++) {
							#pragma HLS unroll
								for(int ci=0; ci < ARRAY_C; ci++) {
								#pragma HLS unroll
									int k = (ko*ARRAY_K+ki);
									int c = (co*ARRAY_C+ci);
									weight_reg[ki][ci][0] = weight_l2[k*C*RS*RS+c*RS*RS+r*RS+s];
								}
							}

							// Store1: Assign Weight L2 -> reg
							for(int ki=0; ki < ARRAY_K; ki++) {
							#pragma HLS unroll
								for(int ci=0; ci < ARRAY_C; ci++) {
								#pragma HLS unroll
									int k = (ko*ARRAY_K+ki);
									int c = (co*ARRAY_C+ci);
									weight_reg[ki][ci][1] = weight_l2[k*C*RS*RS+c*RS*RS+r*RS+s+1];
								}
							}
							// Input L2 -> L1
							for(int ci=0; ci < ARRAY_C; ci++) {
								//#pragma HLS unroll
								for(int hi=0; hi < H_TILE; hi++) {
									for(int wi=0; wi < W_TILE; wi++) {
										int c = (co*ARRAY_C+ci);
										int h = (ho*H_TILE+hi) + r;
										int w = (wo*W_TILE+wi) + s;
						//				data_l1[hi*W_TILE+wi][ci][0] = data_l2[c*WH_in*WH_in+h*WH_in+w];
										// To Improvement: Im2Col for data_l1
									}
								}
							}
							// Input L2 -> L1
							for(int ci=0; ci < ARRAY_C; ci++) {
								//#pragma HLS unroll
								for(int hi=0; hi < H_TILE; hi++) {
									for(int wi=0; wi < W_TILE; wi++) {
										int c = (co*ARRAY_C+ci);
										int h = (ho*H_TILE+hi) + r;
										int w = (wo*W_TILE+wi) + s+1;
							//			data_l1[hi*W_TILE+wi][ci][1] = data_l2[c*WH_in*WH_in+h*WH_in+w];
										// To Improvement: Im2Col for data_l1
									}
								}
							}
							// PE Array
							int input_rows = H_TILE*W_TILE + (C-1)+(ARRAY_K-1)+ARRAY_C; //input size: WH*WH + input systolic bubble: (C-1) + output systolic bubble: ARRAY (K-1)+C
							for(int i=0; i < input_rows; i++)
							{
								//Im2Col & input bubble
								for(int ci=0;ci<ARRAY_C;ci++) {
								#pragma HLS unroll
									int hi = (i-ci)/W_TILE;
									int wi = (i-ci)%W_TILE;
					//				if (i-ci >=0) input_data[ci] = data_l1[hi*W_TILE+wi][ci][0];
					//				else input_data[ci] = 0; //Bubble
								}
								for(int ki=ARRAY_K-1; ki >= 0; ki--) {
								#pragma HLS unroll
									for(int ci=ARRAY_C-1; ci >= 0; ci--) {
									#pragma HLS unroll
										//Store2: Input Shift
										if (ki==0)
											data_reg[0][ci] = input_data[ci];
										else
											data_reg[ki][ci] = data_reg[(ki-1)][ci];
										// output MAC & shift
										if(ci==0) { // Load from buf
											int k = (ko*ARRAY_K+ki);
											int hi = (i-ki)/W_TILE;
											int wi = (i-ki)%W_TILE;
											if(i-ki >=0)
											output_reg[ki][0] = output_l1[ko*H_TILE*W_TILE+hi*W_TILE+wi][ki]; //Cause Pipeline Violation (output_l1 port)
											else
												output_reg[ki][0] = 0;
										}
										else output_reg[ki][ci] = output_reg[ki][(ci-1)];
										output_reg[ki][ci] += (MACTYPE)data_reg[ki][ci] * (MACTYPE)weight_reg[ki][ci][0];
										if ((i-ARRAY_C+1)-ki >= 0 && (i-ARRAY_C+1)-ki < W_TILE*H_TILE)
										{
											int k = (ko*ARRAY_K+ki);
											int hi = ((i-ARRAY_C+1)-ki)/W_TILE;
											int wi = ((i-ARRAY_C+1)-ki)%W_TILE;
											output_l1[ko*H_TILE*W_TILE+hi*W_TILE+wi][ki] = output_reg[ki][(ARRAY_C-1)]; //Cause Pipeline Violation(output_l1 port)
										}
									}
								}
							}
							// Output l1 -> l2
							// TODO : store output tile l1->l2
							//buf_num = !buf_num;
						}
					}
				}
			}
		}
	}

	for (int k = 0; k < (K/ARRAY_K); k++) {
		for(int ki =0; ki<ARRAY_K; ki++) {
			for(int wh=0;wh<WH*WH;wh++) {
				output_tmp.data(31,0) = (char)output_l1[k*WH*WH+wh][ki]; conv_out.write(output_tmp);
			}
		}
	}
}
