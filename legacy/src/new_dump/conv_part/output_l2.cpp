
/*
 * Cache output from L2 to DRAM
 * for weight stationary
 */
void output_dram_write_K(MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_NUM][ARRAY_K], MACTYPE* conv_out,
						uint kmo, uint hmo, uint wmo,
						uint K_L2, uint H_L2, uint W_L2, uint WH)
{
	#define STREAM_BUFFER_SIZE 32 // bigger than or equeal to W_L2
	MACTYPE stream_buffer[STREAM_BUFFER_SIZE][VEC_SIZE];
	for (unsigned int ko = 0; ko < (K_L2 / VEC_SIZE); ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		for (unsigned int h = 0; h < H_L2; h++) { // FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
			#pragma HLS loop_tripcount min=2 max=2
			for (unsigned int w = 0; w < W_L2; w++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
					#pragma HLS unroll
					unsigned int global_khw = ((kmo*(K_L2/VEC_SIZE)+ko)*WH*WH + (hmo*H_L2+h)*WH + (wmo*W_L2+w))*VEC_SIZE + ki;
					stream_buffer[w][ki] = conv_out[global_khw];
				}
			}
			for (unsigned int w = 0; w < W_L2; w++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				unsigned int khw = ko*H_L2*(W_L2/PORT_NUM) + h*(W_L2/PORT_NUM) + w/PORT_NUM;
				unsigned int pt = w%PORT_NUM;
				for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
					#pragma HLS unroll
					unsigned int global_khw = ((kmo*(K_L2/VEC_SIZE)+ko)*WH*WH + (hmo*H_L2+h)*WH + (wmo*W_L2+w))*VEC_SIZE + ki;
					conv_out[global_khw] = stream_buffer[w][ki] + output_l2[khw][pt][ki];
				}
			}
		}
	}
}

/*
 * Cache output from L2 to DRAM
 * for output stationary
 */
void output_dram_write_W(MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_K][ARRAY_W], MACTYPE* conv_out,
						uint kmo, uint hmo, uint wmo,
						uint K_L2, uint H_L2, uint W_L2, uint H, uint W
						, uint K)
{
	#define STREAM_BUFFER_SIZE 256 // bigger than or equeal to W_L2
	MACTYPE stream_buffer[STREAM_BUFFER_SIZE][ARRAY_W][PORT_K];
	#pragma HLS ARRAY_PARTITION variable=stream_buffer dim=2 complete
	#pragma HLS ARRAY_PARTITION variable=stream_buffer dim=3 complete
	for (unsigned int h = 0; h < H_L2; h++) { // FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
		#pragma HLS loop_tripcount min=2 max=2
		for (unsigned int wo = 0; wo < W_L2/ARRAY_W; wo++) {
			#pragma HLS loop_tripcount min=1 max=1
			for (unsigned int ko = 0; ko < K_L2/PORT_K; ko++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				for (unsigned int kwi = 0; kwi < PORT_K*ARRAY_W; kwi++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
					#pragma HLS unroll
					unsigned int global_khw = ((hmo*H_L2+h)*(W/ARRAY_W)*K/PORT_K + (wmo*(W_L2/ARRAY_W)+wo)*K/PORT_K + (kmo*K_L2/PORT_K+ko))*ARRAY_W*PORT_K + kwi;
					uint wi = kwi%ARRAY_W;
					uint pt = kwi/ARRAY_W;
					stream_buffer[ko][wi][pt] = conv_out[global_khw];
				}
			}
			for (unsigned int ko = 0; ko < K_L2/PORT_K; ko++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				unsigned int khw = (ko)*H_L2*(W_L2/ARRAY_W) + h*(W_L2/ARRAY_W) + wo;
				for (unsigned int kwi = 0; kwi < PORT_K*ARRAY_W; kwi++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
					#pragma HLS unroll
					unsigned int global_khw = ((hmo*H_L2+h)*(W/ARRAY_W)*K/PORT_K + (wmo*(W_L2/ARRAY_W)+wo)*K/PORT_K + (kmo*K_L2/PORT_K+ko))*ARRAY_W*PORT_K + kwi;
					uint wi = kwi%ARRAY_W;
					uint pt = kwi/ARRAY_W;
					conv_out[global_khw] = stream_buffer[ko][wi][pt] + output_l2[khw][pt][wi];
				}
			}
		}
	}
}
