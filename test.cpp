
#include <stdio.h>
#include "hw_param.h"


void Conv_sysarr(
        hls::stream<k2k_data> &param_in,
        hls::stream<k2k_data> &bias_in,
        hls::stream<k2k_data> &weight_in,
        hls::stream<k2k_data> &data_in,
        hls::stream<k2k_data> &conv_out);

typedef struct {
    uint K;
    uint C;
    uint WH;
    uint WH_in;
    uint RS;
    uint TILESIZE_W; // W Size of a tile
    uint TILESIZE_H;
    uint TILESIZE_R;
    uint TILESIZE_S;
} NPU_PARAM;

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

int conv_test(
		NPU_PARAM param,
		char *bias,
		char *weight,
		char *data,
		int *gold
		)
{
    hls::stream<k2k_data> param_in;
    hls::stream<k2k_data> bias_in;
    hls::stream<k2k_data> weight_in;
    hls::stream<k2k_data> data_in;
    hls::stream<k2k_data> conv_out;

    k2k_data tmp;
    tmp.data(31,0) = param.K;
    param_in.write(tmp);
    tmp.data(31,0) = param.C;
    param_in.write(tmp);
    tmp.data(31,0) = param.WH;
    param_in.write(tmp);
    tmp.data(31,0) = param.WH_in;
    param_in.write(tmp);
    tmp.data(31,0) = param.RS;
    param_in.write(tmp);
    tmp.data(31,0) = param.TILESIZE_W;
    param_in.write(tmp);
    tmp.data(31,0) = param.TILESIZE_H;
    param_in.write(tmp);
    tmp.data(31,0) = param.TILESIZE_R;
    param_in.write(tmp);
    tmp.data(31,0) = param.TILESIZE_S;
    param_in.write(tmp);

	for (unsigned int ko = 0; ko < param.K/VEC_SIZE; ko++) {
		for (unsigned int ki = 0; ki < VEC_SIZE; ki++) {
			uint k = ko * VEC_SIZE + ki;
			int v = ki;
			tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH) = bias[k];
		}
		bias_in.write(tmp);
	}
	for (unsigned int crs = 0; crs < param.C*param.RS*param.RS; crs++) {
		for (unsigned int ko = 0; ko < param.K/VEC_SIZE; ko++) {
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) {
				uint ptr = (ko*VEC_SIZE + ki)*param.C*param.RS*param.RS + crs;
				int v = ki;
				tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH) = weight[ptr];
			}
			weight_in.write(tmp);
		}
	}
	for (unsigned int wh = 0; wh < param.WH_in*param.WH_in; wh++) {
		for (unsigned int co = 0; co < param.C/VEC_SIZE; co++) {
			for (unsigned int ci = 0; ci < VEC_SIZE; ci++) {
				uint ptr = (co*VEC_SIZE+ci)*param.WH_in*param.WH_in + wh;
				int v = ci;
				tmp.data((v+1)*DP_WIDTH-1, v*DP_WIDTH) = data[ptr];
			}
			data_in.write(tmp);
		}
	}

	Conv_sysarr(param_in, bias_in, weight_in, data_in, conv_out); //Conv sys arr

    for(int wh=0;wh<param.WH*param.WH;wh++) {
		for (unsigned int ko = 0; ko < param.K/VEC_SIZE; ko++) {
			tmp = conv_out.read();
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) {
				uint l = (ko*VEC_SIZE+ki)*param.WH*param.WH + wh;
				int v = ki;
				int output = tmp.data((v+1)*MAC_WIDTH-1, v*MAC_WIDTH);
				if(output != gold[l]) { printf("Error(%d): %d (gold %d)\n", l, output, gold[l]);  return 1; }
			}
		}
    }
    return 0;
}

int main()
{
	char bias[2048];
	char data[2048];
	char weight[2048];
	int gold[2048];

	NPU_PARAM param;
	param.K = 16;
	param.C = 4;
	param.WH = 7;
	param.WH_in = 9;
	param.RS = 3;
	param.TILESIZE_W = 7;
	param.TILESIZE_H = 7;
	param.TILESIZE_R = 1;
	param.TILESIZE_S = 1;

    printf("Test Start\n");
    //TEST CASE 1
	for(int k = 0; k < param.K; k++)								bias[k]		= 1;
	for(int k = 0; k < param.K*param.C*param.RS*param.RS; k++)		weight[k]	= 1;
	for(int k = 0; k < param.C*param.WH_in*param.WH_in; k++)		data[k]		= 1;
    conv_gold(param,bias,weight,data,gold);
    if(conv_test(param,bias,weight,data,gold)==1) return 1;
    printf("Test Case 1 Complete\n");

    //TEST CASE 2
	for(int k = 0; k < param.K; k++)								bias[k]		= k;
	for(int k = 0; k < param.K*param.C*param.RS*param.RS; k++)		weight[k]	= k%256-128;
	for(int k = 0; k < param.C*param.WH_in*param.WH_in; k++)		data[k]		= 1;
    conv_gold(param,bias,weight,data,gold);
    if(conv_test(param,bias,weight,data,gold)==1) return 1;
    printf("Test Case 2 Complete\n");

    //TEST CASE 3
	for(int k = 0; k < param.K; k++)								bias[k]		= k;
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
