
/*
 * Cache weight from L2 to Reg
 * for weight stationary
 */
void runWeight2Reg(DPTYPE weight_regfile[ARRAY_K][ARRAY_C], DPTYPE weight_l2[ARRAY_C][WEIGHT_L2_SIZE], const uint C,
		const uint R, const uint S, const uint ko, const uint co, const uint r, const uint s) {
	for (int ci = 0; ci < ARRAY_C; ci++) {
		#pragma HLS unroll
			for (int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			int k = (ko * ARRAY_K + ki);
			int c = (co * ARRAY_C + ci);
			weight_regfile[ki][ci] = weight_l2[ki][ko * C * R
					* S + c * R * S + r * S + s];
		}
	}
}

/*
 * Cache Weight from L2 to L1
 * for output stationary
 */
void runWeightL2toL1_K(DPTYPE weight_l1[WEIGHT_L1_SIZE][PORT_C][ARRAY_K][ARRAY_W/BLOCK_SIZE], DPTYPE weight_l2[WEIGHT_L2_SIZE][PORT_C][ARRAY_K],
		const uint C_L2, const uint R_L2, const uint S_L2, const uint C_L1,
		const uint ko, const uint co, const uint r, const uint s){
	uint c0 = R_L2*S_L2;
	for (int cip = 0; cip < C_L1/PORT_C; cip++) {
		#pragma HLS pipeline
		#pragma HLS loop_tripcount min=4 max=4
                #pragma HLS latency min=3 max=4
		for (int pt = 0; pt < PORT_C; pt++) {
			#pragma HLS unroll
			for (int ki = 0; ki < ARRAY_K; ki++) {
				#pragma HLS unroll
				int k = (ko * ARRAY_K + ki);
				int c = (co * C_L1/PORT_C + cip);
				int l2_ptr = ko*(C_L2/PORT_C)*R_L2*S_L2 + r*S_L2*(C_L2/PORT_C) + s*(C_L2/PORT_C) + c;
				DPTYPE wt_data = weight_l2[l2_ptr][pt][ki];
				for (int bl = 0; bl < ARRAY_W/BLOCK_SIZE; bl++) {
				#pragma HLS unroll
					weight_l1[cip][pt][ki][bl] = wt_data;
				}
			}
		}
	}
}


