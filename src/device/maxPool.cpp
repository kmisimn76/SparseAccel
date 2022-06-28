#include "maxPool.h"

#ifndef XILINX
extern "C" {
#endif
//#define CUSTOM_RS 3 //if RESNET
//#define CUSTOM_RS 2 //if VGG
#define CUSTOM_RS (RS)
//#define CUSTOM_STRIDE (stride)
#define CUSTOM_STRIDE 2	//if RESNET or VGG

void maxPool(
		//uint K,//unused
		uint C,
		uint WH,//output_size
		uint WH_in,//input_size
		uint RS,
		uint stride,
		//uint Padding_in,
		uint Padding_out,
		DPTYPE *data_in,
		DPTYPE *pool_out,
		MACTYPE *pool_out_MACTYPE
		)
{
#pragma HLS INTERFACE m_axi port=data_in offset=slave bundle=gmem5
#pragma HLS INTERFACE m_axi port=pool_out offset=slave bundle=gmem6
#pragma HLS INTERFACE m_axi port=pool_out_MACTYPE offset=slave bundle=gmem7
#pragma HLS stable variable=data_in
#pragma HLS stable variable=pool_out
#pragma HLS stable variable=pool_out_MACTYPE


	DRAM_RESET: for (unsigned int co=0; co< C * WH * WH / VEC_SIZE;co++){
	DRAM_RESET_INNER: for (unsigned int ci=0; ci<VEC_SIZE;ci++){
		#pragma HLS unroll
		unsigned int output_ptr=co * VEC_SIZE + ci;
		pool_out[output_ptr] = 0;
		pool_out_MACTYPE[output_ptr] = 0;
	}
	}
	//TODO: tiling
	//loop over output feature map
	LOOP_C_OUTER: for(int co = 0; co < C/VEC_SIZE; co++){
		LOOP_H: for(int h = 0; h < WH-Padding_out*2; h++){
			LOOP_W: for(int w = 0; w < WH-Padding_out*2; w++){
				//find the max value in (RS)x(RS) reigon
				//to be one element in the output feature map
				DPTYPE tmp[VEC_SIZE];
				DPTYPE value[VEC_SIZE];
				#pragma HLS ARRAY_PARTITION variable=value dim=0 complete //register
				#pragma HLS ARRAY_PARTITION variable=tmp dim=0 complete //register
				//reset
				REGISTER_RESET: for(int ci = 0; ci < VEC_SIZE; ci++){
					#pragma HLS unroll
					tmp[ci]=0;
				}
				LOOP_R: for(int r = 0; r < CUSTOM_RS; r++){
					LOOP_S: for(int s = 0; s < CUSTOM_RS; s++){
						COPY_DRAM_REGISTER: for(int ci = 0; ci < VEC_SIZE; ci++){
							#pragma HLS unroll
							int data_ptr = (co * WH_in * WH_in + (h * CUSTOM_STRIDE + r) * WH_in  + (w * CUSTOM_STRIDE + s)) * VEC_SIZE + ci;
							value[ci] = data_in[data_ptr];
						}
						GET_MAX_VALUE: for(int ci = 0; ci < VEC_SIZE; ci++){
							#pragma HLS unroll
							if(value[ci] > tmp[ci])
								tmp[ci] = value[ci];
						}
					}
				}
				//store the result to output feature map
				COPY_REGISTER_DRAM: for(int ci = 0; ci < VEC_SIZE; ci++){
					#pragma HLS unroll
					int output_ptr=(co * WH * WH + (h+Padding_out) * WH + (w+Padding_out)) * VEC_SIZE + ci;
					pool_out[output_ptr] = tmp[ci];
					pool_out_MACTYPE[output_ptr] = tmp[ci];

				}
			}
		}
	}
}


#ifndef XILINX
}
#endif


