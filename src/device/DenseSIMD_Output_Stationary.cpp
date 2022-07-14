#include "Convolution.h"

#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)

#ifndef TESTBENCH
extern "C" {
#endif
void runWeightL2toL1(	DPTYPE weight_l1[WEIGHT_L1_SIZE][ARRAY_K], DPTYPE weight_l2[WEIGHT_L2_SIZE][ARRAY_K],
		const uint C_L2, const uint R_L2, const uint S_L2, const uint C_L1,
		const uint ko, const uint co, const uint r, const uint s) {
	
	for (int ci = 0; ci < C_L1; ci++) {
		#pragma HLS loop_tripcount min=256 max=256
		#pragma HLS pipeline
		for (int ki = 0; ki < ARRAY_K; ki++) {
			#pragma HLS unroll
			int k = (ko * ARRAY_K + ki);
			int c = (co * C_L1 + ci);
			int l2_ptr = ko*(C_L2)*R_L2*S_L2 + r*S_L2*(C_L2) + s*(C_L2) + c;
			weight_l1[ci][ki] = weight_l2[l2_ptr][ki];
		}
	}
}

void runDataL2toL1(DPTYPE data_l1[DATA_L1_SIZE][ARRAY_W], DPTYPE data_l2[DATA_L2_SIZE][ARRAY_W],
	uint C_L1, uint W_in_L2, uint H_in_L2,
	uint co, uint ho, uint wo, uint r, uint s) {

	LOOP_L2_W_IN: for (int ci = 0; ci < C_L1; ci++) {
		#pragma HLS pipeline
		#pragma HLS loop_tripcount min=256 max=256
	
		#define ARRAY_COUNT 2	
		DPTYPE buffer[ARRAY_W*ARRAY_COUNT];
		#pragma HLS ARRAY_PARTITION variable=buffer dim=0 complete
	
		for (int wi = 0; wi < ARRAY_W; wi++) { 
			#pragma HLS unroll
			int c = (co * C_L1 + ci);
			int h = (ho) + r;
			int l2_ptr = c * H_in_L2 * CEIL(W_in_L2,ARRAY_W) + h * CEIL(W_in_L2,ARRAY_W) + wo;
			for(int i=0; i<ARRAY_COUNT; i++){
				#pragma HLS unroll
				buffer[wi+(i*ARRAY_W)]=data_l2[l2_ptr+i][wi];	
			}
			
		}
		for (int wi = 0; wi < ARRAY_W; wi++) { 
			#pragma HLS unroll
			data_l1[ci][wi] = buffer[wi+s];

		}
	}

}


void runOutputRegtoL2(	MACTYPE output_regfile[ARRAY_W][ARRAY_K], MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_W],
	uint W_L2, uint H_L2,
	uint ko, uint ho, uint wo, bool isFirst) {
	for(int ki=0; ki<ARRAY_K; ki++) {
		#pragma HLS pipeline
		
		#pragma HLS DEPENDENCE variable=output_l2
		#pragma HLS latency min=3 max=4
		for(int wi=0; wi<ARRAY_W; wi++) {
			#pragma HLS unroll
			int l2_ptr = (ko*(ARRAY_K) + ki)*H_L2*(W_L2/ARRAY_W) + ho*(W_L2/ARRAY_W) + wo;
			MACTYPE sum;
			if(isFirst) sum = 0;
			else sum = output_l2[l2_ptr][wi];
			sum += output_regfile[wi][ki];
			output_l2[l2_ptr][wi] = sum;
		}
	}
}

void runSIMD(DPTYPE weight_l1[WEIGHT_L1_SIZE][ARRAY_K],DPTYPE data_l1[DATA_L1_SIZE][ARRAY_W],
		MACTYPE output_regfile[ARRAY_W][ARRAY_K],  uint K_L1, uint C_L1) {

	MACTYPE output_tmp[ARRAY_W][ARRAY_K]; // Register
	#pragma HLS ARRAY_PARTITION variable=output_tmp dim=0 complete  

	LOOP_C_INNER: for (int ci = 0; ci < C_L1; ci++) {
		#pragma HLS LOOP_TRIPCOUNT max=256 min=256
		#pragma HLS pipeline rewind
		LOOP_W_INNER: for (int wi = 0; wi < ARRAY_W; wi++) {
			#pragma HLS unroll
			LOOP_K_INNER: for (int ki = 0; ki < ARRAY_K; ki++) {
				#pragma HLS unroll
			    DPTYPE data = data_l1[ci][wi];
				DPTYPE weight = weight_l1[ci][ki];
				if(ci==0) output_tmp[wi][ki]  = data * weight;
				else 	  output_tmp[wi][ki] += data * weight;
				output_regfile[wi][ki] = output_tmp[wi][ki];
			}
		}
	}
}

#ifndef __SYNTHESIS__
DPTYPE bias_l2[BIAS_L2_SIZE][ARRAY_K];
DPTYPE weight_l2[WEIGHT_L2_SIZE][ARRAY_K];
DPTYPE data_l2[DATA_L2_SIZE][ARRAY_W];
MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_W];
MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][ARRAY_W];
#endif


void weight_dram_read(DPTYPE weight_l2[WEIGHT_L2_SIZE][ARRAY_K], DPTYPE* weight_in,
						uint kmo, uint cmo, uint rmo, uint smo,
						uint K_L2, uint C_L2, uint R_L2, uint S_L2,
						uint L2_TILENUM_K, uint L2_TILENUM_C, uint L2_TILENUM_R, uint L2_TILENUM_S)
{
	WEIGHT_DRAM_READ:
	for (unsigned int krsc = 0; krsc < (K_L2 / ARRAY_K)*R_L2*S_L2*C_L2; krsc++) { 
	#pragma HLS loop_tripcount min=2048 max=2048
	#pragma HLS pipeline
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) { 
		#pragma HLS unroll
			unsigned int global_kcrs = ((kmo*(L2_TILENUM_C)*(L2_TILENUM_R)*(L2_TILENUM_S)+rmo*(L2_TILENUM_S)*(L2_TILENUM_C)+smo*(L2_TILENUM_C) + cmo)
											*(K_L2/ARRAY_K)*C_L2*R_L2*S_L2 +
											krsc)*ARRAY_K + ki; 
			unsigned int local_kcrs = krsc;
			weight_l2[local_kcrs][ki] = weight_in[global_kcrs];
		}
	}
}

void input_dram_read(DPTYPE data_l2[DATA_L2_SIZE][ARRAY_W], DPTYPE* data_in,
						uint cmo, uint hmo, uint wmo,
						uint C_L2, uint H_L2, uint W_L2, uint H_in_L2, uint W_in_L2
						,uint C, uint H_in, uint W_in)
{
	INPUT_DRAM_READ:
	for(unsigned int h = 0; h < H_in_L2; h++) {
	#pragma HLS loop_tripcount min=1 max=1
		for(unsigned int wo = 0; wo < CEIL(W_in_L2,ARRAY_W); wo++) {
		#pragma HLS loop_tripcount min=16 max=16
			for (unsigned int co = 0; co < C_L2; co++) {
			#pragma HLS loop_tripcount min=512 max=512
			#pragma HLS pipeline
				uint chw = (co)*H_in_L2*(CEIL(W_in_L2,ARRAY_W)) + h*(CEIL(W_in_L2,ARRAY_W)) + wo;
				#pragma HLS DEPENDENCE variable=data_l2
				for(unsigned int cwi = 0; cwi < ARRAY_W; cwi++) {
				#pragma HLS unroll
					uint global_chw = ((hmo*H_L2+h)*CEIL(W_in,ARRAY_W)*C + (wmo*(W_L2/ARRAY_W)+wo)*C + (cmo*C_L2+co))*ARRAY_W + cwi;
					data_l2[chw][cwi] = data_in[global_chw];
				}
			}
		}
	}
}
void output_dram_write(MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_W], MACTYPE* conv_out,
						uint kmo, uint hmo, uint wmo,
						uint K_L2, uint H_L2, uint W_L2,
						uint K, uint H, uint W)
{
	#define STREAM_BUFFER_SIZE 512 
	MACTYPE stream_buffer[STREAM_BUFFER_SIZE][ARRAY_W];
	#pragma HLS ARRAY_PARTITION variable=stream_buffer dim=2 complete
	OUTPUT_DRAM_WRITE:
	for (unsigned int h = 0; h < H_L2; h++) { // FIXME: Occur error when H_L2 cannot dividied by STREAM_BUFFER_WIDTH
		#pragma HLS loop_tripcount min=1 max=1
		for (unsigned int wo = 0; wo < W_L2/ARRAY_W; wo++) {
			#pragma HLS loop_tripcount min=1 max=1
			OUTPUT_DRAM_STREA_IN:
			for (unsigned int ko = 0; ko < K_L2; ko++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				for (unsigned int kwi = 0; kwi < ARRAY_W; kwi++) { 
					#pragma HLS unroll
					unsigned int global_khw = ((hmo*H_L2+h)*(W/ARRAY_W)*K + (wmo*(W_L2/ARRAY_W)+wo)*K + (kmo*K_L2+ko))*ARRAY_W + kwi;
					stream_buffer[ko][kwi] = conv_out[global_khw];
				}
			}
			OUTPUT_DRAM_STREA_OUT:
			for (unsigned int ko = 0; ko < K_L2; ko++) {
				#pragma HLS loop_tripcount min=7 max=7
				#pragma HLS pipeline
				#pragma HLS DEPENDENCE variable=conv_out
				unsigned int khw = (ko)*H_L2*(W_L2/ARRAY_W) + h*(W_L2/ARRAY_W) + wo;
				for (unsigned int kwi = 0; kwi < ARRAY_W; kwi++) { 
					#pragma HLS unroll
					unsigned int global_khw = ((hmo*H_L2+h)*(W/ARRAY_W)*K + (wmo*(W_L2/ARRAY_W)+wo)*K + (kmo*K_L2+ko))*ARRAY_W + kwi;
					conv_out[global_khw] = stream_buffer[ko][kwi] + output_l2[khw][kwi];
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
	DPTYPE weight_l2[WEIGHT_L2_SIZE][ARRAY_K];
	DPTYPE data_l2[DATA_L2_SIZE][ARRAY_W];
	MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_W];
	MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][ARRAY_W];
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
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)

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
						C_L2, H_L2, W_L2, H_in_L2, W_in_L2,
						C, H_in, W_in);


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


			DPTYPE weight_l1[WEIGHT_L1_SIZE][ARRAY_K];
			DPTYPE data_l1[DATA_L1_SIZE][ARRAY_W];
			MACTYPE output_regfile[ARRAY_W][ARRAY_K];

			#pragma HLS ARRAY_PARTITION variable=weight_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_regfile dim=0 complete
			
			runWeightL2toL1(weight_l1, weight_l2,
				C_L2, R_L2, S_L2, C_L1,
				ko, co, ro, so);
			runDataL2toL1(
				data_l1,
				data_l2,
				C_L1, W_in_L2, H_in_L2,
				co, ho, wo, ro, so);
			runSIMD(
				weight_l1,
				data_l1,
				output_regfile,
				K_L1, C_L1);
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
						K_L2, H_L2, W_L2, K, H, W);
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

