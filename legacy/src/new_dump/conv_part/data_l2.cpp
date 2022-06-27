
/*
 * Cache Data from DRAM to L2
 * for weight stationary
 */
void input_dram_read_C(DPTYPE data_l2[DATA_L2_SIZE][PORT_NUM][ARRAY_C], DPTYPE* data_in,
						uint cmo, uint hmo, uint wmo,
						uint C_L2, uint H_L2, uint W_L2, uint H_in_L2, uint W_in_L2, uint WH_in)
{
		INPUT_DRAM_READ: 
		for (unsigned int co = 0; co < C_L2/VEC_SIZE; co++) {
			#pragma HLS loop_tripcount min=1 max=1
			for(unsigned int h = 0; h < H_in_L2; h++) {
				#pragma HLS loop_tripcount min=9 max=9
				for(unsigned int w = 0; w < W_in_L2; w++) {
					#pragma HLS loop_tripcount min=9 max=9
					#pragma HLS pipeline
					unsigned int chw = co*H_in_L2*(W_in_L2/PORT_NUM+1) + h*(W_in_L2/PORT_NUM+1) + (w/PORT_NUM);
					unsigned int pt = w%PORT_NUM;
					for(unsigned int ci = 0; ci < VEC_SIZE; ci++) {
						#pragma HLS unroll
						unsigned int global_chw = ((cmo*(C_L2/VEC_SIZE)+co)*WH_in*WH_in + (hmo*H_L2+h)*WH_in + (wmo*W_L2+w))*VEC_SIZE + ci;
						unsigned int v = ci;
						data_l2[chw][pt][ci] = data_in[global_chw];
					}
				}
			}
		}
}

/*
 * Cache Data from DRAM to L2
 * for output stationary
 */
void input_dram_read_W(DPTYPE data_l2[DATA_L2_SIZE][PORT_C][ARRAY_W], DPTYPE* data_in,
						uint cmo, uint hmo, uint wmo,
						uint C_L2, uint H_L2, uint W_L2, uint H_in_L2, uint W_in_L2, uint H_in, uint W_in
						, uint C)
{
	for(unsigned int h = 0; h < H_in_L2; h++) {
		#pragma HLS loop_tripcount min=9 max=9
		for(unsigned int wo = 0; wo < CEIL(W_in_L2,ARRAY_W); wo++) {
			#pragma HLS loop_tripcount min=9 max=9
			for (unsigned int co = 0; co < C_L2/PORT_C; co++) {
				#pragma HLS loop_tripcount min=1 max=1
				#pragma HLS pipeline
				uint chw = (co)*H_in_L2*(CEIL(W_in_L2,ARRAY_W)) + h*(CEIL(W_in_L2,ARRAY_W)) + wo;
				#pragma HLS DEPENDENCE variable=data_l2
					for(unsigned int cwi = 0; cwi < PORT_C*ARRAY_W; cwi++) {
						#pragma HLS unroll
						uint global_chw = ((hmo*H_L2+h)*CEIL(W_in,ARRAY_W)*C/PORT_C + (wmo*(W_L2/ARRAY_W)+wo)*C/PORT_C + (cmo*C_L2/PORT_C+co))*ARRAY_W*PORT_C + cwi;
						uint wi = cwi%ARRAY_W;
						uint pt = cwi/ARRAY_W;
						data_l2[chw][pt][wi] = data_in[global_chw];
				}
			}
		}
	}
}
