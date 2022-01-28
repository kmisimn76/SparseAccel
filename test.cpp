
#include <stdio.h>
#include "hw_param.h"

#define ARRAY_K 16
#define ARRAY_C 16
/*
typedef struct {
    uint K;
    uint C;
    uint WH;
    uint WH_in;
    uint RS;
	uint L2_TILENUM_K;///
	uint L2_TILENUM_C;
    uint L2_TILENUM_W; // W Size of a tile
    uint L2_TILENUM_H;
    uint L2_TILENUM_R;
    uint L2_TILENUM_S;
    uint K_L2;
    uint C_L2;
    uint W_L2;
    uint H_L2;
    uint W_in_L2;
    uint H_in_L2;
    uint R_L2;
    uint S_L2;
	uint L1_TILENUM_K;///
	uint L1_TILENUM_C;
    uint L1_TILENUM_W; // W Size of a tile
    uint L1_TILENUM_H;
    uint L1_TILENUM_R;
    uint L1_TILENUM_S;
    uint K_L1;
    uint C_L1;
    uint W_L1;
    uint H_L1;
    uint W_in_L1;
    uint H_in_L1;
    uint R_L1;
    uint S_L1;
    uint TILESIZE_W; // W Size of a tile
    uint TILESIZE_H;
    uint TILESIZE_R; //must be 1
    uint TILESIZE_S; //must be 1
} NPU_PARAM;
*/


void Conv_sysarr(
        NPU_PARAM hw_param,
		DPTYPE *bias_in,
		DPTYPE *weight_in,
		DPTYPE *data_in,
		MACTYPE *conv_out);

void conv_gold(
		NPU_PARAM param,
		char *bias,
		char *weight,
		char *data,
		int *gold)
{
	for(int k=0;k<param.K;k++){
		for(int h=0;h<param.WH;h++){
			for(int w=0;w<param.WH;w++){
				gold[k*param.WH*param.WH + h*param.WH + w] = bias[k];
				for(int c=0;c<param.C;c++){
					for(int r=0;r<param.RS;r++){
						for(int s=0;s<param.RS;s++){
							// INT32 accumulation
							gold[k*param.WH*param.WH + h*param.WH + w]
								 += data[c*param.WH_in*param.WH_in + (h+r)*param.WH_in + (w+s)]
										* weight[k*param.C*param.RS*param.RS
												 + c*param.RS*param.RS + r*param.RS + s];

							// INT8 accumulation
							//gold[k*WH*WH + h*WH + w] = (char)((char)gold[k*WH*WH + h*WH + w] + (char)(data[c*WH_in*WH_in + (h+r)*WH_in + (w+s)]
							//								 * weight[k*C*RS*RS + c*RS*RS + r*RS + s])); // for Quantization
						}
					}
				}
		    	//printf("%d ", gold[k*WH*WH + h*WH + w]);
			}
		}
	}
	//printf("\n");
}

char bias[2048];
char data[3268864];
char weight[2359296];
int gold[3211264];

char bias_in[2048];
char data_in[3268864];
char weight_in[2359296];
int conv_out[3211264];

int conv_test(
		NPU_PARAM param,
		char *bias,
		char *weight,
		char *data,
		int *gold
		)
{
	for (unsigned int ko = 0; ko < param.K/VEC_SIZE; ko++) {
		for (unsigned int ki = 0; ki < VEC_SIZE; ki++) {
			uint ptr = (ko)*VEC_SIZE + ki;
			uint l = (ko*VEC_SIZE+ki);
			bias_in[ptr] = bias[l];
		}
	}
    for(int wh=0;wh<param.WH_in*param.WH_in;wh++) {
		for (unsigned int co = 0; co < param.C/VEC_SIZE; co++) {
			for (unsigned int ci = 0; ci < VEC_SIZE; ci++) {
				uint ptr = (co*param.WH_in*param.WH_in+wh)*VEC_SIZE + ci;
				uint l = (co*VEC_SIZE+ci)*param.WH_in*param.WH_in + wh;
				data_in[ptr] = data[l];
			}
		}
    }
    for(int rsc=0;rsc<param.RS*param.RS*param.C;rsc++) {
		for (unsigned int ko = 0; ko < param.K/VEC_SIZE; ko++) {
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) {
				uint ptr = (ko*param.RS*param.RS*param.C+rsc)*VEC_SIZE + ki;
				uint l = (ko*VEC_SIZE+ki)*param.RS*param.RS*param.C+rsc;
				weight_in[ptr] = weight[l];
			}
		}
    }

	Conv_sysarr(
			param,
			bias_in, weight_in, data_in, conv_out); //Conv sys arr

    for(int wh=0;wh<param.WH*param.WH;wh++) {
		for (unsigned int ko = 0; ko < param.K/VEC_SIZE; ko++) {
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) {
				uint ptr = (ko*param.WH*param.WH+wh)*VEC_SIZE + ki;
				uint l = (ko*VEC_SIZE+ki)*param.WH*param.WH + wh;
				int v = ki;
				int output = conv_out[ptr];
				if(output != gold[l]) { printf("Error(%d or %d): %d (gold %d)\n", l, ptr, output, gold[l]);  return 1; }
			}
		}
    }
    return 0;
}

int main()
{

	NPU_PARAM param;
	/*{
	param.K = 512;
	param.C = 512;
	param.WH = 28;
	param.WH_in = 30;
	param.RS = 3;
	param.TILESIZE_W = 28;
	param.TILESIZE_H = 28;
	param.TILESIZE_R = 1;
	param.TILESIZE_S = 1;
	}*/
	/*{
	param.K = 16;
	param.C = 4;
	param.WH = 14;
	param.WH_in = 16;
	param.RS = 3;
	param.L2_TILENUM_K = 4; ///
	param.L2_TILENUM_C = 1;
	param.L2_TILENUM_W = 2;
	param.L2_TILENUM_H = 2;
	param.L2_TILENUM_R = 1;
	param.L2_TILENUM_S = 1;
	param.K_L2 = 4;
	param.C_L2 = 4;
	param.W_L2 = 7;
	param.H_L2 = 7;
	param.W_in_L2 = 9; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = 9;
	param.R_L2 = 3;
	param.S_L2 = 3;
	param.L1_TILENUM_K = 1; ///
	param.L1_TILENUM_C = 1;
	param.L1_TILENUM_W = 1;
	param.L1_TILENUM_H = 1;
	param.L1_TILENUM_R = 3;
	param.L1_TILENUM_S = 3;
	param.K_L1 = 4;
	param.C_L1 = 4;
	param.W_L1 = 7;
	param.H_L1 = 7;
	param.W_in_L1 = 7; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = 7;
	param.R_L1 = 1;
	param.S_L1 = 1;
	param.TILESIZE_W = 7; ////
	param.TILESIZE_H = 7;
	param.TILESIZE_R = 1; //must be 1
	param.TILESIZE_S = 1; //must be 1
	}*/
	{
	param.K = 32;
	param.C = 64;
	param.WH = 14;
	param.WH_in = 16;
	param.RS = 3;
	param.L2_TILENUM_K = 1; ///
	param.L2_TILENUM_C = 2;
	param.L2_TILENUM_W = 1;
	param.L2_TILENUM_H = 1;
	param.L2_TILENUM_R = 1;
	param.L2_TILENUM_S = 1;
	param.K_L2 = 32;
	param.C_L2 = 32;
	param.W_L2 = 14;
	param.H_L2 = 14;
	param.W_in_L2 = 16; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	param.H_in_L2 = 16;
	param.R_L2 = 3;
	param.S_L2 = 3;
	param.L1_TILENUM_K = 2; ///
	param.L1_TILENUM_C = 2;
	param.L1_TILENUM_W = 2;
	param.L1_TILENUM_H = 2;
	param.L1_TILENUM_R = 3;
	param.L1_TILENUM_S = 3;
	param.K_L1 = 16;
	param.C_L1 = 16;
	param.W_L1 = 7;
	param.H_L1 = 7;
	param.W_in_L1 = 7; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	param.H_in_L1 = 7;
	param.R_L1 = 1;
	param.S_L1 = 1;
	param.TILESIZE_W = 7; ////
	param.TILESIZE_H = 7;
	param.TILESIZE_R = 1; //must be 1
	param.TILESIZE_S = 1; //must be 1
	}

    printf("Test Start\n");
    //TEST CASE 1
	for(int k = 0; k < param.K; k++)								bias[k]		= 1;
	for(int k = 0; k < param.K*param.C*param.RS*param.RS; k++)		weight[k]	= 1;
	for(int k = 0; k < param.C*param.WH_in*param.WH_in; k++)		data[k]		= 1;
    conv_gold(param,bias,weight,data,gold);
    if(conv_test(param,bias,weight,data,gold)==1) return 1;
    printf("Test Case 1 Complete\n");

    //TEST CASE 2
	for(int k = 0; k < param.K; k++)								bias[k]		= k%256-128;
	for(int k = 0; k < param.K*param.C*param.RS*param.RS; k++)		weight[k]	= k%256-128;
	for(int k = 0; k < param.C*param.WH_in*param.WH_in; k++)		data[k]		= 1;
    conv_gold(param,bias,weight,data,gold);
    if(conv_test(param,bias,weight,data,gold)==1) return 1;
    printf("Test Case 2 Complete\n");

    //TEST CASE 3
	for(int k = 0; k < param.K; k++)								bias[k]		= k%256-128;
	for(int k = 0; k < param.K*param.C*param.RS*param.RS; k++)		weight[k]	= 1;
	for(int k = 0; k < param.C*param.WH_in*param.WH_in; k++)		data[k]		= k%256-128;
    conv_gold(param,bias,weight,data,gold);
    if(conv_test(param,bias,weight,data,gold)==1) return 1;
    printf("Test Case 3 Complete\n");

    //TEST CASE 4
	for(int k = 0; k < param.K; k++)								bias[k]		= rand()%256-128;
	for(int k = 0; k < param.K*param.C*param.RS*param.RS; k++)		weight[k]	= rand()%256-128;
	for(int k = 0; k < param.C*param.WH_in*param.WH_in; k++)		data[k]		= rand()%256-128;
    conv_gold(param,bias,weight,data,gold);
    if(conv_test(param,bias,weight,data,gold)==1) return 1;
    printf("Test Case 4 Complete\n");

	return 0;
}
