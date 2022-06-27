MACTYPE add_elt(MACTYPE a, MACTYPE b)
{
	MACTYPE r;
	#pragma HLS BIND_OP variable=r op=add impl=fabric
	r = a + b;
	return r;
}

//weight stationary
void runSIMD_bitvec(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE (*data_l1)[PORT_NUM][ARRAY_C],
		short data_l1_bitvec[DATA_L1_SIZE][PORT_NUM][ARRAY_C/BLOCK_SIZE], short data_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE], short max_bitvec_length[PORT_NUM],
		short output_l1_bitvec[DATA_L1_SIZE][PORT_NUM][ARRAY_C/BLOCK_SIZE], short output_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE],
		MACTYPE (*output_l1_local)[PORT_NUM][ARRAY_K][ARRAY_C/BLOCK_SIZE], MACTYPE (*output_l1)[PORT_NUM][ARRAY_K][ARRAY_C/BLOCK_SIZE],
		int input_rows,
		int bubble_h, int bubble_w,
		uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S,
		bool isFirst) {

    /*for(int i=0;i<(TILESIZE_W/PORT_NUM)*TILESIZE_H;i++) {
        //#pragma HLS unroll
        #pragma HLS LOOP_TRIPCOUNT max=32 min=32
        for(int pt=0; pt<PORT_NUM; pt++) {
            //#pragma HLS pipeline
            #pragma HLS unroll
            for(int ki=0; ki<ARRAY_K;ki++) {
                #pragma HLS unroll
                for(int cib=0; cib<ARRAY_C/BLOCK_SIZE;cib++) {
                    #pragma HLS unroll
                    output_l1_local[i][pt][ki][cib] = 0;
                    output_l1[i][pt][ki][cib] = 0;
                }
             }
        }
    }*/
    for (int pt = 0; pt < PORT_NUM; pt++) {
        #pragma HLS unroll
        for(int cib=0;cib<ARRAY_C/BLOCK_SIZE;cib++) {
            #pragma HLS unroll
            output_l1_length[pt][cib] = data_l1_length[pt][cib];
        }
    }
	LOOP_R_INNER: for (int ri = 0; ri < TILESIZE_R; ri++) {
		#pragma HLS LOOP_TRIPCOUNT max=1 min=1
		LOOP_S_INNER: for (int si = 0; si < TILESIZE_S; si++) {
			#pragma HLS LOOP_TRIPCOUNT max=1 min=1
			//#pragma HLS loop_flatten
            int bitvec_pt[ARRAY_C/BLOCK_SIZE];
            int i[ARRAY_C/BLOCK_SIZE];
            #pragma HLS ARRAY_PARTITION variable=bitvec_pt dim=0 complete // Register
            #pragma HLS ARRAY_PARTITION variable=i dim=0 complete // Register
            for(int cib=0; cib<ARRAY_C/BLOCK_SIZE; cib++) {
                #pragma HLS unroll
                bitvec_pt[cib] = 0;
                i[cib] = 0;
            }
            for(int mi = 0; mi < max_bitvec_length[0]; mi++) {
//            for(int mi = 0; mi < 64+1; mi++) {
//                #pragma HLS unroll off
            //for(int bitvec_pt = 0; bitvec_pt < PORT_NUM; bitvec_pt++) {
            //    #pragma HLS unroll
//                for(int i = 0; i < DATA_L1_SIZE; i++) {
//                    if(i>=max_bitvec_length[bitvec_pt]) break;
/*                #pragma HLS DEPENDENCE variable=output_l1
                #pragma HLS DEPENDENCE variable=output_l1_local
                #pragma HLS DEPENDENCE variable=output_l1_bitvec
                #pragma HLS DEPENDENCE variable=data_l1_bitvec
                #pragma HLS DEPENDENCE variable=data_l1
                #pragma HLS DEPENDENCE variable=data_l1_length*/
                #pragma HLS pipeline II=1 //rewind
                #pragma HLS latency min=1 max=9 // SIMD implementation
                #pragma HLS LOOP_TRIPCOUNT min=1 max=25
                /*DPTYPE data_reg[ARRAY_K][ARRAY_C];
                MACTYPE output_reg[ARRAY_K][ARRAY_C];
                #pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
                #pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete  // Register
                */
                bool non_empty[ARRAY_C/BLOCK_SIZE];
                #pragma HLS ARRAY_PARTITION variable=non_empty dim=0 complete
                for(int cib=0; cib<ARRAY_C/BLOCK_SIZE; cib++) {
                    #pragma HLS unroll
                    if(bitvec_pt[cib]<PORT_NUM) {
                        non_empty[cib] = (data_l1_length[bitvec_pt[cib]][cib]!=0);
                    }
                    else {
                        non_empty[cib] = false;
                    }
                }
				LOOP_REDUCTION_C: for (int cib = 0; cib < ARRAY_C/BLOCK_SIZE; cib++) {
					#pragma HLS unroll
//					#pragma HLS DEPENDENCE variable=output_l1_local //WH is different each iteration
//					#pragma HLS DEPENDENCE variable=output_l1
					bool valid_input = (bitvec_pt[cib]<PORT_NUM && non_empty[cib]);
					int addr = 0;
					int pt = 0;
					if(valid_input) {
						addr = data_l1_bitvec[i[cib]][bitvec_pt[cib]][cib];
						pt = bitvec_pt[cib];
					}
					for (int ki = 0; ki < ARRAY_K; ki++) {
						#pragma HLS unroll
		                DPTYPE data_reg[BLOCK_SIZE];
		                MACTYPE output_reg[BLOCK_SIZE];
		                #pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
		                #pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete  // Register
						MACTYPE sum = 0;
						//#pragma HLS expression_balance
//#pragma HLS DEPENDENCE variable=data_l1
//#pragma HLS DEPENDENCE variable=weight_regfile
//#pragma HLS DEPENDENCE variable=output_l1
						LOOP_REDUCTION_BLOCK: for (int bl = 0; bl < BLOCK_SIZE; bl++) {
							#pragma HLS unroll
							uint ci = cib * BLOCK_SIZE + bl;
							/*data_reg[ki][ci] = data_l1[addr][pt][ci];
							output_reg[ki][ci] = data_reg[ki][ci] * weight_regfile[ki][ci];
							#pragma HLS BIND_OP variable=sum op=add impl=fabric
							sum += output_reg[ki][ci];*/
//							data_reg[bl] = data_l1[addr][pt][ci];
//							output_reg[bl] = data_reg[bl] * weight_regfile[ki][ci];
//							#pragma HLS BIND_OP variable=sum op=add impl=fabric
//							sum += output_reg[bl];

							data_reg[bl] = data_l1[addr][pt][ci];
							MACTYPE tmp;
							#pragma HLS BIND_OP variable=tmp op=mul impl=dsp
							tmp = data_reg[bl] * weight_regfile[ki][ci];
							output_reg[bl] = tmp;
							//output_reg[bl] = data_reg[bl] * weight_regfile[ki][ci];
						}

#if BLOCK_SIZE == 1
						sum = output_reg[0];
#elif BLOCK_SIZE == 2
						sum = add_elt(output_reg[0], output_reg[1]);
#elif BLOCK_SIZE == 4
						MACTYPE tmp_00 = add_elt(output_reg[0], output_reg[1]);
						MACTYPE tmp_01 = add_elt(output_reg[2], output_reg[3]);
						sum = add_elt(tmp_00, tmp_01);
#elif BLOCK_SIZE == 8
						MACTYPE tmp_00 = add_elt(output_reg[0], output_reg[1]);
						MACTYPE tmp_01 = add_elt(output_reg[2], output_reg[3]);
						MACTYPE tmp_02 = add_elt(output_reg[4], output_reg[5]);
						MACTYPE tmp_03 = add_elt(output_reg[6], output_reg[7]);
						MACTYPE tmp_10 = add_elt(tmp_00, tmp_01);
						MACTYPE tmp_11 = add_elt(tmp_02, tmp_03);
						sum = add_elt(tmp_10, tmp_11);
#elif BLOCK_SIZE == 16
						MACTYPE tmp_00 = add_elt(output_reg[0], output_reg[1]);
						MACTYPE tmp_01 = add_elt(output_reg[2], output_reg[3]);
						MACTYPE tmp_02 = add_elt(output_reg[4], output_reg[5]);
						MACTYPE tmp_03 = add_elt(output_reg[6], output_reg[7]);
						MACTYPE tmp_04 = add_elt(output_reg[8], output_reg[9]);
						MACTYPE tmp_05 = add_elt(output_reg[10], output_reg[11]);
						MACTYPE tmp_06 = add_elt(output_reg[12], output_reg[13]);
						MACTYPE tmp_07 = add_elt(output_reg[14], output_reg[15]);
						MACTYPE tmp_10 = add_elt(tmp_00, tmp_01);
						MACTYPE tmp_11 = add_elt(tmp_02, tmp_03);
						MACTYPE tmp_12 = add_elt(tmp_04, tmp_05);
						MACTYPE tmp_13 = add_elt(tmp_06, tmp_07);
						MACTYPE tmp_20 = add_elt(tmp_10, tmp_11);
						MACTYPE tmp_21 = add_elt(tmp_12, tmp_13);
						sum = add_elt(tmp_20, tmp_21);
#elif BLOCK_SIZE == 32
						MACTYPE tmp_00 = add_elt(output_reg[0], output_reg[1]);
						MACTYPE tmp_01 = add_elt(output_reg[2], output_reg[3]);
						MACTYPE tmp_02 = add_elt(output_reg[4], output_reg[5]);
						MACTYPE tmp_03 = add_elt(output_reg[6], output_reg[7]);
						MACTYPE tmp_04 = add_elt(output_reg[8], output_reg[9]);
						MACTYPE tmp_05 = add_elt(output_reg[10], output_reg[11]);
						MACTYPE tmp_06 = add_elt(output_reg[12], output_reg[13]);
						MACTYPE tmp_07 = add_elt(output_reg[14], output_reg[15]);
						MACTYPE tmp_08 = add_elt(output_reg[16], output_reg[17]);
						MACTYPE tmp_09 = add_elt(output_reg[18], output_reg[19]);
						MACTYPE tmp_0A = add_elt(output_reg[20], output_reg[21]);
						MACTYPE tmp_0B = add_elt(output_reg[22], output_reg[23]);
						MACTYPE tmp_0C = add_elt(output_reg[24], output_reg[25]);
						MACTYPE tmp_0D = add_elt(output_reg[26], output_reg[27]);
						MACTYPE tmp_0E = add_elt(output_reg[28], output_reg[29]);
						MACTYPE tmp_0F = add_elt(output_reg[30], output_reg[31]);
						MACTYPE tmp_10 = add_elt(tmp_00, tmp_01);
						MACTYPE tmp_11 = add_elt(tmp_02, tmp_03);
						MACTYPE tmp_12 = add_elt(tmp_04, tmp_05);
						MACTYPE tmp_13 = add_elt(tmp_06, tmp_07);
						MACTYPE tmp_14 = add_elt(tmp_08, tmp_09);
						MACTYPE tmp_15 = add_elt(tmp_0A, tmp_0B);
						MACTYPE tmp_16 = add_elt(tmp_0C, tmp_0D);
						MACTYPE tmp_17 = add_elt(tmp_0E, tmp_0F);
						MACTYPE tmp_20 = add_elt(tmp_10, tmp_11);
						MACTYPE tmp_21 = add_elt(tmp_12, tmp_13);
						MACTYPE tmp_22 = add_elt(tmp_14, tmp_15);
						MACTYPE tmp_23 = add_elt(tmp_16, tmp_17);
						MACTYPE tmp_30 = add_elt(tmp_20, tmp_21);
						MACTYPE tmp_31 = add_elt(tmp_22, tmp_23);
						sum = add_elt(tmp_30, tmp_31);
#else
	Unsupported BLOCK_SIZE
#endif

						if(valid_input) {
							output_l1[i[cib]][bitvec_pt[cib]][ki][cib] = sum;
							/*if(sum>4) {
								printf("\n?: %d %d %d %d\n",	data_l1[addr][pt][cib*BLOCK_SIZE+0],
										data_l1[addr][pt][cib*BLOCK_SIZE+1],
										data_l1[addr][pt][cib*BLOCK_SIZE+2],
										data_l1[addr][pt][cib*BLOCK_SIZE+3]);
							}*/
						}
					}
					if(valid_input) {
						output_l1_bitvec[i[cib]][bitvec_pt[cib]][cib] = addr;
					}
				}

                for(int cib=0; cib<ARRAY_C/BLOCK_SIZE; cib++) {
                    #pragma HLS unroll
                    if(bitvec_pt[cib]<PORT_NUM) {
                        if(i[cib]+1==data_l1_length[bitvec_pt[cib]][cib] || !non_empty[cib]) {
                            bitvec_pt[cib]++;
                            i[cib] = 0;
                        }
                        else {
                            i[cib]++;
                        }
                    }
                }
            }
		}
	}
}

//output stationary
void runSIMD_bitvec(
		DPTYPE weight_l1[WEIGHT_L1_SIZE][PORT_C][ARRAY_K][ARRAY_W/BLOCK_SIZE],
		DPTYPE data_l1[DATA_L1_SIZE][PORT_C][ARRAY_W],
		short data_l1_bitvec[DATA_L1_SIZE][PORT_C][ARRAY_W/BLOCK_SIZE],
		short data_l1_length[PORT_C][ARRAY_W/BLOCK_SIZE],
		short max_bitvec_length[PORT_C],
		MACTYPE output_regfile[ARRAY_W][ARRAY_K],
		uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S,
		bool isFirst) {

//#pragma HLS inline
	for (int wi = 0; wi < ARRAY_W; wi++) {
		#pragma HLS unroll
		for (int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			output_regfile[wi][ki] = 0;
		}
	}

	int bitvec_pt[ARRAY_W/BLOCK_SIZE];
	int i[ARRAY_W/BLOCK_SIZE];
	#pragma HLS ARRAY_PARTITION variable=bitvec_pt dim=0 complete // Register
	#pragma HLS ARRAY_PARTITION variable=i dim=0 complete // Register
	for(int wib=0; wib<ARRAY_W/BLOCK_SIZE; wib++) {
		#pragma HLS unroll
		bitvec_pt[wib] = 0;
		i[wib] = 0;
	}
        for(int mi = 0; mi < max_bitvec_length[0]; mi++) {
		#pragma HLS pipeline II=1
                #pragma HLS latency min=1 max=3 // SIMD implementation
                #pragma HLS LOOP_TRIPCOUNT min=8 max=8
                bool non_empty[ARRAY_W/BLOCK_SIZE];
                #pragma HLS ARRAY_PARTITION variable=non_empty dim=0 complete
                for(int wib=0; wib<ARRAY_W/BLOCK_SIZE; wib++) {
                    #pragma HLS unroll
                    if(bitvec_pt[wib]<PORT_C) {
                        non_empty[wib] = (data_l1_length[bitvec_pt[wib]][wib]!=0);
                    }
                    else {
                        non_empty[wib] = false;
                    }
                }
		LOOP_CORE_W: for (int wib = 0; wib < ARRAY_W/BLOCK_SIZE; wib++) {
			#pragma HLS unroll
			bool valid_input = (bitvec_pt[wib]<PORT_C && non_empty[wib]);
			int addr = 0;
			int pt = 0;
			if(valid_input) {
				addr = data_l1_bitvec[i[wib]][bitvec_pt[wib]][wib];
				pt = bitvec_pt[wib];
			}
			for (int ki = 0; ki < ARRAY_K; ki++) {
				#pragma HLS unroll
		                DPTYPE data_reg[BLOCK_SIZE];
		                //DPTYPE weight_reg[BLOCK_SIZE];
		                #pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
		                //#pragma HLS ARRAY_PARTITION variable=weight_reg dim=0 complete // Register
				DPTYPE weight_ = weight_l1[addr][pt][ki][wib];
				LOOP_CORE_BLOCK: for (int bl = 0; bl < BLOCK_SIZE; bl++) {
					#pragma HLS unroll
					uint wi = wib * BLOCK_SIZE + bl;
					data_reg[bl] = data_l1[addr][pt][wi];
					//weight_reg[bl] = weight_;
					MACTYPE tmp;
					#pragma HLS BIND_OP variable=tmp op=mul impl=dsp
					tmp = data_reg[bl] * weight_; //weight_reg[bl];
					if(valid_input) {
						output_regfile[wi][ki] += tmp;
						//if(data_reg[bl]==0) printf("?? %d %d %d\n", addr, pt, wi);
					}
				}
			}
		}

		for(int wib=0; wib<ARRAY_W/BLOCK_SIZE; wib++) {
			#pragma HLS unroll
			if(bitvec_pt[wib]<PORT_C) {
				if(i[wib]+1==data_l1_length[bitvec_pt[wib]][wib] || !non_empty[wib]) {
					bitvec_pt[wib]++;
					i[wib] = 0;
				}
				else {
					i[wib]++;
				}
			}
		}
	}
}


