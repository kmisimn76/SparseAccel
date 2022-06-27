
#include "hw_param.h"

// using macro in PRAGMA
#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)

#define   BIAS_L2_SIZE 128
#ifndef WEIGHT_L2_SIZE
	#define WEIGHT_L2_SIZE (2304/PORT_K)
#endif
#ifndef	  DATA_L2_SIZE
	#define   DATA_L2_SIZE (2304/PORT_C) //2048//180 //256 //2048 / PORT_NUM + a
#endif
#ifndef OUTPUT_L2_SIZE
	#define OUTPUT_L2_SIZE (1600/PORT_K) //1568//98 //196 //1568 / PORT_NUM
#endif
#ifndef WEIGHT_L1_SIZE
	#define WEIGHT_L1_SIZE (288/PORT_K)
#endif
#ifndef DATA_L1_SIZE
	#define   DATA_L1_SIZE (288/PORT_C) //256//32 //256/PORT //196 //49
#endif
//#define OUTPUT_L1_SIZE (288/PORT_NUM) //256//32 //256/PORT //196 //49


			
#ifndef XILINX
extern "C" {
#endif

void convolution(
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
		DO_PRAGMA(HLS INTERFACE m_axi port=bias_in offset=slave bundle=gmem0)
		DO_PRAGMA(HLS INTERFACE m_axi port=weight_in offset=slave bundle=gmem1)
		DO_PRAGMA(HLS INTERFACE m_axi port=data_in offset=slave bundle=gmem2)
		DO_PRAGMA(HLS INTERFACE m_axi port=conv_out offset=slave bundle=gmem3)

	#pragma HLS expression_balance

	printf("Args: ");
	printf("%u,%u,%u,%u,%u,%u,%u,%u\n", K, C, H, W, H_in,W_in, R,S);
	printf("%3d,%3d,%3d,%3d        ,%3d,%3d\n", L2_TILENUM_K, L2_TILENUM_C, L2_TILENUM_H, L2_TILENUM_W, L2_TILENUM_R, L2_TILENUM_S);
	printf("%3d,%3d,%3d,%3d,%3d,%3d,%3d,%3d\n", K_L2, C_L2, H_L2, W_L2, H_in_L2, W_in_L2, R_L2, S_L2);
	printf("%3d,%3d,%3d,%3d        ,%3d,%3d\n", L1_TILENUM_K, L1_TILENUM_C, L1_TILENUM_W, L1_TILENUM_H, L1_TILENUM_R, L1_TILENUM_S);
	printf("%3d,%3d,%3d,%3d,%3d,%3d,%3d,%3d\n", K_L1, C_L1, H_L1, W_L1, H_in_L1, W_in_L1, R_L1, S_L1);
	printf("%3d,%3d,%3d,%3d,        %3d,%3d \n", TILESIZE_K, TILESIZE_C, TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S);
	
	//weight stationary
	#ifdef __SYNTHESIS__
	DPTYPE bias_l2[ARRAY_K][BIAS_L2_SIZE];
	DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE];
	DPTYPE data_l2[DATA_L2_SIZE][PORT_NUM][ARRAY_C];
	MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_NUM][ARRAY_K];
	MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][PORT_NUM][ARRAY_K];
	#endif
	//output stationary
	#ifdef __SYNTHESIS__
	DPTYPE bias_l2[BIAS_L2_SIZE][ARRAY_K];
	DPTYPE weight_l2[WEIGHT_L2_SIZE][PORT_C][ARRAY_K];
	DPTYPE data_l2[DATA_L2_SIZE][PORT_C][ARRAY_W];
	MACTYPE output_l2[OUTPUT_L2_SIZE][PORT_K][ARRAY_W];
	MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][PORT_K][ARRAY_W];
	#endif

	//weight stationary
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=1 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=1 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=3 complete)
	DO_PRAGMA(HLS ARRAY_RESHAPE variable=data_l2 complete dim=3)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=2 complete)
	DO_PRAGMA(HLS ARRAY_RESHAPE variable=data_l2 complete dim=2)
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
	//output stationary
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=3 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=3 complete)


	//weight stationary
	const uint input_rows = TILESIZE_H * TILESIZE_W + (ARRAY_K - 1) + (ARRAY_C - 1); // inner loop with sysarr bubble
	const uint bubble = (ARRAY_K - 1) + (ARRAY_C - 1);
	const uint bubble_h = 0; //bubble / TILESIZE_W; //not be used
	const uint bubble_w = 0; //bubble % TILESIZE_W; //not be used

	//weight stationary
	BIAS_DRAM_READ: for (unsigned int ko = 0; ko < K/VEC_SIZE; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			#pragma HLS unroll
			unsigned int global_k = (ko)*VEC_SIZE + ki;
			unsigned int v = ki;
			//bias_l2[ko][ki] = bias_in[global_k];
			bias_l2[ki][ko] = bias_in[global_k];
		}
	}
	BIAS_DRAM_WRITE_K: for (unsigned int ko = 0; ko < K/VEC_SIZE; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		BIAS_DRAM_WRITE_H: for (int wh = 0; wh < WH*WH; wh++) {
		#pragma HLS loop_tripcount min=49 max=49
			for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
				unsigned int global_khw = (ko*WH*WH+wh)*VEC_SIZE + ki;
				unsigned int global_k = (ko)*VEC_SIZE + ki;
				unsigned int v = ki;
				conv_out[global_khw] = bias_l2[ki][ko];
			}
		}
	}
	//output stationary
	BIAS_DRAM_READ: for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
		for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
			#pragma HLS unroll
			unsigned int global_k = (ko)*ARRAY_K + ki;
			bias_l2[ko][ki] = bias_in[global_k];
		}
	}
	for (int wh = 0; wh < H*(W/ARRAY_W); wh++) {
		#pragma HLS loop_tripcount min=49 max=49
		for (unsigned int ko = 0; ko < K/ARRAY_K; ko++) {
			for (unsigned int ki = 0; ki < ARRAY_K; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
				#pragma HLS loop_tripcount min=1 max=1
				for (unsigned int wi = 0; wi < ARRAY_W; wi++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
					//unsigned int global_khw = ((ko*ARRAY_K+ki)*H*(W/ARRAY_W)+wh)*ARRAY_W + wi;
					//unsigned int global_khw = ((hmo*H_L2+h)*(W/ARRAY_W)*K/PORT_K + (wmo*(W_L2/ARRAY_W)+wo)*K/PORT_K + (kmo*K_L2/PORT_K+ko))*ARRAY_W*PORT_K + kwi;
					unsigned int global_khw = (wh*K+(ko*ARRAY_K+ki))*ARRAY_W + wi;
					conv_out[global_khw] = bias_l2[ko][ki];
				}
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
		#pragma HLS stable variable=conv_out
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

		// Read Input from DRAM
		input_dram_read(data_l2, data_in,
						cmo, hmo, wmo,
						C_L2, H_L2, W_L2, H_in_L2, W_in_L2, H_in, W_in, C);


//		uint weight_l2_ptr_k = 0;
//		uint output_l2_ptr_k = 0;
		LOOP_K_OUTER: for (int ko = 0; ko < L1_TILENUM_K; ko++) {
		#pragma HLS loop_tripcount min=1 max=1
//		uint weight_l2_ptr_c = 0;
//		uint data_l2_ptr_c = 0;
		LOOP_C_OUTER: for (int co = 0; co < L1_TILENUM_C; co++) {
		#pragma HLS loop_tripcount min=1 max=1
//		uint output_l2_ptr_h = 0;
//		uint data_l2_ptr_h = 0;
		LOOP_H_OUTER: for (int ho = 0; ho < L1_TILENUM_H; ho++) { // TODO: Tiling
		#pragma HLS loop_tripcount min=1 max=1
//		uint output_l2_ptr_w = 0;
//		uint data_l2_ptr_w = 0;
		LOOP_W_OUTER: for (int wo = 0; wo < L1_TILENUM_W; wo++) { // TODO: Tiling
		#pragma HLS loop_tripcount min=1 max=1
//		uint weight_l2_ptr_r = 0;
//		uint data_l2_ptr_r = 0;
		LOOP_R_OUTER: for (int ro = 0; ro < L1_TILENUM_R; ro++) { // TODO: Tiling
		#pragma HLS loop_tripcount min=3 max=3
//		uint weight_l2_ptr_s = 0;
		LOOP_S_OUTER: for (int so = 0; so < L1_TILENUM_S; so++) { // TODO: Tiling
		#pragma HLS loop_tripcount min=3 max=3
			// L2->L1
			#pragma HLS stable variable=output_l2
			#pragma HLS stable variable=output_l2_reduction
			#pragma HLS stable variable=data_l2
			#pragma HLS stable variable=weight_l2
			#pragma HLS dataflow
//			uint weight_l2_ptr = weight_l2_ptr_k + weight_l2_ptr_c + weight_l2_ptr_r + weight_l2_ptr_s;
//			uint data_l2_ptr = data_l2_ptr_c + data_l2_ptr_h + data_l2_ptr_r + data_l2_ptr_w;
//			uint output_l2_ptr = output_l2_ptr_k + output_l2_ptr_h + output_l2_ptr_w;

			bool isFirst;
			if(co==0 && ro==0 && so==0) isFirst = true; // first iteration of a output
			else isFirst = false;


			//weight stationary
			DPTYPE weight_regfile[ARRAY_K][ARRAY_C];
			DPTYPE data_l1[DATA_L1_SIZE][PORT_NUM][ARRAY_C];
		    short data_l1_bitvec[DATA_L1_SIZE][PORT_NUM][ARRAY_C/BLOCK_SIZE];
		    short data_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE];
            short max_bitvec_length[PORT_NUM];
		    short output_l1_bitvec[DATA_L1_SIZE][PORT_NUM][ARRAY_C/BLOCK_SIZE];
		    short output_l1_length[PORT_NUM][ARRAY_C/BLOCK_SIZE];
			static MACTYPE output_l1[OUTPUT_L1_SIZE][PORT_NUM][ARRAY_K][ARRAY_C/BLOCK_SIZE];
			static MACTYPE output_l1_local[OUTPUT_L1_SIZE][PORT_NUM][ARRAY_K][ARRAY_C/BLOCK_SIZE];
			//output stationary
			DPTYPE weight_l1[WEIGHT_L1_SIZE][PORT_C][ARRAY_K][ARRAY_W/BLOCK_SIZE]; //BLOCK_SIZE: duplication
			DPTYPE data_l1[DATA_L1_SIZE][PORT_C][ARRAY_W];
			short data_l1_bitvec[DATA_L1_SIZE][PORT_C][ARRAY_W/BLOCK_SIZE];
			short data_l1_length[PORT_C][ARRAY_W/BLOCK_SIZE];
			short max_bitvec_length[PORT_C];
			MACTYPE output_regfile[ARRAY_W][ARRAY_K];


			//weight stationary
    #pragma HLS reset variable=output_l1
    #pragma HLS reset variable=output_l1_local
			#pragma HLS ARRAY_PARTITION variable=weight_regfile dim=0 complete //register
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_bitvec dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_bitvec dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_length dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1_length dim=1 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_bitvec dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_bitvec dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_length dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_length dim=1 complete
			#pragma HLS ARRAY_PARTITION variable=max_bitvec_length dim=1 complete
            // more port
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=4 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=4 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=2 complete
			/*#pragma HLS ARRAY_PARTITION variable=output_l1 dim=0 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=0 complete*/

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
			//output stationary
			#pragma HLS ARRAY_PARTITION variable=weight_l1 dim=4 complete
			#pragma HLS ARRAY_PARTITION variable=weight_l1 dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=weight_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=3 complete
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_regfile dim=0 complete //register
				#pragma HLS ARRAY_PARTITION variable=data_l1_bitvec dim=3 complete
				#pragma HLS ARRAY_PARTITION variable=data_l1_bitvec dim=2 complete
				#pragma HLS ARRAY_PARTITION variable=data_l1_length dim=2 complete
				#pragma HLS ARRAY_PARTITION variable=data_l1_length dim=1 complete
				#pragma HLS ARRAY_PARTITION variable=max_bitvec_length dim=1 complete

			//weight stationary
			//Systolic Array
			runWeight2Reg(weight_regfile, weight_l2, C_L2, R_L2, S_L2, ko, co, ro, so);
			runDataL2toL1_bitvec(data_l1, data_l1_bitvec, data_l1_length, max_bitvec_length, data_l2, TILESIZE_H, TILESIZE_W, co, ho, wo, ro, so, W_in_L2, H_in_L2);
			runSIMD_bitvec(weight_regfile, data_l1,
					data_l1_bitvec, data_l1_length, max_bitvec_length,
					output_l1_bitvec, output_l1_length,
					output_l1_local, output_l1,
						input_rows,
						bubble_h, bubble_w,
						TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S, isFirst);
			runOutputL1toL2(output_l1, output_l2, output_l2_reduction, output_l1_bitvec, output_l1_length, TILESIZE_H, TILESIZE_W, ko, ho, wo, W_L2, H_L2, isFirst);
			//output stationary
			//Systolic Array
			//int weight_l2_ptr = ko*(C_L2/PORT_C)*R_L2*S_L2 + co *(C_L1/PORT_C)*R_L2*S_L2 + r*S_L2 + s
			//uint weight_l2_ptr = weight_l2_ptr_k + weight_l2_ptr_c + weight_l2_ptr_r + weight_l2_ptr_s;
			runWeightL2toL1(weight_l1, weight_l2,
				C_L2, R_L2, S_L2, C_L1,
				ko, co, ro, so);
//				weight_l2_ptr);
			//int data_l2_ptr = co*(C_L1/PORT_C)*H_in*CEIL(W_in,ARRAY_W) + (ho + ro)*CEIL(W_in,ARRAY_W) + (wo);
			//uint data_l2_ptr = data_l2_ptr_c + data_l2_ptr_h + data_l2_ptr_r + data_l2_ptr_w;
			runDataL2toL1_bitvec(
				data_l1, data_l1_bitvec, data_l1_length, max_bitvec_length,
				data_l2,
				C_L1, W_in_L2, H_in_L2,
				co, ho, wo, ro, so);
//				data_l2_ptr);
			runSIMD_bitvec(
				weight_l1,
				data_l1,
				data_l1_bitvec,
				data_l1_length,
				max_bitvec_length,
				output_regfile,
				TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S,
				isFirst);
			//int output_l2_ptr = ho*(W_L2/ARRAY_W)+ wo + (ko*(ARRAY_K/PORT_K)*H_L2*(W_L2/ARRAY_W));
			//uint output_l2_ptr = output_l2_ptr_k + output_l2_ptr_h + output_l2_ptr_w;
			runOutputRegtoL2(output_regfile, output_l2,
				W_L2, H_L2,
				ko, ho, wo, isFirst);
//				output_l2_ptr);

//		    weight_l2_ptr_s += 1; //so
		} // Loop S
//		    weight_l2_ptr_r += S_L2; //ro
//		    data_l2_ptr_r += CEIL(W_in,ARRAY_W); //ro
		} // Loop R
//		    data_l2_ptr_w += 1; //wo
//		    output_l2_ptr_w += 1; //wo
		} // Loop W
//		    data_l2_ptr_h += CEIL(W_in,ARRAY_W); //ho
//		    output_l2_ptr_h += (W_L2/ARRAY_W); //ho
		} // Loop H
//		    weight_l2_ptr_c += (C_L1/PORT_C)*R_L2*S_L2; //co
//		    data_l2_ptr_c += (C_L1/PORT_C)*H_in*CEIL(W_in,ARRAY_W); //ko
		} // Loop C
//		    weight_l2_ptr_k += (C_L2/PORT_C)*R_L2*S_L2; //ko
//		    output_l2_ptr_k += (ARRAY_K/PORT_K)*H_L2*(W_L2/ARRAY_W); //ko
		} // Loop K

		output_dram_write(output_l2, conv_out,
						kmo, hmo, wmo,
						K_L2, H_L2, W_L2, H, W, K);
	}
	}
	}
	}
	}
	}
}
#ifndef XILINX
}
#endif
