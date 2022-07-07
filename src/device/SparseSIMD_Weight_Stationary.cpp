
#include "Convolution.h"

#define INPUT_SPARSE
#define SIMD

// using macro in PRAGMA
#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)

//#define   BIAS_DRAM_DEPTH 1280
//#define WEIGHT_DRAM_DEPTH 23040
//#define   DATA_DRAM_DEPTH 20480
//#define OUTPUT_DRAM_DEPTH 15680
#ifndef WEIGHT_L2_SIZE
 #define WEIGHT_L2_SIZE 2304
#endif
#ifndef	  DATA_L2_SIZE
 #define   DATA_L2_SIZE (2304/PORT_NUM) //2048//180 //256 //2048 / PORT_NUM + a
#endif
#ifndef OUTPUT_L2_SIZE
 #define OUTPUT_L2_SIZE (1600/PORT_NUM) //1568//98 //196 //1568 / PORT_NUM
#endif
//#define   DATA_L2_SIZE 817216
//#define WEIGHT_L2_SIZE 589824
//#define OUTPUT_L2_SIZE 802816
#define WEIGHT_L1_SIZE -1
#define   BIAS_L2_SIZE 128
#define   DATA_L1_SIZE (288/PORT_NUM) //256//32 //256/PORT //196 //49
#define OUTPUT_L1_SIZE (288/PORT_NUM) //256//32 //256/PORT //196 //49
//#define OUTPUT_L1_SIZE 64


#ifndef XILINX
extern "C" {
#endif
//void runWeight2Reg(DPTYPE weight_regfile[ARRAY_K][ARRAY_C], DPTYPE (*weight_l2)[ARRAY_C], const uint C,
void runWeight2Reg(DPTYPE weight_regfile[ARRAY_K][ARRAY_C], DPTYPE weight_l2[ARRAY_C][WEIGHT_L2_SIZE], const uint C,
		const uint R, const uint S, const uint ko, const uint co, const uint r, const uint s) {
	for (int ci = 0; ci < ARRAY_C; ci++) {
		#pragma HLS unroll
			for (int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			//#pragma HLS pipeline //must be pipelined for dataflow, (and ARRAY_K & ARRAY_C may be small) ..?
			int k = (ko * ARRAY_K + ki);
			int c = (co * ARRAY_C + ci);
			//weight_regfile[ki][ci] = weight_l2[ko * C * R
			//		* S + c * R * S + r * S + s][ki];
			weight_regfile[ki][ci] = weight_l2[ki][ko * C * R
					* S + c * R * S + r * S + s];
		}
	}
}
/*
void runDataL2toL1(DPTYPE (*data_l1)[ARRAY_C], DPTYPE (*data_l2)[ARRAY_C], uint TILESIZE_H,
		uint TILESIZE_W, uint co, uint ho, uint wo, uint r, uint s, uint W_in, uint H_in) {
	LOOP_L2_H_IN: for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=7 max=7
		LOOP_L2_W_IN: for (int wi = 0; wi < TILESIZE_W; wi++) {
			#pragma HLS loop_tripcount min=7 max=7
			for (int ci = 0; ci < ARRAY_C; ci++) { // place unroll to inner-most
				#pragma HLS unroll
				int c = (co * ARRAY_C + ci);
				int h = (ho * TILESIZE_H + hi) + r;
				int w = (wo * TILESIZE_W + wi) + s;
				data_l1[hi * TILESIZE_W + wi][ci] =
						data_l2[co * H_in * W_in + h * W_in + w][ci];
			}
		}
	}
}
*/
#ifdef INPUT_SPARSE
void runDataL2toL1_bitvec(DPTYPE (*data_l1)[PORT_NUM][ARRAY_C], short (*data_l1_bitvec)[PORT_NUM][ARRAY_C/BLOCK_SIZE], short data_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE], short max_bitvec_length[PORT_NUM],
        DPTYPE (*data_l2)[PORT_NUM][ARRAY_C], uint TILESIZE_H,
		uint TILESIZE_W, uint co, uint ho, uint wo, uint r, uint s, uint W_in, uint H_in) {
//#pragma HLS stable variable=r
//#pragma HLS stable variable=s
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
	LOOP_L2_H_IN: for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=8 max=8
		LOOP_L2_W_IN: for (int wi = 0; wi < TILESIZE_W/PORT_NUM; wi++) {
			#pragma HLS loop_tripcount min=1 max=1
//#pragma HLS DEPENDENCE variable=data_l2 intra
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
//#pragma HLS DEPENDENCE variable=data_l2 inter false
                    for (int bl = 0; bl < BLOCK_SIZE; bl++) { // place unroll to inner-most
                        #pragma HLS unroll
                        #pragma HLS DEPENDENCE variable=non_zero_check
			//#pragma HLS DEPENDENCE variable=data_l2 inter

                        int ci = cib*BLOCK_SIZE + bl;
                        //int w = (wo * TILESIZE_W/PORT_NUM + wi) + sp + ((PORT_NUM-spr <= pt)?(1):(0)); //(pt+s)/PORT_NUM; // II violation
                        data_l1[hi * TILESIZE_W/PORT_NUM + wi][pt][ci] =
                        		l2_data[ci];
                                //data_l2[co * H_in * W_in + h * W_in + w][pt_r][ci];
                        if(data_l1[hi * TILESIZE_W/PORT_NUM + wi][pt][ci] != 0) {
                            non_zero_check = true;
                        }
                    }
                    //if(ci%BLOCK_SIZE == BLOCK_SIZE-1) { //serialized?
                        if(non_zero_check == true) {
                            //data_l1_bitvec[counter[pt][ci/BLOCK_SIZE]][pt][ci/BLOCK_SIZE] = (hi * TILESIZE_W/PORT_NUM + wi)*PORT_NUM + pt; // bottleneck //pt is stored in bitvec_ptr
                            data_l1_bitvec[counter[pt][cib]][pt][cib] = (hi * TILESIZE_W/PORT_NUM + wi); // bottleneck //pt is stored in bitvec_ptr
                            counter[pt][cib]++;
                        }
                    //    non_zero_check=false;
                    //}
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
//    max_bitvec_length[0] = TILESIZE_W*TILESIZE_H;
/*#ifndef __SYNTHESIS__
    for(int wh=0;wh<TILESIZE_H*TILESIZE_W/PORT_NUM;wh++) {
        for(int pt=0;pt<PORT_NUM;pt++) {
            for(int ci=0;ci<ARRAY_C;ci++) {
                if(data_l1[wh][pt][ci] != 0) {
                    int cib = ci/BLOCK_SIZE;
                    int q;
                    for(q=0;q<data_l1_length[pt][cib];q++)
                        if(data_l1_bitvec[q][pt][cib] == wh) break;
                    if(q>=data_l1_length[pt][cib]) printf("Bitvec wrong: Naive test, not matched\n");
                }
            }
        }
    }
    {
	DPTYPE data_l1_test[DATA_L1_SIZE][PORT_NUM][ARRAY_C];
    for(int wh=0;wh<TILESIZE_H*TILESIZE_W/PORT_NUM;wh++)
        for(int pt=0;pt<PORT_NUM;pt++)
            for(int ci=0;ci<ARRAY_C;ci++)
                data_l1_test[wh][pt][ci] = (data_l1[wh][pt][ci]==0)?(0):(1);
    int bitvec_pt[ARRAY_C/BLOCK_SIZE] = {0};
    int i[ARRAY_C/BLOCK_SIZE] = {0};
    for(int mi=0;mi<max_bitvec_length[0];mi++) {
        bool non_empty[ARRAY_C/BLOCK_SIZE];
        for(int cib=0; cib<ARRAY_C/BLOCK_SIZE; cib++) {
            if(bitvec_pt[cib]<PORT_NUM) {
                non_empty[cib] = (data_l1_length[bitvec_pt[cib]][cib]!=0);
            }
            else {
                non_empty[cib] = false;
            }
        }
        for(int cib=0; cib<ARRAY_C/BLOCK_SIZE; cib++) {
            if(bitvec_pt[cib]<PORT_NUM && non_empty[cib]) {
                int addr = data_l1_bitvec[i[cib]][bitvec_pt[cib]][cib];
                int pt = bitvec_pt[cib];
                for(int ci=0;ci<BLOCK_SIZE;ci++)
                    data_l1_test[addr][pt][cib*BLOCK_SIZE+ci] = 0;
            }
        }
        for(int cib=0; cib<ARRAY_C/BLOCK_SIZE; cib++) {
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
    for(int cib=0; cib<ARRAY_C/BLOCK_SIZE; cib++) {
        printf("ln ");
        for(int pt=0;pt<PORT_NUM;pt++) {
            printf("%d ", data_l1_length[pt][cib]);
        }
        printf("\n");
    }
    printf("%d %d\n", bitvec_pt[0], bitvec_pt[1]);
    for(int wh=0;wh<TILESIZE_H*TILESIZE_W/PORT_NUM;wh++)
        for(int pt=0;pt<PORT_NUM;pt++)
            for(int ci=0;ci<ARRAY_C;ci++)
                if(data_l1_test[wh][pt][ci] != 0) printf("Bitvec wrong: real code test, not matched %d %d %d\n", wh, pt, ci);
    }
    //printf("end of input L1 to L2 bitvec\n");
#endif
*/
}
#endif


void runOutputL1toL2(MACTYPE (*output_l1)[PORT_NUM][ARRAY_K][ARRAY_C/BLOCK_SIZE], MACTYPE (*output_l2)[PORT_NUM][ARRAY_K], MACTYPE (*output_l2_reduction)[PORT_NUM][ARRAY_K],
 short output_l1_bitvec[DATA_L1_SIZE][PORT_NUM][ARRAY_C/BLOCK_SIZE], short output_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE],
		uint TILESIZE_H, uint TILESIZE_W, uint ko, uint ho, uint wo, uint W, uint H, bool isFirst) {
    //int l2_offset_base = ko*H*W + ho*TILESIZE_H*W + wo*TILE_SIZE_W;
    int i[PORT_NUM][ARRAY_C/BLOCK_SIZE];
    #pragma HLS ARRAY_PARTITION variable=i dim=0 complete // Register
    for (int pt = 0; pt < PORT_NUM; pt++) {
        #pragma HLS unroll
        for(int cib=0;cib<ARRAY_C/BLOCK_SIZE;cib++) {
            #pragma HLS unroll
            i[pt][cib] = 0;
        }
    }
	LOOP_L2_H: for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=8 max=8
		//int l2_h_offset = hi*TILSIZE_W;
		//int l1_h_offset = hi*W;
        //int l2_offset = l2_offset_base + l2_h_offset;
        //int l1_offset = l1_h_offset;
		LOOP_L2_W: for (int wi = 0; wi < TILESIZE_W/PORT_NUM; wi++) {
			#pragma HLS loop_tripcount min=1 max=1
#pragma HLS DEPENDENCE variable=output_l2
#pragma HLS DEPENDENCE variable=output_l2_reduction
            int h = (ho * TILESIZE_H + hi);
            int w = (wo * TILESIZE_W/PORT_NUM + wi);
            uint out_ptr = ko * H * (W/PORT_NUM) + h * (W/PORT_NUM) + w;
            int addr = (hi * TILESIZE_W/PORT_NUM + wi);
		    for (int pt = 0; pt < PORT_NUM; pt++) {
            #pragma HLS unroll
            //if(wi*PORT_NUM+pt >= TILESIZE_W) break;
            //#pragma HLS unroll skip_exit_check factor=2 // skip_exit_check is needed for reducing latency
            //#pragma HLS pipeline rewind
                //int k = (ko * ARRAY_K + ki);
                //MACTYPE output = output_l1[hi * TILESIZE_W/PORT_NUM + wi][pt][ki];
                MACTYPE output[ARRAY_K] = {0};
                #pragma HLS ARRAY_PARTITION variable=output dim=0 complete // Register
                for(int cib=0;cib<ARRAY_C/BLOCK_SIZE;cib++) {
                    #pragma HLS unroll
                    if(i[pt][cib]<output_l1_length[pt][cib] && output_l1_bitvec[i[pt][cib]][pt][cib] == addr) {
                        for (int ki = 0; ki < ARRAY_K; ki++) { // place unroll to inner-most
                            #pragma HLS unroll
                            output[ki] += output_l1[i[pt][cib]][pt][ki][cib];
                            //if(ko==0 && ki==0 && h==1 && w==0 && pt==0) printf("(%d)", output_l1[i[pt][cib]][pt][ki][cib]);
                        }
                        i[pt][cib]++;
                    }
                }
                for (int ki = 0; ki < ARRAY_K; ki++) {
                    #pragma HLS unroll
                    if(isFirst)
                    	//output_l2[out_ptr][pt][ki] = output[ki];
                        output_l2_reduction[out_ptr][pt][ki] = output[ki];
                    else
                    	//output_l2[out_ptr][pt][ki] = output[ki] + output_l2_reduction[out_ptr][pt][ki];
                        output_l2_reduction[out_ptr][pt][ki] += output[ki];
                    output_l2[out_ptr][pt][ki] = output_l2_reduction[out_ptr][pt][ki];
                    ////if(ko==0 && ki==0 && h==1 && w==0 && pt==0) printf("%d(%d) ", output_l2[ko * H * W + h * W + w][pt][ki], output[ki]);
                }
            }
		}
	}
    //printf("\n");
}

#ifdef INPUT_SPARSE
MACTYPE add_elt(MACTYPE a, MACTYPE b)
{
	MACTYPE r;
	#pragma HLS BIND_OP variable=r op=add impl=fabric
	r = a + b;
	return r;
}

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
#endif
#ifndef __SYNTHESIS__
//DPTYPE bias_l2[BIAS_L2_SIZE][ARRAY_K];
DPTYPE bias_l2[ARRAY_K][BIAS_L2_SIZE];
//DPTYPE weight_l2[WEIGHT_L2_SIZE][ARRAY_K];
DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE];
DPTYPE data_l2[DATA_L2_SIZE][PORT_NUM][ARRAY_C];
MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_NUM][ARRAY_K];
MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][PORT_NUM][ARRAY_K];
#endif


void weight_dram_read(DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE], DPTYPE* weight_in,
						uint kmo, uint cmo, uint rmo, uint smo,
						uint K_L2, uint C_L2, uint R_L2, uint S_L2,
						uint L2_TILENUM_K, uint L2_TILENUM_C, uint L2_TILENUM_R, uint L2_TILENUM_S)
{
		WEIGHT_DRAM_READ:
		/*for (unsigned int ko = 0; ko < K_L2 / ARRAY_K; ko++) {
			#pragma HLS	 loop_tripcount min=1 max=1
			for (unsigned int c = 0; c < C_L2; c++) {
				#pragma HLS loop_tripcount min=4 max=4
				for (unsigned int r = 0; r < R_L2; r++) {
					#pragma HLS loop_tripcount min=3 max=3
					for (unsigned int s = 0; s < S_L2; s++) {
						#pragma HLS loop_tripcount min=3 max=3*/
					for (unsigned int ko = 0; ko < (K_L2 / ARRAY_K)*C_L2*R_L2*S_L2; ko++) { //burst read
					#pragma HLS loop_tripcount min=36 max=36
						#pragma HLS pipeline
						for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
							#pragma HLS unroll
						//	unsigned int global_kcrs = ((kmo*(K_L2/ARRAY_K)+ko)*C*RS*RS + (cmo*C_L2+c)*RS*RS + (rmo*R_L2+r)*RS + (smo*S_L2 + s))*ARRAY_K + ki;
						//	unsigned int kcrs = ko*C_L2*R_L2*S_L2 + c*R_L2*S_L2 + r*S_L2 + s;
							unsigned int global_kcrs = ((kmo*(L2_TILENUM_C)*(L2_TILENUM_R)*(L2_TILENUM_S)+cmo*(L2_TILENUM_R)*(L2_TILENUM_S)+rmo*(L2_TILENUM_S)+smo)
															*(K_L2/ARRAY_K)*C_L2*R_L2*S_L2 + ko)*ARRAY_K + ki; //burst read
							unsigned int kcrs = ko;
							unsigned int v = ki;
							//weight_l2[kcrs][ki] = weight_in[global_kcrs];
							weight_l2[ki][kcrs] = weight_in[global_kcrs];
						}
					}
					/*}
				}
			}
		}*/
}

void input_dram_read(DPTYPE data_l2[DATA_L2_SIZE][PORT_NUM][ARRAY_C], DPTYPE* data_in,
						uint cmo, uint hmo, uint wmo,
						uint C_L2, uint H_L2, uint W_L2, uint H_in_L2, uint W_in_L2, uint H_in, uint W_in)
{
		INPUT_DRAM_READ: 
		for (unsigned int co = 0; co < C_L2/ARRAY_C; co++) {
			#pragma HLS loop_tripcount min=1 max=1
			for(unsigned int h = 0; h < H_in_L2; h++) {
				#pragma HLS loop_tripcount min=9 max=9
				for(unsigned int w = 0; w < W_in_L2; w++) {
					#pragma HLS loop_tripcount min=9 max=9
					#pragma HLS pipeline
					unsigned int chw = co*H_in_L2*(W_in_L2/PORT_NUM+1) + h*(W_in_L2/PORT_NUM+1) + (w/PORT_NUM);
					unsigned int pt = w%PORT_NUM;
					for(unsigned int ci = 0; ci < ARRAY_C; ci++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
						#pragma HLS unroll
						unsigned int global_chw = ((cmo*(C_L2/ARRAY_C)+co)*H_in*W_in + (hmo*H_L2+h)*W_in + (wmo*W_L2+w))*ARRAY_C + ci;
						unsigned int v = ci;
						data_l2[chw][pt][ci] = data_in[global_chw];
					}
				}
			}
		}
}
void output_dram_write(MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_NUM][ARRAY_K], MACTYPE* conv_out,
						uint kmo, uint hmo, uint wmo,
						uint K_L2, uint H_L2, uint W_L2, uint H, uint W)
{
//#define STREAM_BUFFER_WIDTH 4
#define STREAM_BUFFER_SIZE 32 // bigger than or equeal to W_L2
		MACTYPE stream_buffer[STREAM_BUFFER_SIZE][ARRAY_K];
		//MACTYPE stream_buffer[STREAM_BUFFER_WIDTH][STREAM_BUFFER_SIZE][ARRAY_K];
		//MACTYPE stream_result[STREAM_BUFFER_WIDTH][STREAM_BUFFER_SIZE][ARRAY_K];
		//#pragma HLS ARRAY_PARTITION variable=stream_buffer dim=3 complete
		//#pragma HLS ARRAY_PARTITION variable=stream_result dim=3 complete
		OUTPUT_DRAM_WRITE:
		for (unsigned int ko = 0; ko < (K_L2 / ARRAY_K); ko++) {
			#pragma HLS loop_tripcount min=1 max=1
			//for (unsigned int ho = 0; ho < H_L2/STREAM_BUFFER_WIDTH; ho++) { // FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
			for (unsigned int h = 0; h < H_L2; h++) { // FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
				#pragma HLS loop_tripcount min=2 max=2
				//for (unsigned int hi = 0; hi < STREAM_BUFFER_WIDTH; hi++) { // FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
				OUTPUT_DRAM_STREA_IN: for (unsigned int w = 0; w < W_L2; w++) {
					#pragma HLS loop_tripcount min=7 max=7
					#pragma HLS pipeline
					#pragma HLS DEPENDENCE variable=conv_out
					for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
						#pragma HLS unroll
						//unsigned int h = ho*STREAM_BUFFER_WIDTH + hi;
						unsigned int global_khw = ((kmo*(K_L2/ARRAY_K)+ko)*H*W + (hmo*H_L2+h)*W + (wmo*W_L2+w))*ARRAY_K + ki;
						//unsigned int v = ki;
						//stream_buffer[hi][w][ki] = conv_out[global_khw];
						stream_buffer[w][ki] = conv_out[global_khw];
					}
				}
				//}
				//for (unsigned int hi = 0; hi < STREAM_BUFFER_WIDTH; hi++) { // FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
				//#pragma HLS unroll
				OUTPUT_DRAM_STREA_OUT: for (unsigned int w = 0; w < W_L2; w++) {
					#pragma HLS loop_tripcount min=7 max=7
					#pragma HLS pipeline
					#pragma HLS DEPENDENCE variable=conv_out
					unsigned int khw = ko*H_L2*(W_L2/PORT_NUM) + h*(W_L2/PORT_NUM) + w/PORT_NUM;
		            unsigned int pt = w%PORT_NUM;
					for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
						#pragma HLS unroll
						//unsigned int h = ho*STREAM_BUFFER_WIDTH + hi;
						unsigned int global_khw = ((kmo*(K_L2/ARRAY_K)+ko)*H*W + (hmo*H_L2+h)*W + (wmo*W_L2+w))*ARRAY_K + ki;
						//unsigned int v = ki;
						//conv_out[global_khw] = stream_buffer[hi][w][ki] + output_l2[khw][pt][ki];
						conv_out[global_khw] = stream_buffer[w][ki] + output_l2[khw][pt][ki];
					}
				}
				//}
			}
		}
}

void Convolution( //SparseSIMD Output Stationary
	    uint K,
	    uint C,
	    uint H,
	    uint W,
	    uint H_in,
	    uint W_in,
	    uint R,
	    uint S,
		uint L2_TILENUM_K,///
		uint L2_TILENUM_C,
	    uint L2_TILENUM_W, // W Size of a tile
	    uint L2_TILENUM_H,
	    uint L2_TILENUM_R,
	    uint L2_TILENUM_S,
	    uint K_L2,
	    uint C_L2,
	    uint W_L2,
	    uint H_L2,
	    uint W_in_L2,
	    uint H_in_L2,
	    uint R_L2,
	    uint S_L2,
		uint L1_TILENUM_K,///
		uint L1_TILENUM_C,
	    uint L1_TILENUM_W, // W Size of a tile
	    uint L1_TILENUM_H,
	    uint L1_TILENUM_R,
	    uint L1_TILENUM_S,
	    uint K_L1,
	    uint C_L1,
	    uint W_L1,
	    uint H_L1,
	    uint W_in_L1,
	    uint H_in_L1,
	    uint R_L1,
	    uint S_L1,
	    uint TILESIZE_K, //??
	    uint TILESIZE_C, //??
	    uint TILESIZE_W, // W Size of a tile
	    uint TILESIZE_H,
	    uint TILESIZE_R, //must be 1
	    uint TILESIZE_S, //must be 1
		DPTYPE *bias_in,
		DPTYPE *weight_in,
		DPTYPE *data_in,
		MACTYPE *conv_out
		) {
		/*DO_PRAGMA(HLS INTERFACE m_axi port=bias_in offset=slave bundle=gmem0 depth=BIAS_DRAM_DEPTH)
		DO_PRAGMA(HLS INTERFACE m_axi port=weight_in offset=slave bundle=gmem1 depth=WEIGHT_DRAM_DEPTH)
		DO_PRAGMA(HLS INTERFACE m_axi port=data_in offset=slave bundle=gmem2 depth=DATA_DRAM_DEPTH)
		DO_PRAGMA(HLS INTERFACE m_axi port=conv_out offset=slave bundle=gmem3 depth=OUTPUT_DRAM_DEPTH)*/
		DO_PRAGMA(HLS INTERFACE m_axi port=bias_in offset=slave bundle=gmem0)
		DO_PRAGMA(HLS INTERFACE m_axi port=weight_in offset=slave bundle=gmem1)
		DO_PRAGMA(HLS INTERFACE m_axi port=data_in offset=slave bundle=gmem2)
		DO_PRAGMA(HLS INTERFACE m_axi port=conv_out offset=slave bundle=gmem3)
	//DO_PRAGMA(HLS INTERFACE ap_bus port=bias_in bundle=gmem0)
	//DO_PRAGMA(HLS INTERFACE ap_bus port=weight_in bundle=gmem1)
	//DO_PRAGMA(HLS INTERFACE ap_bus port=data_in bundle=gmem2)
	//DO_PRAGMA(HLS INTERFACE ap_bus port=conv_out bundle=gmem3)

	#pragma HLS expression_balance

#ifdef __SYNTHESIS__
//DPTYPE bias_l2[BIAS_L2_SIZE][ARRAY_K];
DPTYPE bias_l2[ARRAY_K][BIAS_L2_SIZE];
//DPTYPE weight_l2[WEIGHT_L2_SIZE][ARRAY_K];
DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE];
DPTYPE data_l2[DATA_L2_SIZE][PORT_NUM][ARRAY_C];
MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_NUM][ARRAY_K];
MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][PORT_NUM][ARRAY_K];
#endif

	//DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=1 complete)
	//DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=1 complete)
//	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=3 complete)
	DO_PRAGMA(HLS ARRAY_RESHAPE variable=data_l2 complete dim=3)
//	DO_PRAGMA(HLS ARRAY_RESHAPE variable=output_l2 complete dim=3)
//	DO_PRAGMA(HLS ARRAY_RESHAPE variable=output_l2_reduction complete dim=3)
////	DO_PRAGMA(HLS ARRAY_RESHAPE variable=output_l2 cycle factor=2 dim=3)
////	DO_PRAGMA(HLS ARRAY_RESHAPE variable=output_l2_reduction cycle factor=2 dim=3)
    #ifdef INPUT_SPARSE
//	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=2 complete)
	DO_PRAGMA(HLS ARRAY_RESHAPE variable=data_l2 complete dim=2)
//	DO_PRAGMA(HLS ARRAY_RESHAPE variable=output_l2 complete dim=2)
//	DO_PRAGMA(HLS ARRAY_RESHAPE variable=output_l2_reduction complete dim=2)
    #endif
#ifdef LUT_L2_OUTPUT
	#pragma HLS bind_storage variable=output_l2 type=RAM_2P impl=LUTRAM
	#pragma HLS bind_storage variable=output_l2_reduction type=RAM_2P impl=LUTRAM
#endif
#ifdef LUT_L2_INPUT
	#pragma HLS bind_storage variable=data_l2 type=RAM_2P impl=LUTRAM
#endif
#ifdef LUT_L2_WEIGHT
	#pragma HLS bind_storage variable=weight_l2 type=RAM_2P impl=LUTRAM
#endif

//#pragma HLS bind_storage variable=output_l2 type=RAM_2P impl=bram
//#pragma HLS bind_storage variable=output_l2_reduction type=RAM_2P impl=bram
	//#pragma HLS ARRAY_MAP variable=output_l2 instance=output_l2_unified horizontal
	//#pragma HLS ARRAY_MAP variable=output_l2_reduction instance=output_l2_unified horizontal

    printf("Conv Sysarr start\n");
	/*uint K = param.K;
	uint C = param.C;
	uint WH = param.WH;
	uint WH_in = param.WH_in;
	uint RS = param.RS;
	uint L2_TILENUM_K = param.L2_TILENUM_K; ///
	uint L2_TILENUM_C = param.L2_TILENUM_C;
	uint L2_TILENUM_W = param.L2_TILENUM_W;
	uint L2_TILENUM_H = param.L2_TILENUM_H;
	uint L2_TILENUM_R = param.L2_TILENUM_R;
	uint L2_TILENUM_S = param.L2_TILENUM_S;
	uint K_L2 = param.K_L2;
	uint C_L2 = param.C_L2;
	uint W_L2 = param.W_L2;
	uint H_L2 = param.H_L2;
	uint W_in_L2 = param.W_in_L2; // TILENUM_W + TILENUM_R/2. and don't need thinking about stride
	uint H_in_L2 = param.H_in_L2;
	uint R_L2 = param.R_L2;
	uint S_L2 = param.S_L2;
	uint L1_TILENUM_K = param.L1_TILENUM_K; ///
	uint L1_TILENUM_C = param.L1_TILENUM_C;
	uint L1_TILENUM_W = param.L1_TILENUM_W;
	uint L1_TILENUM_H = param.L1_TILENUM_H;
	uint L1_TILENUM_R = param.L1_TILENUM_R;
	uint L1_TILENUM_S = param.L1_TILENUM_S;
	uint K_L1 = param.K_L1;
	uint C_L1 = param.C_L1;
	uint W_L1 = param.W_L1;
	uint H_L1 = param.H_L1;
	uint W_in_L1 = param.W_in_L1; // TILESIZE_W + TILESIZE_R/2. and don't need thinking about stride
	uint H_in_L1 = param.H_in_L1;
	uint R_L1 = param.R_L1;
	uint S_L1 = param.S_L1;
	uint TILESIZE_W =param.TILESIZE_W; ////
	uint TILESIZE_H =param.TILESIZE_H;
	uint TILESIZE_R =param.TILESIZE_R; //must be 1
	uint TILESIZE_S =param.TILESIZE_S; //must be 1
	*/
    printf("Args: ");
    printf("%u,%u,%u,%u,%u,||,", K, C, W, W_in, R);
    printf("%d,%d,%d,%d,%d,%d,||,", L2_TILENUM_K, L2_TILENUM_C, L2_TILENUM_W, L2_TILENUM_H, L2_TILENUM_R, L2_TILENUM_S);
    printf("%d,%d,%d,%d,%d,%d,%d,%d,||,", K_L2, C_L2, W_L2, H_L2, W_in_L2, H_in_L2, R_L2, S_L2);
    printf("%d,%d,%d,%d,%d,%d,||,", L1_TILENUM_K, L1_TILENUM_C, L1_TILENUM_W, L1_TILENUM_H, L1_TILENUM_R, L1_TILENUM_S);
    printf("%d,%d,%d,%d,%d,%d,%d,%d,||,", K_L1, C_L1, W_L1, H_L1, W_in_L1, H_in_L1, R_L1, S_L1);
    printf("%d,%d,%d,%d \n", TILESIZE_W, TILESIZE_H, TILESIZE_R, TILESIZE_S);

	const uint input_rows = TILESIZE_H * TILESIZE_W + (ARRAY_K - 1) + (ARRAY_C - 1); // inner loop with sysarr bubble
	const uint bubble = (ARRAY_K - 1) + (ARRAY_C - 1);
	const uint bubble_h = 0; //bubble / TILESIZE_W; //not be used
	const uint bubble_w = 0; //bubble % TILESIZE_W; //not be used


	BIAS_DRAM_READ: for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			#pragma HLS unroll
			unsigned int global_k = (ko)*ARRAY_K + ki;
			unsigned int v = ki;
			//bias_l2[ko][ki] = bias_in[global_k];
			bias_l2[ki][ko] = bias_in[global_k];
		}
	}
	BIAS_DRAM_WRITE_K: for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
	BIAS_DRAM_WRITE_H: for (int wh = 0; wh < H*W; wh++) {
	#pragma HLS loop_tripcount min=49 max=49
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			unsigned int global_khw = (ko*H*W+wh)*ARRAY_K + ki;
			unsigned int global_k = (ko)*ARRAY_K + ki;
			unsigned int v = ki;
			conv_out[global_khw] = bias_l2[ki][ko];
		}
	}
	}

	LOOP_K_MOST_OUTER: for (int kmo = 0; kmo < L2_TILENUM_K; kmo++) { // Inner channel
	#pragma HLS loop_tripcount min=4 max=4
//        printf("Most Outer Loop K: %d/%d\n", kmo, L2_TILENUM_K);
	LOOP_C_MOST_OUTER: for (int cmo = 0; cmo < L2_TILENUM_C; cmo++) { // Inner channel
	#pragma HLS loop_tripcount min=1 max=1
//        printf("Most Outer Loop  C: %d/%d\n", cmo, L2_TILENUM_K);
	LOOP_H_MOST_OUTER: for (int hmo = 0; hmo < L2_TILENUM_H; hmo++) {
	#pragma HLS loop_tripcount min=1 max=1
//        printf("Most Outer Loop   H: %d/%d\n", hmo, L2_TILENUM_H);
	LOOP_W_MOST_OUTER: for (int wmo = 0; wmo < L2_TILENUM_W; wmo++) {
	#pragma HLS loop_tripcount min=1 max=1
//        printf("Most Outer Loop    W: %d/%d\n", wmo, L2_TILENUM_W);
	LOOP_R_MOST_OUTER: for (int rmo = 0; rmo < L2_TILENUM_R; rmo++) {
	#pragma HLS loop_tripcount min=1 max=1
//        printf("Most Outer Loop     R: %d/%d\n", rmo, L2_TILENUM_R);
	LOOP_S_MOST_OUTER: for (int smo = 0; smo < L2_TILENUM_S; smo++) {
	#pragma HLS loop_tripcount min=1 max=1
//        printf("Most Outer Loop      S: %d/%d\n", smo, L2_TILENUM_S);
		#pragma HLS dataflow
		#pragma HLS stable variable=conv_out
		#pragma HLS stable variable=bias_in
		#pragma HLS stable variable=weight_in
		#pragma HLS stable variable=data_in
#pragma HLS stable variable=output_l2
#pragma HLS stable variable=output_l2_reduction
#pragma HLS stable variable=data_l2
#pragma HLS stable variable=weight_l2
		//#pragma HLS stable variable=output_l2
		//#pragma HLS stable variable=output_l2_reduction
		//#pragma HLS DEPENDENCE variable=output_l2

		weight_dram_read(weight_l2, weight_in,
						kmo, cmo, rmo, smo,
						K_L2, C_L2, R_L2, S_L2,
						L2_TILENUM_K, L2_TILENUM_C, L2_TILENUM_R, L2_TILENUM_S);
		// Read Input from DRAM
		input_dram_read(data_l2, data_in,
						cmo, hmo, wmo,
						C_L2, H_L2, W_L2, H_in_L2, W_in_L2, H_in, W_in);

		LOOP_K_OUTER: for (int ko = 0; ko < L1_TILENUM_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		LOOP_C_OUTER: for (int co = 0; co < L1_TILENUM_C; co++) {
		#pragma HLS loop_tripcount min=1 max=1
		LOOP_H_OUTER: for (int ho = 0; ho < L1_TILENUM_H; ho++) { // TODO: Tiling
		#pragma HLS loop_tripcount min=1 max=1
		LOOP_W_OUTER: for (int wo = 0; wo < L1_TILENUM_W; wo++) { // TODO: Tiling
		#pragma HLS loop_tripcount min=1 max=1
		LOOP_R_OUTER: for (int ro = 0; ro < L1_TILENUM_R; ro++) { // TODO: Tiling
		#pragma HLS loop_tripcount min=3 max=3
		LOOP_S_OUTER: for (int so = 0; so < L1_TILENUM_S; so++) { // TODO: Tiling
		#pragma HLS loop_tripcount min=3 max=3
			// L2->L1
			#pragma HLS stable variable=output_l2
			#pragma HLS stable variable=output_l2_reduction
			#pragma HLS stable variable=data_l2
			#pragma HLS stable variable=weight_l2
			#pragma HLS dataflow

			bool isFirst;
			if(co==0 && ro==0 && so==0) isFirst = true; // first iteration of a output
			else isFirst = false;

			DPTYPE weight_regfile[ARRAY_K][ARRAY_C];
			DPTYPE data_l1[DATA_L1_SIZE][PORT_NUM][ARRAY_C];
			#ifdef INPUT_SPARSE
		    short data_l1_bitvec[DATA_L1_SIZE][PORT_NUM][ARRAY_C/BLOCK_SIZE];
		    short data_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE];
            short max_bitvec_length[PORT_NUM];
		    short output_l1_bitvec[DATA_L1_SIZE][PORT_NUM][ARRAY_C/BLOCK_SIZE];
		    short output_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE];
			#endif
			static MACTYPE output_l1[OUTPUT_L1_SIZE][PORT_NUM][ARRAY_K][ARRAY_C/BLOCK_SIZE];
			static MACTYPE output_l1_local[OUTPUT_L1_SIZE][PORT_NUM][ARRAY_K][ARRAY_C/BLOCK_SIZE];
    #pragma HLS reset variable=output_l1
    #pragma HLS reset variable=output_l1_local
			#pragma HLS ARRAY_PARTITION variable=weight_regfile dim=0 complete //register
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=3 complete
            #ifdef INPUT_SPARSE
			#pragma HLS ARRAY_PARTITION variable=data_l1_bitvec dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_bitvec dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_length dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_length dim=1 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_bitvec dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_bitvec dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_length dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_length dim=1 complete
			#pragma HLS ARRAY_PARTITION variable=max_bitvec_length dim=1 complete
            #endif
            // more port
            #ifdef INPUT_SPARSE
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=4 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=4 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=2 complete
			/*#pragma HLS ARRAY_PARTITION variable=output_l1 dim=0 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=0 complete*/
            #elif
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=3 complete
            #endif

	#ifdef LUT_L1_OUTPUT
			#pragma HLS bind_storage variable=output_l1 type=RAM_2P impl=LUTRAM
			#pragma HLS bind_storage variable=output_l1_local type=RAM_2P impl=LUTRAM
			#pragma HLS bind_storage variable=output_l1_bitvec type=RAM_2P impl=LUTRAM
			#pragma HLS bind_storage variable=output_l1_length type=RAM_2P impl=LUTRAM
	#endif
	#ifdef LUT_L1_INPUT
			#pragma HLS bind_storage variable=data_l1 type=RAM_2P impl=LUTRAM
			#pragma HLS bind_storage variable=data_l1_bitvec type=RAM_2P impl=LUTRAM
			#pragma HLS bind_storage variable=data_l1_length type=RAM_2P impl=LUTRAM
	#endif
	#ifdef LUT_L1_WEIGHT
			#pragma HLS bind_storage variable=weight_regfile type=RAM_2P impl=LUTRAM
	#endif
			//Systolic Array
			runWeight2Reg(weight_regfile, weight_l2, C_L2, R_L2, S_L2, ko, co, ro, so);
			#ifdef INPUT_SPARSE
			runDataL2toL1_bitvec(data_l1, data_l1_bitvec, data_l1_length, max_bitvec_length, data_l2, TILESIZE_H, TILESIZE_W, co, ho, wo, ro, so, W_in_L2, H_in_L2);
			#else
			runDataL2toL1(data_l1, data_l2, TILESIZE_H, TILESIZE_W, co, ho, wo, ro, so, W_in_L2, H_in_L2);
			#endif
			#ifndef SIMD
			runSysArr(weight_regfile, data_l1, output_l1_local, output_l1,
						input_rows,
						bubble_h, bubble_w,
						TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S, isFirst);
			#else
				#ifdef INPUT_SPARSE
				runSIMD_bitvec(weight_regfile, data_l1,
						data_l1_bitvec, data_l1_length, max_bitvec_length,
						output_l1_bitvec, output_l1_length,
						output_l1_local, output_l1,
							input_rows,
							bubble_h, bubble_w,
							TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S, isFirst);
				#else
				runSIMD(weight_regfile, data_l1, output_l1_local, output_l1,
							input_rows,
							bubble_h, bubble_w,
							TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S, isFirst);
				#endif
			#endif
			runOutputL1toL2(output_l1, output_l2, output_l2_reduction, output_l1_bitvec, output_l1_length, TILESIZE_H, TILESIZE_W, ko, ho, wo, W_L2, H_L2, isFirst);
		} // Loop S
		} // Loop R
		}
		}
		}
		}

		output_dram_write(output_l2, conv_out,
						kmo, hmo, wmo,
						K_L2, H_L2, W_L2, H, W);
	}
	}
	}
	}
	}
	}
	//conv_out[0] = L2_TILENUM_K;

	printf("Kernel coreConv compelete !!!\n");
}
#ifndef XILINX
}
#endif
