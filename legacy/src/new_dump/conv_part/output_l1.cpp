/*
 * Cache output from L1 to L2
 * for weight stationary
 */
void runOutputL1toL2_K(MACTYPE (*output_l1)[PORT_NUM][ARRAY_K][ARRAY_C/BLOCK_SIZE], MACTYPE (*output_l2)[PORT_NUM][ARRAY_K], MACTYPE (*output_l2_reduction)[PORT_NUM][ARRAY_K],
 short output_l1_bitvec[DATA_L1_SIZE][PORT_NUM][ARRAY_C/BLOCK_SIZE], short output_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE],
		uint TILESIZE_H, uint TILESIZE_W, uint ko, uint ho, uint wo, uint W, uint H, bool isFirst) {
	int i[PORT_NUM][ARRAY_C/BLOCK_SIZE];
	#pragma HLS ARRAY_PARTITION variable=i dim=0 complete // Register
	for (int pt = 0; pt < PORT_NUM; pt++) {
		#pragma HLS unroll
		for(int cib=0;cib<ARRAY_C/BLOCK_SIZE;cib++) {
			#pragma HLS unroll
			i[pt][cib] = 0;
		}
	}
	for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=8 max=8
		for (int wi = 0; wi < TILESIZE_W/PORT_NUM; wi++) {
			#pragma HLS loop_tripcount min=1 max=1
			#pragma HLS DEPENDENCE variable=output_l2
			#pragma HLS DEPENDENCE variable=output_l2_reduction
			int h = (ho * TILESIZE_H + hi);
			int w = (wo * TILESIZE_W/PORT_NUM + wi);
			uint out_ptr = ko * H * (W/PORT_NUM) + h * (W/PORT_NUM) + w;
			int addr = (hi * TILESIZE_W/PORT_NUM + wi);
			for (int pt = 0; pt < PORT_NUM; pt++) {
				#pragma HLS unroll
				MACTYPE output[ARRAY_K] = {0};
				#pragma HLS ARRAY_PARTITION variable=output dim=0 complete // Register
				for(int cib=0;cib<ARRAY_C/BLOCK_SIZE;cib++) {
					#pragma HLS unroll
					if(i[pt][cib]<output_l1_length[pt][cib] && output_l1_bitvec[i[pt][cib]][pt][cib] == addr) {
						for (int ki = 0; ki < ARRAY_K; ki++) { // place unroll to inner-most
							#pragma HLS unroll
							output[ki] += output_l1[i[pt][cib]][pt][ki][cib];
						}
						i[pt][cib]++;
					}
				}
				for (int ki = 0; ki < ARRAY_K; ki++) {
					#pragma HLS unroll
					if(isFirst)
						output_l2_reduction[out_ptr][pt][ki] = output[ki];
					else
						output_l2_reduction[out_ptr][pt][ki] += output[ki];
					output_l2[out_ptr][pt][ki] = output_l2_reduction[out_ptr][pt][ki];
				}
			}
		}
	}
}

/*
 * Cache output from Reg to L2
 * for output stationary
 */
void runOutputRegtoL2(MACTYPE output_regfile[ARRAY_W][ARRAY_K], MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_K][ARRAY_W],
		uint W_L2, uint H_L2,
		uint ko, uint ho, uint wo, bool isFirst){
	uint c0 = H_L2*(W_L2/ARRAY_W);
	for(int kip=0; kip<ARRAY_K/PORT_K; kip++) {
		#pragma HLS pipeline
                #pragma HLS latency min=3 max=4 // SIMD implementation
		for(int pt=0; pt<PORT_K; pt++) {
			#pragma HLS unroll
			#pragma HLS DEPENDENCE variable=output_l2
			for(int wi=0; wi<ARRAY_W; wi++) {
				#pragma HLS unroll
				int ki = kip*PORT_K + pt;
				int l2_ptr = (ko*(ARRAY_K/PORT_K) + kip)*H_L2*(W_L2/ARRAY_W) + ho*(W_L2/ARRAY_W) + wo;
				MACTYPE sum;
				if(isFirst) sum = 0;
				else sum = output_l2[l2_ptr][pt][wi];
				output_l2[l2_ptr][pt][wi] = sum + output_regfile[wi][ki];
			}
		}
	}
}


