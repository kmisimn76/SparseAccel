
#include "Convolution.h"


#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)


#ifndef XILINX
extern "C" {
#endif
void runWeight2Reg(DPTYPE weight_regfile[ARRAY_K][ARRAY_C], DPTYPE weight_l2[ARRAY_C][WEIGHT_L2_SIZE], 
		const uint C_L2, const uint R_L2, const uint S_L2,
		const uint ko, const uint co, const uint r, const uint s) {
	
	for (int ci = 0; ci < ARRAY_C; ci++) {
		#pragma HLS unroll
		//#pragma HLS pipeline
			for (int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll 
			int k = (ko * ARRAY_K + ki);
			int c = (co * ARRAY_C + ci);
			weight_regfile[ki][ci] = weight_l2[ki][ko * C_L2 * R_L2
					* S_L2 + c * R_L2 * S_L2 + r * S_L2 + s];
		}
	}
}
void runDataL2toL1(DPTYPE (*data_l1)[ARRAY_C], DPTYPE (*data_l2)[ARRAY_C], uint TILESIZE_H,
		uint TILESIZE_W, uint co, uint ho, uint wo, uint r, uint s,
		uint W_in_L2, uint H_in_L2) {
	
	LOOP_L2_H_IN: for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=7 max=7
		LOOP_L2_W_IN: for (int wi = 0; wi < TILESIZE_W; wi++) {
			#pragma HLS loop_tripcount min=7 max=7
			for (int ci = 0; ci < ARRAY_C; ci++) { 
				#pragma HLS unroll
				int c = (co * ARRAY_C + ci);
				int h = (ho * TILESIZE_H + hi) + r;
				int w = (wo * TILESIZE_W + wi) + s;
				data_l1[hi * TILESIZE_W + wi][ci] =
						data_l2[co * H_in_L2 * W_in_L2 + h * W_in_L2 + w][ci];
			}
		}
	}
}


void runOutputL1toL2(MACTYPE (*output_l1)[ARRAY_K], MACTYPE (*output_l2)[ARRAY_K], MACTYPE (*output_l2_reduction)[ARRAY_K],
		uint TILESIZE_H, uint TILESIZE_W, uint ko, uint ho, uint wo,
		uint W_L2, uint H_L2, bool isFirst) {
	 
	#pragma HLS dependence variable=output_l2
	#pragma HLS dependence variable=output_l2_reduction
	LOOP_L2_H: for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=14 max=14
		LOOP_L2_W: for (int wi = 0; wi < TILESIZE_W; wi++) {
			#pragma HLS loop_tripcount min=14 max=14
			for (int ki = 0; ki < ARRAY_K; ki++) {
				#pragma HLS unroll
				int k = (ko * ARRAY_K + ki);
				int h = (ho * TILESIZE_H + hi);
				int w = (wo * TILESIZE_W + wi);
				MACTYPE temp;
				if(isFirst)	temp = 0;
				else		temp = output_l2_reduction[(ko * H_L2 * W_L2 + h * W_L2 + w)][ki];
				temp += output_l1[(hi * TILESIZE_W + wi)][ki];
				output_l2[(ko * H_L2 * W_L2 + h * W_L2 + w)][ki]			= temp;
				output_l2_reduction[(ko * H_L2 * W_L2 + h * W_L2 + w)][ki]	= temp;
			}
		}
	}
}


void runSIMD(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE (*data_l1)[ARRAY_C],
		MACTYPE (*output_l1)[ARRAY_K],
		uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S) {

	MACTYPE output_reg[ARRAY_K][ARRAY_C];
	#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete  // Register
	
	/*LOOP_R_INNER: for (int ri = 0; ri < TILESIZE_R; ri++) {
		#pragma HLS LOOP_TRIPCOUNT max=1 min=1
		LOOP_S_INNER: for (int si = 0; si < TILESIZE_S; si++) {
			#pragma HLS LOOP_TRIPCOUNT max=1 min=1
	*/
			LOOP_H_INNER: for (int hi = 0; hi < TILESIZE_H; hi++) {
				#pragma HLS LOOP_TRIPCOUNT max=14 min=14
				LOOP_W_INNER: for (int wi = 0; wi < TILESIZE_W; wi++) {
					#pragma HLS LOOP_TRIPCOUNT max=14 min=14
					#pragma HLS DEPENDENCE variable=output_l1
					#pragma HLS pipeline rewind

					MACTYPE data;
					LOOP_K_INNER: for (int ki = 0; ki < ARRAY_K; ki++) {
						#pragma HLS unroll
						LOOP_C_INNER: for (int ci = 0; ci < ARRAY_C; ci++) {
							#pragma HLS unroll
							data = data_l1[(hi * TILESIZE_W + wi)][ci];
							output_reg[ki][ci] = data * weight_regfile[ki][ci];
						}
					}
					// reduction part
					LOOP_REDUCTION_K: for (int ki = 0; ki < ARRAY_K; ki++) {
						#pragma HLS unroll
						MACTYPE sum = 0;
						LOOP_REDUCTION_C: for (int ci = 0; ci < ARRAY_C; ci++) {
							#pragma HLS unroll
							sum += output_reg[ki][ci];
						}
						output_l1[(hi * TILESIZE_W + wi)][ki] = sum;
					}

				}
			}
	/*	}
	}*/
}
#ifndef __SYNTHESIS__
DPTYPE bias_l2[ARRAY_K][BIAS_L2_SIZE];
DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE];
DPTYPE data_l2[DATA_L2_SIZE][ARRAY_C];
MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_K];
MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][ARRAY_K];
#endif


void weight_dram_read(DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE], DPTYPE* weight_in,
						uint kmo, uint cmo, uint rmo, uint smo,
						uint K_L2, uint C_L2, uint R_L2, uint S_L2,
						uint L2_TILENUM_K, uint L2_TILENUM_C, uint L2_TILENUM_R, uint L2_TILENUM_S)
{
	WEIGHT_DRAM_READ:
	for (unsigned int ko = 0; ko < (K_L2 / ARRAY_K)*C_L2*R_L2*S_L2; ko++) {
	#pragma HLS loop_tripcount min=36 max=36
		#pragma HLS pipeline
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			unsigned int global_kcrs = ((kmo*(L2_TILENUM_C)*(L2_TILENUM_R)*(L2_TILENUM_S)+cmo*(L2_TILENUM_R)*(L2_TILENUM_S)+rmo*(L2_TILENUM_S)+smo)
									*(K_L2/ARRAY_K)*C_L2*R_L2*S_L2 + ko)*ARRAY_K + ki;
			unsigned int kcrs = ko;
			unsigned int v = ki;
			weight_l2[ki][kcrs] = weight_in[global_kcrs];
		}
	}
}

void input_dram_read(DPTYPE data_l2[DATA_L2_SIZE][ARRAY_C], DPTYPE* data_in,
						uint cmo, uint hmo, uint wmo,
						uint C_L2, uint H_L2, uint W_L2, uint H_in_L2, uint W_in_L2,
						uint H_in, uint W_in)
{
	INPUT_DRAM_READ:
	for (unsigned int co = 0; co < C_L2/ARRAY_C; co++) {
		#pragma HLS loop_tripcount min=1 max=1
		for(unsigned int h = 0; h < H_in_L2; h++) {
			#pragma HLS loop_tripcount min=9 max=9
			for(unsigned int w = 0; w < W_in_L2; w++) {
				#pragma HLS loop_tripcount min=9 max=9
				#pragma HLS pipeline
				for(unsigned int ci = 0; ci < ARRAY_C; ci++) {
					#pragma HLS unroll
					unsigned int global_chw = ((cmo*(C_L2/ARRAY_C)+co)*H_in*W_in + (hmo*H_L2+h)*W_in + (wmo*W_L2+w))*ARRAY_C + ci;
					unsigned int chw = co*H_in_L2*W_in_L2 + h*W_in_L2 + w;
					unsigned int v = ci;
					data_l2[(chw)][ci] = data_in[global_chw];
				}
			}
		}
	}
}
void output_dram_write(MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_K], MACTYPE* conv_out,
						uint kmo, uint hmo, uint wmo,
						uint K_L2, uint H_L2, uint W_L2,
						uint H, uint W)
{
	#define STREAM_BUFFER_SIZE 32
	MACTYPE stream_buffer[STREAM_BUFFER_SIZE][ARRAY_K];
	#pragma HLS ARRAY_PARTITION variable=stream_buffer dim=2 complete
	
	OUTPUT_DRAM_WRITE:
	for (unsigned int ko = 0; ko < (K_L2 / ARRAY_K); ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		for (unsigned int h = 0; h < H_L2; h++) {// FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
			#pragma HLS loop_tripcount min=2 max=2
			OUTPUT_DRAM_STREA_IN: for (unsigned int w = 0; w < W_L2; w++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
					#pragma HLS unroll
					unsigned int global_khw = ((kmo*(K_L2/ARRAY_K)+ko)*H*W + (hmo*H_L2+h)*W + (wmo*W_L2+w))*ARRAY_K + ki;
					unsigned int khw = ko*H_L2*W_L2 + h*W_L2 + w;
					unsigned int v = ki;
					//FIXME: Make bias added at here
					//if(isFirst)
					//	conv_out[global_khw] = output_l2[khw][ki] + bias_l2[ki][ko];
					//else
						stream_buffer[w][ki] = conv_out[global_khw];
				}
			}
			OUTPUT_DRAM_STREA_OUT: for (unsigned int w = 0; w < W_L2; w++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
					#pragma HLS unroll
					unsigned int global_khw = ((kmo*(K_L2/ARRAY_K)+ko)*H*W + (hmo*H_L2+h)*W + (wmo*W_L2+w))*ARRAY_K + ki;
					unsigned int khw = ko*H_L2*W_L2 + h*W_L2 + w;
					unsigned int v = ki;
					//FIXME: Make bias added at here
					//if(isFirst)
					//	conv_out[global_khw] = output_l2[khw][ki] + bias_l2[ki][ko];
					//else
						conv_out[global_khw] = stream_buffer[w][ki] + output_l2[(khw)][ki];
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
	DPTYPE bias_l2[ARRAY_K][BIAS_L2_SIZE];
	DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE];
	DPTYPE data_l2[DATA_L2_SIZE][ARRAY_C];
	MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_K];
	MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][ARRAY_K];
	#endif

	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=1 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=1 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=2 complete)
	
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

	printf("Conv Sysarr start\n");
	printf("Args: ");
	printf("%u,%u,%u,%u,%u,||,", K, C, W, W_in, R);
	printf("%d,%d,%d,%d,%d,%d,||,", L2_TILENUM_K, L2_TILENUM_C, L2_TILENUM_W, L2_TILENUM_H, L2_TILENUM_R, L2_TILENUM_S);
	printf("%d,%d,%d,%d,%d,%d,%d,%d,||,", K_L2, C_L2, W_L2, H_L2, W_in_L2, H_in_L2, R_L2, S_L2);
	printf("%d,%d,%d,%d,%d,%d,||,", L1_TILENUM_K, L1_TILENUM_C, L1_TILENUM_W, L1_TILENUM_H, L1_TILENUM_R, L1_TILENUM_S);
	printf("%d,%d,%d,%d,%d,%d,%d,%d,||,", K_L1, C_L1, W_L1, H_L1, W_in_L1, H_in_L1, R_L1, S_L1);
	printf("%d,%d,%d,%d \n", TILESIZE_W, TILESIZE_H, TILESIZE_R, TILESIZE_S);
	BIAS_DRAM_READ: for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			unsigned int global_k = (ko)*ARRAY_K + ki;
			unsigned int v = ki;
			bias_l2[ki][ko] = bias_in[global_k];
		}
	}
	BIAS_DRAM_WRITE_K: for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
	BIAS_DRAM_WRITE_H: for (int wh = 0; wh < H*W; wh++) {
	#pragma HLS loop_tripcount min=49 max=49
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) {
			unsigned int global_khw = (ko*H*W+wh)*ARRAY_K + ki;
			unsigned int global_k = (ko)*ARRAY_K + ki;
			unsigned int v = ki;
			conv_out_raw[global_khw] = bias_l2[ki][ko];
		}
	}
	}
	LOOP_K_MOST_OUTER: for (int kmo = 0; kmo < L2_TILENUM_K; kmo++) { // Inner channel
	#pragma HLS loop_tripcount min=4 max=4
	LOOP_C_MOST_OUTER: for (int cmo = 0; cmo < L2_TILENUM_C; cmo++) { // Inner channel
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
		#pragma HLS stable variable=conv_out_quant
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
			DPTYPE data_l1[DATA_L1_SIZE][ARRAY_C];
			MACTYPE output_l1[OUTPUT_L1_SIZE][ARRAY_K];
			#pragma HLS reset variable=output_l1
			#pragma HLS ARRAY_PARTITION variable=weight_regfile dim=0 complete //register
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=2 complete
			
	#ifdef LUT_L1_OUTPUT
			#pragma HLS bind_storage variable=output_l1 type=RAM_2P impl=LUTRAM
	#endif
	#ifdef LUT_L1_INPUT
			#pragma HLS bind_storage variable=data_l1 type=RAM_2P impl=LUTRAM
	#endif
	#ifdef LUT_L1_WEIGHT
			#pragma HLS bind_storage variable=weight_regfile type=RAM_2P impl=LUTRAM
	#endif
			runWeight2Reg(weight_regfile, weight_l2, C_L2, R_L2, S_L2, ko, co, ro, so);
			runDataL2toL1(data_l1, data_l2, TILESIZE_H, TILESIZE_W, co, ho, wo, ro, so, W_in_L2, H_in_L2);
			runSIMD(weight_regfile, data_l1, output_l1,
					TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S);
			runOutputL1toL2(output_l1, output_l2, output_l2_reduction, TILESIZE_H, TILESIZE_W, ko, ho, wo, W_L2, H_L2, isFirst);
		} // Loop S
		} // Loop R
		}
		}
		}
		}

		output_dram_write(output_l2, conv_out_raw,
						kmo, hmo, wmo,
						K_L2, H_L2, W_L2, H, W);
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
#ifndef XILINX
}
#endif
