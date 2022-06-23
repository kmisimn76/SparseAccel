
/*
 * Cache Weight from DRAM to L2
 * for weight stationary
 */
void weight_dram_read(DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE], DPTYPE* weight_in,
						uint kmo, uint cmo, uint rmo, uint smo,
						uint K_L2, uint C_L2, uint R_L2, uint S_L2,
						uint L2_TILENUM_K, uint L2_TILENUM_C, uint L2_TILENUM_R, uint L2_TILENUM_S)
{
	for (unsigned int ko = 0; ko < (K_L2 / VEC_SIZE)*C_L2*R_L2*S_L2; ko++) { //burst read
		#pragma HLS loop_tripcount min=36 max=36
		#pragma HLS pipeline
		for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			#pragma HLS unroll
			unsigned int global_kcrs = ((kmo*(L2_TILENUM_C)*(L2_TILENUM_R)*(L2_TILENUM_S)+cmo*(L2_TILENUM_R)*(L2_TILENUM_S)+rmo*(L2_TILENUM_S)+smo)
					*(K_L2/VEC_SIZE)*C_L2*R_L2*S_L2 + ko)*VEC_SIZE + ki; //burst read
			unsigned int kcrs = ko;
			unsigned int v = ki;
			weight_l2[ki][kcrs] = weight_in[global_kcrs];
		}
	}
}

/*
 * Cache Weight from DRAM to L2
 * for output stationary
 */
void weight_dram_read(DPTYPE weight_l2[WEIGHT_L2_SIZE][PORT_C][ARRAY_K], DPTYPE* weight_in,
						uint kmo, uint cmo, uint rmo, uint smo,
						uint K_L2, uint C_L2, uint R_L2, uint S_L2,
						uint L2_TILENUM_K, uint L2_TILENUM_C, uint L2_TILENUM_R, uint L2_TILENUM_S)
{
	for (unsigned int krsc = 0; krsc < (K_L2 / ARRAY_K)*R_L2*S_L2*C_L2; krsc++) { //burst read
		#pragma HLS pipeline
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			#pragma HLS unroll
			unsigned int global_kcrs = ((kmo*(L2_TILENUM_C)*(L2_TILENUM_R)*(L2_TILENUM_S)+rmo*(L2_TILENUM_S)*(L2_TILENUM_C)+smo*(L2_TILENUM_C) + cmo)
					*(K_L2/ARRAY_K)*C_L2*R_L2*S_L2 + 
					krsc)*ARRAY_K + ki; //burst read
			unsigned int local_kcrs = krsc/PORT_C;
			unsigned int pt = krsc%PORT_C;
			weight_l2[local_kcrs][pt][ki] = weight_in[global_kcrs];
		}
	}
}


