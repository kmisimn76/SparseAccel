
/*
 * Cache Data from L2 to L1
 * for weight stationary
 */
void cache_DataL2toL1_compress_C(DPTYPE (*data_l1)[PORT_NUM][ARRAY_C], short (*data_l1_bitvec)[PORT_NUM][ARRAY_C/BLOCK_SIZE], short data_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE], short max_bitvec_length[PORT_NUM],
		DPTYPE (*data_l2)[PORT_NUM][ARRAY_C], uint TILESIZE_H,
		uint TILESIZE_W, uint co, uint ho, uint wo, uint r, uint s, uint W_in, uint H_in) {
	int sp = s/PORT_NUM;
	int spr = s%PORT_NUM;
	short counter[PORT_NUM][ARRAY_C/BLOCK_SIZE];
	#pragma HLS ARRAY_PARTITION variable=counter dim=0 complete // Register
	for(int pt=0;pt<PORT_NUM;pt++) {
		#pragma HLS unroll
		for(int cib=0;cib<ARRAY_C/BLOCK_SIZE;cib++) {
			#pragma HLS unroll
			counter[pt][cib] = 0;
		}
	}
	for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=8 max=8
		for (int wi = 0; wi < TILESIZE_W/PORT_NUM; wi++) {
			#pragma HLS loop_tripcount min=1 max=1
			for (int pt = 0; pt < PORT_NUM; pt++) {
				#pragma HLS unroll
				#pragma HLS DEPENDENCE variable=data_l2
				int h = (ho * TILESIZE_H + hi) + r;
				uint pt_r = (pt+s)%PORT_NUM; //dependency bottleneck?
				DPTYPE l2_data[ARRAY_C];
				#pragma HLS ARRAY_PARTITION variable=l2_data dim=0 complete // Register


				for (int ci = 0; ci < ARRAY_C; ci++) { // place unroll to inner-most
					#pragma HLS unroll
					if(pt<PORT_NUM-spr) {
						int w = (wo * TILESIZE_W/PORT_NUM + wi) + sp; //(pt+s)/PORT_NUM;
						uint datal2_ptr = co * H_in * (W_in/PORT_NUM+1) + h * (W_in/PORT_NUM+1) + w; // error? -> W_in can't be dividied by PORTNUM

						l2_data[ci] = data_l2[datal2_ptr][pt_r][ci];
					}
					else {
						int w = (wo * TILESIZE_W/PORT_NUM + wi) + sp + 1; //(pt+s)/PORT_NUM;
						uint datal2_ptr = co * H_in * (W_in/PORT_NUM+1) + h * (W_in/PORT_NUM+1) + w; // error? -> W_in can't be dividied by PORTNUM

						l2_data[ci] = data_l2[datal2_ptr][pt_r][ci];
					}
				}
				for (int cib = 0; cib < ARRAY_C/BLOCK_SIZE; cib++) { // place unroll to inner-most
					#pragma HLS unroll
					bool non_zero_check = false;
					for (int bl = 0; bl < BLOCK_SIZE; bl++) { // place unroll to inner-most
						#pragma HLS unroll
						#pragma HLS DEPENDENCE variable=non_zero_check

						int ci = cib*BLOCK_SIZE + bl;
						data_l1[hi * TILESIZE_W/PORT_NUM + wi][pt][ci] =
							l2_data[ci];
						if(data_l1[hi * TILESIZE_W/PORT_NUM + wi][pt][ci] != 0) {
							non_zero_check = true;
						}
					}
					if(non_zero_check == true) {
						data_l1_bitvec[counter[pt][cib]][pt][cib] = (hi * TILESIZE_W/PORT_NUM + wi); // bottleneck //pt is stored in bitvec_ptr
						counter[pt][cib]++;
					}
				}
			}
		}
	}

	for (int cib = 0; cib < ARRAY_C/BLOCK_SIZE; cib++) { // place unroll to inner-most
		#pragma HLS unroll
		for (int pt = 0; pt < PORT_NUM; pt++) {
			#pragma HLS unroll
			data_l1_length[pt][cib] = counter[pt][cib];
		}
	}
	short max_length = 0;
	for (int cib = 0; cib < ARRAY_C/BLOCK_SIZE; cib++) {
		#pragma HLS unroll
		short sum = 0;
		for (int pt = 0; pt < PORT_NUM; pt++) {
			#pragma HLS unroll
			sum += (counter[pt][cib]==0)?(1):(counter[pt][cib]);
		}
		if(max_length < sum) max_length = sum;
	}
	max_bitvec_length[0] = max_length;
}


/*
 * Cache Data from L2 to L1
 * for output stationary
 */
void runDataL2toL1_compress_W(
		DPTYPE data_l1[DATA_L1_SIZE][PORT_C][ARRAY_W],	short data_l1_bitvec[DATA_L1_SIZE][PORT_C][ARRAY_W/BLOCK_SIZE], short data_l1_length[PORT_C][ARRAY_W/BLOCK_SIZE], short max_bitvec_length[PORT_C],
		DPTYPE data_l2[DATA_L2_SIZE][PORT_C][ARRAY_W],
		uint C_L1, uint W_in, uint H_in,
		uint co, uint ho, uint wo, uint r, uint s){
	const int sp = s/PORT_C;
	const int spr = s%PORT_C;
	short counter[PORT_C][ARRAY_W/BLOCK_SIZE];
	#pragma HLS ARRAY_PARTITION variable=counter dim=0 complete // Register
	for(int pt=0;pt<PORT_C;pt++) {
		#pragma HLS unroll
		for(int wib=0;wib<ARRAY_W/BLOCK_SIZE;wib++) {
			#pragma HLS unroll
			counter[pt][wib] = 0;
		}
	}
	for (int cip = 0; cip < C_L1/PORT_C; cip++) {
		#pragma HLS loop_tripcount min=4 max=4
		#pragma HLS latency min=3 max=4 // SIMD implementation
		#pragma HLS pipeline
		for (int pt = 0; pt < PORT_C; pt++) {
			#pragma HLS unroll
			#pragma HLS DEPENDENCE variable=data_l2
			#pragma HLS DEPENDENCE variable=data_l1
			bool non_zero_check = false;
			for (int wi = 0; wi < ARRAY_W; wi++) { // place unroll to inner-most
				#pragma HLS unroll
				#pragma HLS DEPENDENCE variable=non_zero_check
				int wib = wi/BLOCK_SIZE;
				int bl = wi%BLOCK_SIZE;
				int ci = cip*PORT_C + pt;
				int l1_ptr = cip;
				int c = co*(C_L1/PORT_C) + cip;
				int h = (ho) /* *(TILESIZE_H=1) */ + r;
				uint w_add = ((wi+s)>=ARRAY_W)?(1):(0);
				uint l2_ptr = c * H_in * CEIL(W_in,ARRAY_W) + h * CEIL(W_in,ARRAY_W) + wo;
				switch(s%ARRAY_W) {
					case 0: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+0)%ARRAY_W]; break;
#if ARRAY_W >= 2
					case 1: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+1)%ARRAY_W]; break;
#endif
#if ARRAY_W >= 4
					case 2: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+2)%ARRAY_W]; break;	
					case 3: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+3)%ARRAY_W]; break;
#endif
#if ARRAY_W >= 8
					case 4: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+4)%ARRAY_W]; break;
					case 5: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+5)%ARRAY_W]; break;
					case 6: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+6)%ARRAY_W]; break;
					case 7: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+7)%ARRAY_W]; break;
#endif
#if ARRAY_W >= 16
					case 8: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+8)%ARRAY_W]; break;
					case 9: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+9)%ARRAY_W]; break;
					case 10: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+10)%ARRAY_W]; break;
					case 11: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+11)%ARRAY_W]; break;
					case 12: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+12)%ARRAY_W]; break;
					case 13: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+13)%ARRAY_W]; break;
					case 14: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+14)%ARRAY_W]; break;
					case 15: data_l1[l1_ptr][pt][wi] = data_l2[l2_ptr+w_add][pt][(wi+15)%ARRAY_W]; break;
#endif
#if ARRAY_W >= 32
						 UNSUPPORTED
#endif
				}

				if(data_l1[l1_ptr][pt][wi] != 0) {
					non_zero_check = true;
				}
				if(wi%BLOCK_SIZE == BLOCK_SIZE-1) {
					if(non_zero_check == true) {
						data_l1_bitvec[counter[pt][wib]][pt][wib] = cip; //(hi * TILESIZE_W/PORT_NUM + wi); // bottleneck //pt is stored in bitvec_ptr
						counter[pt][wib]++;
					}
					non_zero_check = false;
				}
			}
		}
	} // Loop cip

	for (int wib = 0; wib < ARRAY_W/BLOCK_SIZE; wib++) { // place unroll to inner-most
		#pragma HLS unroll
		for (int pt = 0; pt < PORT_C; pt++) {
			#pragma HLS unroll
			data_l1_length[pt][wib] = counter[pt][wib];
		}
	}
	short max_length = 0;
	for (int wib = 0; wib < ARRAY_W/BLOCK_SIZE; wib++) {
		#pragma HLS unroll
		short sum = 0;
		for (int pt = 0; pt < PORT_C; pt++) {
			#pragma HLS unroll
			sum += (counter[pt][wib]==0)?(1):(counter[pt][wib]);
		}
		if(max_length < sum) max_length = sum;
	}
	max_bitvec_length[0] = max_length;
}
