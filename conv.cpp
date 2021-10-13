
/*
 * ------------------------------------------------------
 *
 *   PipeCNN: An OpenCL-Based FPGA Accelerator for CNNs
 *
 * ------------------------------------------------------
 * Filename:
 *   - conv_pipe.cl
 *
 * Author(s):
 *   - Dong Wang, wangdong@m.bjtu.edu.cn
 *
 * History:
 *   - v1.3 Win-Buffer-Based Implementation
 * ------------------------------------
 *
 *   Copyright (C) 2019, Institute of Information Science,
 *   Beijing Jiaotong University. All rights reserved.
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 *
 */

// The following macros are used for debug
//#define DEBUG_MEMRD
//#define DEBUG_CONV
//#define DEBUG_BN
//#define DEBUG_POOL
//#define DEBUG_MEMWR
//#define DEBUG_LRN
//#define DEBUG_LRN_OUT

#include "hw_param.h"


#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)
#define ARRAY_K 4
#define ARRAY_C 4
#define TILE_H 1
#define TILE_W 1

// parallel MAC units including (VEC_SIZE-1) multipliers
MACTYPE mac(lane_data input, lane_data weights)
{
#pragma HLS inline

    MACTYPE output = MASK_MULT & CZERO;

    for (int i = 0; i < VEC_SIZE; i++)
    {
#pragma HLS unroll
        output += input.data[i] * weights.data[i];
    }
    return output;
}

class SystolicArray_WeightStationary
{
public:
	DPTYPE weight_reg[ARRAY_K][ARRAY_C];
public:
	void assignWeightStationReg(DPTYPE *weight_buf, int ko, int co, int r, int s, int C, int RS)
	{
#pragma HLS ARRAY_PARTITION variable=weight_reg dim=0 complete // Register
		// Store1: Assign Weight L2 -> reg
		for(int ki=0; ki < ARRAY_K; ki++) {
		#pragma HLS unroll
			for(int ci=0; ci < ARRAY_C; ci++) {
			#pragma HLS unroll
				int k = (ko*ARRAY_K+ki);
				int c = (co*ARRAY_C+ci);
				weight_reg[ki][ci] = weight_buf[k*C*RS*RS+c*RS*RS+r*RS+s];
			}
		}
	}

	void doSystolic(DPTYPE *input_data, MACTYPE *output_buf, int i, int ko, int co, int r, int s, int C, int RS, int H_TILE, int W_TILE)
	{
		static DPTYPE data_reg[ARRAY_K][ARRAY_C];
		static MACTYPE output_reg[ARRAY_K][ARRAY_C];
#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete // Register
		// output MAC & shift
		for(int ki=ARRAY_K-1; ki >= 0; ki--) {
#pragma HLS loop_merge
		#pragma HLS unroll
			for(int ci=ARRAY_C-1; ci >= 0; ci--) {
			//#pragma HLS unroll
				//MACTYPE res;
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
					output_reg[ki][0] = output_buf[k*H_TILE*W_TILE+hi*W_TILE+wi]; //Cause Pipeline Violation (output_l1 port)
				}
				else output_reg[ki][ci] = output_reg[ki][(ci-1)];
				output_reg[ki][ci] += (MACTYPE)data_reg[ki][ci] * (MACTYPE)weight_reg[ki][ci];
				if ((i-ARRAY_C+1)-ki >= 0 && (i-ARRAY_C+1)-ki < W_TILE*H_TILE)
				{
					int k = (ko*ARRAY_K+ki);
					int hi = ((i-ARRAY_C+1)-ki)/W_TILE;
					int wi = ((i-ARRAY_C+1)-ki)%W_TILE;
					output_buf[k*H_TILE*W_TILE+hi*W_TILE+wi] = output_reg[ki][(ARRAY_C-1)]; //Cause Pipeline Violation(output_l1 port)
				}
			}
		}
	}
};

void coreConv_class(
	// Params Ports
	//uint output_num,
	//uint conv_loop_cnt,
	//uint contol, //[0]-> relu  [1]->bypass pooling,for ResNet [0]->bn.[1]->wr(fc)
	char frac_w,
	char frac_din,
	char frac_dout,
	hls::stream<k2k_data> &bias_in,
	hls::stream<k2k_data> &weight_in,
	hls::stream<k2k_data> &data_in,
	hls::stream<k2k_data> &conv_out)
{
	#pragma HLS interface s_axilite port=frac_dout bundle=cntrl_data
	#pragma HLS interface s_axilite port=frac_din bundle=cntrl_data
	#pragma HLS interface s_axilite port=frac_w bundle=cntrl_data
#pragma HLS expression_balance

	DPTYPE bias_l2[2048];
	DPTYPE weight_l2[2048];
	DPTYPE data_l2[2048];
	MACTYPE output_l2[2048];
	DPTYPE bias_l1[2048];
	DPTYPE weight_l1[2048];
	DPTYPE data_l1[2048];
	MACTYPE output_l1[2048];
DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 cyclic factor=ARRAY_K) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 cyclic factor=ARRAY_K) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l1 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l1 cyclic factor=ARRAY_K) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l1 cyclic factor=ARRAY_K) //BRAM cyclic
/*	static DPTYPE weight_reg[ARRAY_K][ARRAY_C];
	static DPTYPE data_reg[ARRAY_K][ARRAY_C];
	static MACTYPE output_reg[ARRAY_K][ARRAY_C];
#pragma HLS ARRAY_PARTITION variable=weight_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete // Register

	static DPTYPE input_data[ARRAY_C];
	#pragma HLS array_partition variable=input_data complete
	static MACTYPE partial_sum_data[ARRAY_K];
	#pragma HLS array_partition variable=partial_sum_data complete*/

	SystolicArray_WeightStationary sys_array;

	//if(output_num < 50) conv_loop_cnt += 8;
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
								output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi] = bias_l2[k];
							}
						}
					}

					for (int r = 0; r < RS; r++) // No Tiling
					{
					#pragma HLS pipeline off
						for (int s = 0; s < RS; s++) // No Tiling
						{
						#pragma HLS pipeline off
							//Systolic Array

							/*
							// Store1: Assign Weight L2 -> reg
							for(int ki=0; ki < ARRAY_K; ki++) {
							#pragma HLS unroll
								for(int ci=0; ci < ARRAY_C; ci++) {
								#pragma HLS unroll
									int k = (ko*ARRAY_K+ki);
									int c = (co*ARRAY_C+ci);
									weight_reg[ki][ci] = weight_l2[k*C*RS*RS+c*RS*RS+r*RS+s];
								}
							}
							// Input L2 -> L1
							for(int ci=0; ci < ARRAY_C; ci++) {
								#pragma HLS unroll
								for(int hi=0; hi < H_TILE; hi++) {
									for(int wi=0; wi < W_TILE; wi++) {
										int c = (co*ARRAY_C+ci);
										int h = (ho*H_TILE+hi) + r;
										int w = (wo*W_TILE+wi) + s;
										data_l1[ci*H_TILE*W_TILE+hi*W_TILE+wi] = data_l2[c*WH_in*WH_in+h*WH_in+w];
										// To Improvement: Im2Col for data_l1
									}
								}
							}
							// PE Array
							int input_rows = H_TILE*W_TILE + (C-1)+(ARRAY_K-1)+ARRAY_C;
									//input size: WH*WH + input systolic bubble: (C-1) + output systolic bubble: ARRAY (K-1)+C
							for(int i=0; i < input_rows; i++)
							{
								#pragma HLS pipeline
								//Im2Col & input bubble
								for(int ci=0;ci<ARRAY_C;ci++) {
								#pragma HLS unroll
									int hi = (i-ci)/W_TILE;
									int wi = (i-ci)%W_TILE;
									if (i-ci >=0) input_data[ci] = data_l1[ci*H_TILE*W_TILE+hi*W_TILE+wi];
									else input_data[ci] = 0; //Bubble
								}
								// Store2: Input Shift
								//for(int ki=ARRAY_K-1; ki >= 0; ki--) {
								//#pragma HLS unroll
								//	for(int ci=0; ci < ARRAY_C; ci++) {
								//	#pragma HLS unroll
								//		if (ki==0)
								//			data_reg[ki][ci] = input_data[ci];
								//		else
								//			data_reg[ki][ci] = data_reg[(ki-1)][ci];
								//	}
								//}
								// partial sum pre-load
								//for(int ki=0; ki < ARRAY_K; ki++) {
								//#pragma HLS unroll
								//	int k = (ko*ARRAY_K+ki);
								//	int hi = (i-ki)/W_TILE;
								//	int wi = (i-ki)%W_TILE;
								//	partial_sum_data[ki] = output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi]; //Cause Pipeline Violation (output_l1 port)
								//}
								// output MAC & shift
								//for(int ki=0; ki < ARRAY_K; ki++) {
								for(int ki=ARRAY_K-1; ki >= 0; ki--) {
								#pragma HLS unroll
									for(int ci=ARRAY_C-1; ci >= 0; ci--) {
									#pragma HLS unroll
										//MACTYPE res;
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
											output_reg[ki][0] = output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi]; //Cause Pipeline Violation (output_l1 port)
										}
										//if(ci==0) res = partial_sum_data[ki]; // Load from buf
										//else res = output_reg[ki][(ci-1)];
										////if(ci==0) output_reg[ki][ci] = partial_sum_data[ki]; // Load from buf
										else output_reg[ki][ci] = output_reg[ki][(ci-1)];
										//res += (MACTYPE)data_reg[ki][ci] * (MACTYPE)weight_reg[ki][ci];
										//output_reg[ki][ci] = res;
										output_reg[ki][ci] += (MACTYPE)data_reg[ki][ci] * (MACTYPE)weight_reg[ki][ci];
										if ((i-ARRAY_C+1)-ki >= 0 && (i-ARRAY_C+1)-ki < W_TILE*H_TILE)
										{
											int k = (ko*ARRAY_K+ki);
											int hi = ((i-ARRAY_C+1)-ki)/W_TILE;
											int wi = ((i-ARRAY_C+1)-ki)%W_TILE;
											output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi] = output_reg[ki][(ARRAY_C-1)]; //Cause Pipeline Violation(output_l1 port)
										}
									}
								}
								// Store3: partial sum(reg) to buffer
								//for(int ki=0; ki < ARRAY_K; ki++) {
								//#pragma HLS unroll
								//	int k = (ko*ARRAY_K+ki);
								//	int hi = ((i-ARRAY_C+1)-ki)/W_TILE;
								//	int wi = ((i-ARRAY_C+1)-ki)%W_TILE;
								//	if ((i-ARRAY_C+1)-ki >= 0 && (i-ARRAY_C+1)-ki < W_TILE*H_TILE)
								//		output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi] = output_reg[ki][(ARRAY_C-1)]; //Cause Pipeline Violation(output_l1 port)
								//	else {} //Bubble: waste
								//}
							}
							// Output l1 -> l2
							// TODO : store output tile l1->l2
							*/

							sys_array.assignWeightStationReg(weight_l2, ko, co, r, s, C, RS);

							// Input L2 -> L1
							for(int ci=0; ci < ARRAY_C; ci++) {
								#pragma HLS unroll
								for(int hi=0; hi < H_TILE; hi++) {
									for(int wi=0; wi < W_TILE; wi++) {
										int c = (co*ARRAY_C+ci);
										int h = (ho*H_TILE+hi) + r;
										int w = (wo*W_TILE+wi) + s;
										data_l1[ci*H_TILE*W_TILE+hi*W_TILE+wi] = data_l2[c*WH_in*WH_in+h*WH_in+w];
										// To Improvement: Im2Col for data_l1
									}
								}
							}

							DPTYPE input_data[ARRAY_C];
							#pragma HLS array_partition variable=input_data complete

							// PE Array
							int input_rows = H_TILE*W_TILE + (C-1)+(ARRAY_K-1)+ARRAY_C;
									//input size: WH*WH + input systolic bubble: (C-1) + output systolic bubble: ARRAY (K-1)+C
							for(int i=0; i < input_rows; i++)
							{
							#pragma HLS pipeline
								//Im2Col & input bubble
								for(int ci=0;ci<ARRAY_C;ci++) {
								#pragma HLS unroll
									int hi = (i-ci)/W_TILE;
									int wi = (i-ci)%W_TILE;
									if (i-ci >=0) input_data[ci] = data_l1[ci*H_TILE*W_TILE+hi*W_TILE+wi];
									else input_data[ci] = 0; //Bubble
								}
								sys_array.doSystolic(input_data, output_l1, i, ko, co, r, s, C, RS, H_TILE, W_TILE);
							}
						}
					}
				}
			}
		}
	}

	for (unsigned int k = 0; k < K*WH*WH; k++) {
		output_tmp.data(31,0) = output_l1[k]; conv_out.write(output_tmp);
	}


	printf("Kernel coreConv lanched !!!\n");
}


void coreConv(
	// Params Ports
	//uint output_num,
	//uint conv_loop_cnt,
	//uint contol, //[0]-> relu  [1]->bypass pooling,for ResNet [0]->bn.[1]->wr(fc)
	char frac_w,
	char frac_din,
	char frac_dout,
	hls::stream<k2k_data> &bias_in,
	hls::stream<k2k_data> &weight_in,
	hls::stream<k2k_data> &data_in,
	hls::stream<k2k_data> &conv_out)
{
	#pragma HLS interface s_axilite port=frac_dout bundle=cntrl_data
	#pragma HLS interface s_axilite port=frac_din bundle=cntrl_data
	#pragma HLS interface s_axilite port=frac_w bundle=cntrl_data
#pragma HLS expression_balance

	DPTYPE bias_l2[2048];
	DPTYPE weight_l2[2048];
	DPTYPE data_l2[2048];
	MACTYPE output_l2[2048];
	DPTYPE bias_l1[2048];
	DPTYPE weight_l1[2048];
	DPTYPE data_l1[2048];
	MACTYPE output_l1[2048];
DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 cyclic factor=ARRAY_K) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 cyclic factor=ARRAY_K) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l1 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l1 cyclic factor=ARRAY_K) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l1 cyclic factor=ARRAY_C) //BRAM cyclic
DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l1 cyclic factor=ARRAY_K) //BRAM cyclic
	DPTYPE weight_reg[ARRAY_K][ARRAY_C];
	DPTYPE data_reg[ARRAY_K][ARRAY_C];
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
#pragma HLS ARRAY_PARTITION variable=weight_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete // Register

	DPTYPE input_data[ARRAY_C];
	#pragma HLS array_partition variable=input_data complete
	MACTYPE partial_sum_data[ARRAY_K];
	#pragma HLS array_partition variable=partial_sum_data complete

	SystolicArray_WeightStationary sys_array;

	//if(output_num < 50) conv_loop_cnt += 8;
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
								output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi] = bias_l2[k];
								//output_l1[ko*H_TILE*W_TILE+hi*W_TILE+wi][ki] = bias_l2[k];
							}
						}
					}

					for (int r = 0; r < RS; r++) // No Tiling
					{
					#pragma HLS pipeline off
						for (int s = 0; s < RS; s++) // No Tiling
						{
						#pragma HLS pipeline off
							//Systolic Array

							// Store1: Assign Weight L2 -> reg
							for(int ki=0; ki < ARRAY_K; ki++) {
							#pragma HLS unroll
								for(int ci=0; ci < ARRAY_C; ci++) {
								#pragma HLS unroll
									int k = (ko*ARRAY_K+ki);
									int c = (co*ARRAY_C+ci);
									weight_reg[ki][ci] = weight_l2[k*C*RS*RS+c*RS*RS+r*RS+s];
								}
							}
							// Input L2 -> L1
							for(int ci=0; ci < ARRAY_C; ci++) {
								#pragma HLS unroll
								for(int hi=0; hi < H_TILE; hi++) {
									for(int wi=0; wi < W_TILE; wi++) {
										int c = (co*ARRAY_C+ci);
										int h = (ho*H_TILE+hi) + r;
										int w = (wo*W_TILE+wi) + s;
										data_l1[ci*H_TILE*W_TILE+hi*W_TILE+wi] = data_l2[c*WH_in*WH_in+h*WH_in+w];
										//data_l1[hi*W_TILE+wi][ci] = data_l2[c*WH_in*WH_in+h*WH_in+w];
										// To Improvement: Im2Col for data_l1
									}
								}
							}
							// PE Array
							int input_rows = H_TILE*W_TILE + (C-1)+(ARRAY_K-1)+ARRAY_C;
									//input size: WH*WH + input systolic bubble: (C-1) + output systolic bubble: ARRAY (K-1)+C
							for(int i=0; i < input_rows; i++)
							{
								//#pragma HLS pipeline
								//Im2Col & input bubble
								for(int ci=0;ci<ARRAY_C;ci++) {
								#pragma HLS unroll
									int hi = (i-ci)/W_TILE;
									int wi = (i-ci)%W_TILE;
									if (i-ci >=0) input_data[ci] = data_l1[ci*H_TILE*W_TILE+hi*W_TILE+wi];
									//if (i-ci >=0) input_data[ci] = data_l1[hi*W_TILE+wi][ci];
									else input_data[ci] = 0; //Bubble
								}
								// Store2: Input Shift
								//for(int ki=ARRAY_K-1; ki >= 0; ki--) {
								//#pragma HLS unroll
								//	for(int ci=0; ci < ARRAY_C; ci++) {
								//	#pragma HLS unroll
								//		if (ki==0)
								//			data_reg[ki][ci] = input_data[ci];
								//		else
								//			data_reg[ki][ci] = data_reg[(ki-1)][ci];
								//	}
								//}
								// partial sum pre-load
								//for(int ki=0; ki < ARRAY_K; ki++) {
								//#pragma HLS unroll
								//	int k = (ko*ARRAY_K+ki);
								//	int hi = (i-ki)/W_TILE;
								//	int wi = (i-ki)%W_TILE;
								//	partial_sum_data[ki] = output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi]; //Cause Pipeline Violation (output_l1 port)
								//}
								// output MAC & shift
								//for(int ki=0; ki < ARRAY_K; ki++) {

								for(int ki=ARRAY_K-1; ki >= 0; ki--) {
								#pragma HLS unroll
								/*for(int lp=0; lp < ARRAY_K*ARRAY_C; lp++) {
								#pragma HLS unroll
									int ki = ARRAY_K-1 - (lp/ARRAY_C);
									int ci = ARRAY_C-1 - (lp%ARRAY_C);*/
									for(int ci=ARRAY_C-1; ci >= 0; ci--) {
									//#pragma HLS loop_flatten
									#pragma HLS unroll
										//MACTYPE res;
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
											output_reg[ki][0] = output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi]; //Cause Pipeline Violation (output_l1 port)
											else
												output_reg[ki][0] = 0;
										}
										//if(ci==0) res = partial_sum_data[ki]; // Load from buf
										//else res = output_reg[ki][(ci-1)];
										////if(ci==0) output_reg[ki][ci] = partial_sum_data[ki]; // Load from buf
										else output_reg[ki][ci] = output_reg[ki][(ci-1)];
										//res += (MACTYPE)data_reg[ki][ci] * (MACTYPE)weight_reg[ki][ci];
										//output_reg[ki][ci] = res;
										output_reg[ki][ci] += (MACTYPE)data_reg[ki][ci] * (MACTYPE)weight_reg[ki][ci];
										if ((i-ARRAY_C+1)-ki >= 0 && (i-ARRAY_C+1)-ki < W_TILE*H_TILE)
										{
											int k = (ko*ARRAY_K+ki);
											int hi = ((i-ARRAY_C+1)-ki)/W_TILE;
											int wi = ((i-ARRAY_C+1)-ki)%W_TILE;
											output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi] = output_reg[ki][(ARRAY_C-1)]; //Cause Pipeline Violation(output_l1 port)
										}

										/*output_reg[ki][ci] += (MACTYPE)data_reg[ki][ci] * (MACTYPE)weight_reg[ki][ci];
										if (ki==0)
											data_reg[0][ci] = input_data[ci];
										else
											data_reg[ki][ci] = data_reg[(ki-1)][ci];
										if(ci==ARRAY_C-1) {
											int k = (ko*ARRAY_K+ki);
											int hi = ((i-ARRAY_C)-ki)/W_TILE;
											int wi = ((i-ARRAY_C)-ki)%W_TILE;
											if ((i-ARRAY_C)-ki >= 0 && (i-ARRAY_C)-ki < W_TILE*H_TILE)
												output_l1[ko*H_TILE*W_TILE+hi*W_TILE+wi][ki] = output_reg[ki][(ARRAY_C-1)]; //Cause Pipeline Violation(output_l1 port)
										}
										else output_reg[ki][(ci+1)] = output_reg[ki][(ci)];*/
									}
								}
								/*for(int ki=ARRAY_K-1; ki >= 0; ki--) {
								#pragma HLS unroll
									int k = (ko*ARRAY_K+ki);
									int hi = (i-ki-1)/W_TILE;
									int wi = (i-ki-1)%W_TILE;
									if(i-ki-1>=0) output_reg[ki][0] = output_l1[ko*H_TILE*W_TILE+hi*W_TILE+wi][ki]; //Cause Pipeline Violation (output_l1 port)
								}*/
								// Store3: partial sum(reg) to buffer
								//for(int ki=0; ki < ARRAY_K; ki++) {
								//#pragma HLS unroll
								//	int k = (ko*ARRAY_K+ki);
								//	int hi = ((i-ARRAY_C+1)-ki)/W_TILE;
								//	int wi = ((i-ARRAY_C+1)-ki)%W_TILE;
								//	if ((i-ARRAY_C+1)-ki >= 0 && (i-ARRAY_C+1)-ki < W_TILE*H_TILE)
								//		output_l1[k*H_TILE*W_TILE+hi*W_TILE+wi] = output_reg[ki][(ARRAY_C-1)]; //Cause Pipeline Violation(output_l1 port)
								//	else {} //Bubble: waste
								//}
							}
							// Output l1 -> l2
							// TODO : store output tile l1->l2
						}
					}
				}
			}
		}
	}

	for(int k=0;k<K*WH*WH;k++) {
		output_tmp.data(31,0) = output_l1[k]; conv_out.write(output_tmp);
	}


	printf("Kernel coreConv lanched !!!\n");
}
