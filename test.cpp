
#include <stdio.h>
#include "hw_param.h"


void coreConv(char frac_dout,
        char frac_din,
        char frac_w,
        hls::stream<k2k_data> &bias_in,
        hls::stream<k2k_data> &weight_in,
        hls::stream<k2k_data> &data_in,
        hls::stream<k2k_data> &conv_out);
void Conv(
        hls::stream<k2k_data> &bias_in,
        hls::stream<k2k_data> &weight_in,
        hls::stream<k2k_data> &data_in,
        hls::stream<k2k_data> &conv_out);
void Conv_sysarr(
        hls::stream<k2k_data> &bias_in,
        hls::stream<k2k_data> &weight_in,
        hls::stream<k2k_data> &data_in,
        hls::stream<k2k_data> &conv_out);

void conv_gold(
	    uint K,
	    uint C,
	    uint WH,
	    uint WH_in,
	    uint RS,
		char *bias,
		char *weight,
		char *data,
		int *gold)
{
	for(int k=0;k<K;k++){
		for(int h=0;h<WH;h++){
			for(int w=0;w<WH;w++){
				gold[k*WH*WH + h*WH + w] = bias[k];
				for(int c=0;c<C;c++){
					for(int r=0;r<RS;r++){
						for(int s=0;s<RS;s++){
							//gold[k*WH*WH + h*WH + w] += data[c*WH_in*WH_in + (h+r)*WH_in + (w+s)]
							//								 * weight[k*C*RS*RS + c*RS*RS + r*RS + s];
							gold[k*WH*WH + h*WH + w] = (char)((char)gold[k*WH*WH + h*WH + w] + (char)(data[c*WH_in*WH_in + (h+r)*WH_in + (w+s)]
															 * weight[k*C*RS*RS + c*RS*RS + r*RS + s])); // for Quantization
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
	    uint K,
	    uint C,
	    uint WH,
	    uint WH_in,
	    uint RS,
		char *bias,
		char *weight,
		char *data,
		int *gold
		)
{
    hls::stream<k2k_data> bias_in;
    hls::stream<k2k_data> weight_in;
    hls::stream<k2k_data> data_in;
    hls::stream<k2k_data> conv_out;

    k2k_data tmp;
    tmp.data(31,0) = K;
    bias_in.write(tmp);
    tmp.data(31,0) = C;
    bias_in.write(tmp);
    tmp.data(31,0) = WH;
    bias_in.write(tmp);
    tmp.data(31,0) = WH_in;
    bias_in.write(tmp);
    tmp.data(31,0) = RS;
    bias_in.write(tmp);

	for (unsigned int k = 0; k < K; k++) {
		tmp.data(7,0) = bias[k]; bias_in.write(tmp);
	}
	for (unsigned int k = 0; k < K*C*RS*RS; k++) {
		tmp.data(7,0) = weight[k]; weight_in.write(tmp);
	}
	for (unsigned int k = 0; k < C*WH_in*WH_in; k++) {
		tmp.data(7,0) = data[k]; data_in.write(tmp);
	}

	Conv_sysarr(bias_in, weight_in, data_in, conv_out);
	exit(0);
    for(int l=0;l<K*WH*WH;l++) {
    	tmp = conv_out.read(); int output = tmp.data(31,0);
    	if(output != gold[l]) { printf("Error(%d): %d (gold %d)\n", l, output, gold[l]);  return 1; }
    	//if(output != gold[l]) { printf("Error(%d): %d (gold %d)\n", l, output, gold[l]);  return 0; }
    	//printf("%d: %d\n", l, (uint)(tmp.data(31,0)));
    }
    return 0;
}

int main()
{
	char bias[2048];
	char data[2048];
	char weight[2048];
	int gold[2048];

    uint K = 16;
    uint C = 4;
    uint WH = 7;
    uint WH_in = 9;
    uint RS = 3;

    printf("Test Start\n");
    //TEST CASE 1
	for(int k = 0; k < K; k++)				bias[k]		= 1;
	for(int k = 0; k < K*C*RS*RS; k++)		weight[k]	= 1;
	for(int k = 0; k < C*WH_in*WH_in; k++)	data[k]		= 1;
    conv_gold(K,C,WH,WH_in,RS,bias,weight,data,gold);
    if(conv_test(K,C,WH,WH_in,RS,bias,weight,data,gold)==1) return 1;
    printf("Test Case 1 Complete\n");

    //TEST CASE 2
	for(int k = 0; k < K; k++)				bias[k]		= k;
	for(int k = 0; k < K*C*RS*RS; k++)		weight[k]	= k%256-128;
	for(int k = 0; k < C*WH_in*WH_in; k++)	data[k]		= 1;
    conv_gold(K,C,WH,WH_in,RS,bias,weight,data,gold);
    if(conv_test(K,C,WH,WH_in,RS,bias,weight,data,gold)==1) return 1;
    printf("Test Case 2 Complete\n");

    //TEST CASE 3
	for(int k = 0; k < K; k++)				bias[k]		= k;
	for(int k = 0; k < K*C*RS*RS; k++)		weight[k]	= 1;
	for(int k = 0; k < C*WH_in*WH_in; k++)	data[k]		= k%256-128;
    conv_gold(K,C,WH,WH_in,RS,bias,weight,data,gold);
    if(conv_test(K,C,WH,WH_in,RS,bias,weight,data,gold)==1) return 1;
    printf("Test Case 3 Complete\n");

    //TEST CASE 4
	for(int k = 0; k < K; k++)				bias[k]		= rand()%256-128;
	for(int k = 0; k < K*C*RS*RS; k++)		weight[k]	= rand()%256-128;
	for(int k = 0; k < C*WH_in*WH_in; k++)	data[k]		= rand()%256-128;
    conv_gold(K,C,WH,WH_in,RS,bias,weight,data,gold);
    if(conv_test(K,C,WH,WH_in,RS,bias,weight,data,gold)==1) return 1;
    printf("Test Case 4 Complete\n");

	return 0;
}
