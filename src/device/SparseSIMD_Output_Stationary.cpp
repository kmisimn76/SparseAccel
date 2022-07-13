#include "Convolution.h"

#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)

#ifndef TESTBENCH
extern "C" {
#endif
void runWeightL2toL1(DPTYPE weight_l1[WEIGHT_L1_SIZE][PORT_C][ARRAY_K][ARRAY_W/BLOCK_SIZE], DPTYPE weight_l2[WEIGHT_L2_SIZE][PORT_C][ARRAY_K],
		const uint C_L2, const uint R_L2, const uint S_L2, const uint C_L1,
		const uint ko, const uint co, const uint r, const uint s){
	uint c0 = R_L2*S_L2;
	for (int cip = 0; cip < C_L1/PORT_C; cip++) {
		#pragma HLS pipeline
		#pragma HLS loop_tripcount min=4 max=4
                #pragma HLS latency min=3 max=4 // SIMD implementation
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

int wi_index(int wi, int s) {
#pragma HLS INLINE off
#pragma HLS FUNCTION_INSTANTIATE variable=wi
#pragma HLS FUNCTION_INSTANTIATE variable=s
	return (wi+s)%ARRAY_W;
}
void runDataL2toL1_bitvec(
		DPTYPE data_l1[DATA_L1_SIZE][PORT_C][ARRAY_W],	short data_l1_bitvec[DATA_L1_SIZE][PORT_C][ARRAY_W/BLOCK_SIZE], short data_l1_length[PORT_C][ARRAY_W/BLOCK_SIZE], short max_bitvec_length[PORT_C],
		DPTYPE data_l2[DATA_L2_SIZE][PORT_C][ARRAY_W],
		uint C_L1, uint W_in, uint H_in,
		uint co, uint ho, uint wo, uint r, uint s){
	#pragma HLS interface ap_stable port=s
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
LOOP_L2_W_IN:
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
						data_l1_bitvec[counter[pt][wib]][pt][wib] = cip;
						counter[pt][wib]++;
					}
					non_zero_check = false;
				}
			}
		}
	}

	for (int wib = 0; wib < ARRAY_W/BLOCK_SIZE; wib++) {
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

void runSIMD_bitvec(
		DPTYPE weight_l1[WEIGHT_L1_SIZE][PORT_C][ARRAY_K][ARRAY_W/BLOCK_SIZE],
		DPTYPE data_l1[DATA_L1_SIZE][PORT_C][ARRAY_W],
		short data_l1_bitvec[DATA_L1_SIZE][PORT_C][ARRAY_W/BLOCK_SIZE],
		short data_l1_length[PORT_C][ARRAY_W/BLOCK_SIZE],
		short max_bitvec_length[PORT_C],
		MACTYPE output_regfile[ARRAY_W][ARRAY_K],
		uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S,
		bool isFirst) {
	for (int wi = 0; wi < ARRAY_W; wi++) {
		#pragma HLS unroll
		for (int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			output_regfile[wi][ki] = 0;
		}
	}

	int bitvec_pt[ARRAY_W/BLOCK_SIZE];
	int i[ARRAY_W/BLOCK_SIZE];
	#pragma HLS ARRAY_PARTITION variable=bitvec_pt dim=0 complete
	#pragma HLS ARRAY_PARTITION variable=i dim=0 complete
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
		                #pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete
				DPTYPE weight_ = weight_l1[addr][pt][ki][wib];
				LOOP_CORE_BLOCK: for (int bl = 0; bl < BLOCK_SIZE; bl++) {
					#pragma HLS unroll
					uint wi = wib * BLOCK_SIZE + bl;
					data_reg[bl] = data_l1[addr][pt][wi];
					MACTYPE tmp;
					#pragma HLS BIND_OP variable=tmp op=mul impl=dsp
					tmp = data_reg[bl] * weight_;
					if(valid_input) {
						output_regfile[wi][ki] += tmp;
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

#ifndef __SYNTHESIS__
DPTYPE bias_l2[BIAS_L2_SIZE][ARRAY_K];
DPTYPE weight_l2[WEIGHT_L2_SIZE][PORT_C][ARRAY_K];
DPTYPE data_l2[DATA_L2_SIZE][PORT_C][ARRAY_W];
MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_K][ARRAY_W];
MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][PORT_K][ARRAY_W];
#endif


void weight_dram_read(DPTYPE weight_l2[WEIGHT_L2_SIZE][PORT_C][ARRAY_K], DPTYPE* weight_in,
						uint kmo, uint cmo, uint rmo, uint smo,
						uint K_L2, uint C_L2, uint R_L2, uint S_L2,
						uint L2_TILENUM_K, uint L2_TILENUM_C, uint L2_TILENUM_R, uint L2_TILENUM_S)
{
	WEIGHT_DRAM_READ:
	for (unsigned int krsc = 0; krsc < (K_L2 / ARRAY_K)*R_L2*S_L2*C_L2; krsc++) {
		#pragma HLS pipeline
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			unsigned int global_kcrs = ((kmo*(L2_TILENUM_C)*(L2_TILENUM_R)*(L2_TILENUM_S)+rmo*(L2_TILENUM_S)*(L2_TILENUM_C)+smo*(L2_TILENUM_C) + cmo)
							*(K_L2/ARRAY_K)*C_L2*R_L2*S_L2 + 
							krsc)*ARRAY_K + ki;
			unsigned int local_kcrs = krsc/PORT_C;
			unsigned int pt = krsc%PORT_C;
			weight_l2[local_kcrs][pt][ki] = weight_in[global_kcrs];
		}
	}
}

void input_dram_read(DPTYPE data_l2[DATA_L2_SIZE][PORT_C][ARRAY_W], DPTYPE* data_in,
						uint cmo, uint hmo, uint wmo,
						uint C_L2, uint H_L2, uint W_L2, uint H_in_L2, uint W_in_L2, uint H_in, uint W_in
						, uint C)
{
	INPUT_DRAM_READ: 
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
						uint global_chw = ((hmo*H_L2+h)*CEIL(W_in,ARRAY_W)*C/PORT_C + (wmo*(W_L2/ARRAY_W)+wo)*C/PORT_C + (cmo*C_L2/PORT_C+co))*ARRAY_W*PORT_C + cwi; //TODO: consider rmo, smo : could reduce DRAM BW
						uint wi = cwi%ARRAY_W;
						uint pt = cwi/ARRAY_W;
						data_l2[chw][pt][wi] = data_in[global_chw];
				}
			}
		}
	}
}
void output_dram_write(MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_K][ARRAY_W], MACTYPE* conv_out,
						uint kmo, uint hmo, uint wmo,
						uint K_L2, uint H_L2, uint W_L2, uint H, uint W
						, uint K)
{
	#define STREAM_BUFFER_SIZE 256
	MACTYPE stream_buffer[STREAM_BUFFER_SIZE][ARRAY_W][PORT_K];
	#pragma HLS ARRAY_PARTITION variable=stream_buffer dim=2 complete
	#pragma HLS ARRAY_PARTITION variable=stream_buffer dim=3 complete
	OUTPUT_DRAM_WRITE:
	for (unsigned int h = 0; h < H_L2; h++) { // FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
		#pragma HLS loop_tripcount min=2 max=2
		for (unsigned int wo = 0; wo < W_L2/ARRAY_W; wo++) {
			#pragma HLS loop_tripcount min=1 max=1
			OUTPUT_DRAM_STREA_IN:
			for (unsigned int ko = 0; ko < K_L2/PORT_K; ko++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				for (unsigned int kwi = 0; kwi < PORT_K*ARRAY_W; kwi++) {
					#pragma HLS unroll
					unsigned int global_khw = ((hmo*H_L2+h)*(W/ARRAY_W)*K/PORT_K + (wmo*(W_L2/ARRAY_W)+wo)*K/PORT_K + (kmo*K_L2/PORT_K+ko))*ARRAY_W*PORT_K + kwi;
					uint wi = kwi%ARRAY_W;
					uint pt = kwi/ARRAY_W;
					stream_buffer[ko][wi][pt] = conv_out[global_khw];
				}
			}
			OUTPUT_DRAM_STREA_OUT:
			for (unsigned int ko = 0; ko < K_L2/PORT_K; ko++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				unsigned int khw = (ko)*H_L2*(W_L2/ARRAY_W) + h*(W_L2/ARRAY_W) + wo;
				for (unsigned int kwi = 0; kwi < PORT_K*ARRAY_W; kwi++) {
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
	    uint Stride,
	    uint Padding,
	    float scale_factor,
		DPTYPE *bias_in,
		DPTYPE *weight_in,
		DPTYPE *data_in,
		DPTYPE *conv_out_quant,
		MACTYPE *conv_out_raw
		) {
		DO_PRAGMA(HLS INTERFACE m_axi port=bias_in offset=slave bundle=gmem0)
		DO_PRAGMA(HLS INTERFACE m_axi port=weight_in offset=slave bundle=gmem1)
		DO_PRAGMA(HLS INTERFACE m_axi port=data_in offset=slave bundle=gmem2)
		DO_PRAGMA(HLS INTERFACE m_axi port=conv_out_quant offset=slave bundle=gmem3)
		DO_PRAGMA(HLS INTERFACE m_axi port=conv_out_raw offset=slave bundle=gmem4)

	#pragma HLS expression_balance

	#ifdef __SYNTHESIS__
	DPTYPE bias_l2[BIAS_L2_SIZE][ARRAY_K];
	DPTYPE weight_l2[WEIGHT_L2_SIZE][PORT_C][ARRAY_K];
	DPTYPE data_l2[DATA_L2_SIZE][PORT_C][ARRAY_W];
	MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_K][ARRAY_W];
	MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][PORT_K][ARRAY_W];
	#endif

	printf("Args: ");
	printf("%u,%u,%u,%u,%u,%u,%u,%u\n", K, C, H, W, H_in,W_in, R,S);
	printf("%3d,%3d,%3d,%3d        ,%3d,%3d\n", L2_TILENUM_K, L2_TILENUM_C, L2_TILENUM_H, L2_TILENUM_W, L2_TILENUM_R, L2_TILENUM_S);
	printf("%3d,%3d,%3d,%3d,%3d,%3d,%3d,%3d\n", K_L2, C_L2, H_L2, W_L2, H_in_L2, W_in_L2, R_L2, S_L2);
	printf("%3d,%3d,%3d,%3d        ,%3d,%3d\n", L1_TILENUM_K, L1_TILENUM_C, L1_TILENUM_W, L1_TILENUM_H, L1_TILENUM_R, L1_TILENUM_S);
	printf("%3d,%3d,%3d,%3d,%3d,%3d,%3d,%3d\n", K_L1, C_L1, H_L1, W_L1, H_in_L1, W_in_L1, R_L1, S_L1);
	printf("%3d,%3d,%3d,%3d,        %3d,%3d \n", TILESIZE_K, TILESIZE_C, TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S);
	
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=3 complete)

	BIAS_DRAM_READ: for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			unsigned int global_k = (ko)*ARRAY_K + ki;
			bias_l2[ko][ki] = bias_in[global_k];
		}
	}
	for (int wh = 0; wh < H*(W/ARRAY_W); wh++) {
		#pragma HLS loop_tripcount min=49 max=49
		for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
			for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
				#pragma HLS loop_tripcount min=1 max=1
				for (unsigned int wi = 0; wi < ARRAY_W; wi++) {
					unsigned int global_khw = (wh*K+(ko*ARRAY_K+ki))*ARRAY_W + wi;
					conv_out_raw[global_khw] = bias_l2[ko][ki];
				}
			}
		}
	}

	LOOP_K_MOST_OUTER: for (int kmo = 0; kmo < L2_TILENUM_K; kmo++) {
	#pragma HLS loop_tripcount min=4 max=4
	LOOP_C_MOST_OUTER: for (int cmo = 0; cmo < L2_TILENUM_C; cmo++) {
	#pragma HLS loop_tripcount min=1 max=1
	LOOP_H_MOST_OUTER: for (int hmo = 0; hmo < L2_TILENUM_H; hmo++) {
	#pragma HLS loop_tripcount min=1 max=1
	LOOP_W_MOST_OUTER: for (int wmo = 0; wmo < L2_TILENUM_W; wmo++) {
	#pragma HLS loop_tripcount min=1 max=1
	LOOP_R_MOST_OUTER: for (int rmo = 0; rmo < L2_TILENUM_R; rmo++) {
	#pragma HLS loop_tripcount min=1 max=1
	LOOP_S_MOST_OUTER: for (int smo = 0; smo < L2_TILENUM_S; smo++) {
	#pragma HLS loop_tripcount min=1 max=1
		#pragma HLS dataflow
		#pragma HLS stable variable=conv_out_quant //TODO remove unused pragma
		#pragma HLS stable variable=conv_out_raw
		#pragma HLS stable variable=bias_in
		#pragma HLS stable variable=weight_in
		#pragma HLS stable variable=data_in
		#pragma HLS stable variable=output_l2
		#pragma HLS stable variable=output_l2_reduction
		#pragma HLS stable variable=data_l2
		#pragma HLS stable variable=weight_l2

		weight_dram_read(weight_l2, weight_in,
						kmo, cmo, rmo, smo,
						K_L2, C_L2, R_L2, S_L2,
						L2_TILENUM_K, L2_TILENUM_C, L2_TILENUM_R, L2_TILENUM_S);

		input_dram_read(data_l2, data_in,
						cmo, hmo, wmo,
						C_L2, H_L2, W_L2, H_in_L2, W_in_L2, H_in, W_in, C);


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
			#pragma HLS stable variable=output_l2
			#pragma HLS stable variable=output_l2_reduction
			#pragma HLS stable variable=data_l2
			#pragma HLS stable variable=weight_l2
			#pragma HLS dataflow

			bool isFirst;
			if(co==0 && ro==0 && so==0) isFirst = true; // first iteration of a output
			else isFirst = false;


			DPTYPE weight_l1[WEIGHT_L1_SIZE][PORT_C][ARRAY_K][ARRAY_W/BLOCK_SIZE];
			DPTYPE data_l1[DATA_L1_SIZE][PORT_C][ARRAY_W];
			short data_l1_bitvec[DATA_L1_SIZE][PORT_C][ARRAY_W/BLOCK_SIZE];
			short data_l1_length[PORT_C][ARRAY_W/BLOCK_SIZE];
			short max_bitvec_length[PORT_C];
			MACTYPE output_regfile[ARRAY_W][ARRAY_K];

			#pragma HLS ARRAY_PARTITION variable=weight_l1 dim=4 complete
			#pragma HLS ARRAY_PARTITION variable=weight_l1 dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=weight_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_regfile dim=0 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_bitvec dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_bitvec dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_length dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_length dim=1 complete
			#pragma HLS ARRAY_PARTITION variable=max_bitvec_length dim=1 complete

			runWeightL2toL1(weight_l1, weight_l2,
				C_L2, R_L2, S_L2, C_L1,
				ko, co, ro, so);
			runDataL2toL1_bitvec(
				data_l1, data_l1_bitvec, data_l1_length, max_bitvec_length,
				data_l2,
				C_L1, W_in_L2, H_in_L2,
				co, ho, wo, ro, so);
			runSIMD_bitvec(
				weight_l1,
				data_l1,
				data_l1_bitvec,
				data_l1_length,
				max_bitvec_length,
				output_regfile,
				TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S,
				isFirst);
			runOutputRegtoL2(output_regfile, output_l2,
				W_L2, H_L2,
				ko, ho, wo, isFirst);
		} // Loop S
		} // Loop R
		} // Loop W
		} // Loop H
		} // Loop C
		} // Loop K

		output_dram_write(output_l2, conv_out_raw,
						kmo, hmo, wmo,
						K_L2, H_L2, W_L2, H, W, K);
	}
	}
	}
	}
	}
	}

	//QuantOut initialization
	for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
	for (int wh = 0; wh < H*W; wh++) {
	#pragma HLS loop_tripcount min=49 max=49
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
			unsigned int global_khw = (ko*H*W+wh)*ARRAY_K + ki;
			unsigned int v = ki;
			conv_out_quant[global_khw] = 0;
		}
	}
	}

}
#ifndef TESTBENCH
}
#endif

