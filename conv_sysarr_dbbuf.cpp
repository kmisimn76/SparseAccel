
#include "hw_param.h"

//#define INPUT_SPARSE

// using macro in PRAGMA
#define PRAGMA_SUB(x) _Pragma (#x)
#define DO_PRAGMA(x) PRAGMA_SUB(x)

//#define   BIAS_DRAM_DEPTH 1280
//#define WEIGHT_DRAM_DEPTH 23040
//#define   DATA_DRAM_DEPTH 20480
//#define OUTPUT_DRAM_DEPTH 15680
#define   DATA_L2_SIZE 2048
#define WEIGHT_L2_SIZE 2304
#define OUTPUT_L2_SIZE 1568
//#define   DATA_L2_SIZE 817216
//#define WEIGHT_L2_SIZE 589824
//#define OUTPUT_L2_SIZE 802816
#define   BIAS_L2_SIZE 128
#define   DATA_L1_SIZE 196 //49
#define WEIGHT_L1_SIZE -1
#define OUTPUT_L1_SIZE 196 //49
#define STREAM_BUFFER_SIZE 32 // <= L2 WH(WH_in) size


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
#ifdef INPUT_SPARSE
void runDataL2toL1_bitvec(DPTYPE (*data_l1)[ARRAY_C], hls::stream<short> data_l1_bitvec[ARRAY_C], DPTYPE (*data_l2)[ARRAY_C], uint TILESIZE_H,
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
				if(data_l1[hi * TILESIZE_W + wi][ci] != 0)
					data_l1_bitvec[ci].write_nb(hi * TILESIZE_W + wi);
			}
		}
	}
}
#endif


void runOutputL1toL2(MACTYPE (*output_l1)[ARRAY_K], MACTYPE (*output_l2)[ARRAY_K], MACTYPE (*output_l2_reduction)[ARRAY_K],
		uint TILESIZE_H, uint TILESIZE_W, uint ko, uint ho, uint wo, uint W, uint H, bool isFirst) {
#pragma HLS dependence variable=output_l2
#pragma HLS dependence variable=output_l2_reduction
	LOOP_L2_H: for (int hi = 0; hi < TILESIZE_H; hi++) {
		#pragma HLS loop_tripcount min=7 max=7
		LOOP_L2_W: for (int wi = 0; wi < TILESIZE_W; wi++) {
			#pragma HLS loop_tripcount min=7 max=7
			for (int ki = 0; ki < ARRAY_K; ki++) { // place unroll to inner-most
				#pragma HLS unroll
				int k = (ko * ARRAY_K + ki);
				int h = (ho * TILESIZE_H + hi);
				int w = (wo * TILESIZE_W + wi);
				MACTYPE temp;
				if(isFirst)
					temp = 0;
				else
					temp = output_l2_reduction[ko * H * W + h * W + w][ki];
				temp += output_l1[hi * TILESIZE_W + wi][ki];
				output_l2[ko * H * W + h * W + w][ki]
						= temp;
				output_l2_reduction[ko * H * W + h * W + w][ki]
						= temp;
			}
		}
	}
}

void doSysArrPE(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE (*data_l1)[ARRAY_C],
		DPTYPE data_reg[ARRAY_K][ARRAY_C], MACTYPE output_reg[ARRAY_K][ARRAY_C],
		MACTYPE (*output_l1_local)[ARRAY_K], MACTYPE (*output_l1)[ARRAY_K],
		uint hi, uint wi, uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S, bool isFirst) {
#pragma HLS inline //for pipelining
	// Push Input
	int i = hi*TILESIZE_W + wi;
	DPTYPE input_data[ARRAY_C];
	#pragma HLS array_partition variable=input_data complete
	for (int ci = 0; ci < ARRAY_C; ci++) {
		#pragma HLS unroll
		//int hi = (i - ci) / TILESIZE_W;
		//int wi = (i - ci) % TILESIZE_W;
		if (i - ci >= 0)
			//input_data[ci] = data_l1[hi * TILESIZE_W + wi][ci];
			input_data[ci] = data_l1[i - ci][ci];
		else
			input_data[ci] = 0; //Bubble
	}

	// SysArr
	for (int ki = ARRAY_K - 1; ki >= 0; ki--) { // SysArr DIM : K
		#pragma HLS unroll
		for (int ci = ARRAY_C - 1; ci >= 0; ci--) { // SysArr DIM : C
			#pragma HLS unroll
			data_reg[ki][ci] =
					(ki == 0) ? (input_data[ci]) : (data_reg[(ki - 1)][ci]);
			MACTYPE psum =
					(ci == 0) ?
							(0) : (output_reg[ki][(ci - 1)]);
			output_reg[ki][ci] = psum
					+ (data_reg[ki][ci]	* weight_regfile[ki][ci]);
		}
	}

	// Pull Output
	for (int ki = ARRAY_K - 1; ki >= 0; ki--) {
		#pragma HLS unroll
		if ((i - ARRAY_C + 1) - ki >= 0 && (i - ARRAY_C + 1) - ki < TILESIZE_W * TILESIZE_H) { //is needed?
			//MACTYPE tmp = (isFirst)?(0):(output_l1_local[(i - ARRAY_C + 1) - ki][ki]);
			//output_l1_local[(i - ARRAY_C + 1) - ki][ki] =
			//						tmp + output_reg[ki][(ARRAY_C - 1)];
			//output_l1[((i - ARRAY_C + 1) - ki)][ki] = output_l1_local[(i - ARRAY_C + 1) - ki][ki];
			output_l1[((i - ARRAY_C + 1) - ki)][ki] = output_reg[ki][(ARRAY_C - 1)];
		}
	}
}
void runSysArr(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE (*data_l1)[ARRAY_C],
		MACTYPE (*output_l1_local)[ARRAY_K], MACTYPE (*output_l1)[ARRAY_K],
		int input_rows,
		int bubble_h, int bubble_w,
		uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S,
		bool isFirst) {

	DPTYPE data_reg[ARRAY_K][ARRAY_C];
	#pragma HLS dependence variable=data_reg
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
	#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
	#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete  // Register
	LOOP_R_INNER: for (int ri = 0; ri < TILESIZE_R; ri++) {
		#pragma HLS LOOP_TRIPCOUNT max=1 min=1
		LOOP_S_INNER: for (int si = 0; si < TILESIZE_S; si++) {
			#pragma HLS LOOP_TRIPCOUNT max=1 min=1
			#pragma HLS loop_flatten
			LOOP_INPUT_ROW: for (int i = 0; i < input_rows; i++) {
			#pragma HLS LOOP_TRIPCOUNT max=55 min=55
				{
			/*LOOP_H_INNER: for (int hi = 0; hi <= TILESIZE_H + bubble_h; hi++) {
				#pragma HLS LOOP_TRIPCOUNT max=8 min=8
				LOOP_W_INNER: for (int wi = 0; wi < TILESIZE_W; wi++) {
					#pragma HLS LOOP_TRIPCOUNT max=7 min=7*/
					#pragma HLS DEPENDENCE variable=output_l1
					#pragma HLS DEPENDENCE variable=output_l1_local
					#pragma HLS pipeline rewind
					#pragma HLS latency min=1 max=1 // systolic array implementation
					int hi = (i) / TILESIZE_W;
					int wi = (i) % TILESIZE_W;
					doSysArrPE(weight_regfile, data_l1,
							data_reg, output_reg,
							output_l1_local, output_l1,
							hi, wi, TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S, isFirst);
				}
			}
		}
	}
}

void runSIMD(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE (*data_l1)[ARRAY_C],
		MACTYPE (*output_l1_local)[ARRAY_K], MACTYPE (*output_l1)[ARRAY_K],
		int input_rows,
		int bubble_h, int bubble_w,
		uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S,
		bool isFirst) {

	DPTYPE data_reg[ARRAY_K][ARRAY_C];
	#pragma HLS dependence variable=data_reg
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
	#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
	#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete  // Register
	LOOP_R_INNER: for (int ri = 0; ri < TILESIZE_R; ri++) {
		#pragma HLS LOOP_TRIPCOUNT max=1 min=1
		LOOP_S_INNER: for (int si = 0; si < TILESIZE_S; si++) {
			#pragma HLS LOOP_TRIPCOUNT max=1 min=1
			//#pragma HLS loop_flatten
			LOOP_H_INNER: for (int hi = 0; hi < TILESIZE_H; hi++) {
				#pragma HLS LOOP_TRIPCOUNT max=7 min=7
				LOOP_W_INNER: for (int wi = 0; wi < TILESIZE_W; wi++) {
					#pragma HLS LOOP_TRIPCOUNT max=7 min=7
					#pragma HLS DEPENDENCE variable=output_l1
					#pragma HLS DEPENDENCE variable=output_l1_local
					#pragma HLS pipeline rewind
					//#pragma HLS latency min=1 max=1 // systolic array implementation
					LOOP_K_INNER: for (int ki = 0; ki < ARRAY_K; ki++) {
						#pragma HLS unroll
						LOOP_C_INNER: for (int ci = 0; ci < ARRAY_C; ci++) {
							#pragma HLS unroll
							data_reg[ki][ci] = data_l1[hi * TILESIZE_W + wi][ci];
							//output_reg[ki][ci] = data_reg[ki][ci] * weight_regfile[ki][ci];
							output_reg[ki][ci] = data_reg[ki][ci] * weight_regfile[ki][ci];
						}
					}

					// reduction
					LOOP_REDUCTION_K: for (int ki = 0; ki < ARRAY_K; ki++) {
						#pragma HLS unroll
						MACTYPE sum = 0;
						LOOP_REDUCTION_C: for (int ci = 0; ci < ARRAY_C; ci++) {
							#pragma HLS unroll
							sum += output_reg[ki][ci];
						}
						output_l1[hi * TILESIZE_W + wi][ki] = sum;
					}
				}
			}
		}
	}
}
#ifdef INPUT_SPARSE
void runSIMD_bitvec(const DPTYPE weight_regfile[ARRAY_K][ARRAY_C], const DPTYPE (*data_l1)[ARRAY_C], hls::stream<short> data_l1_bitvec[ARRAY_C],
		MACTYPE (*output_l1_local)[ARRAY_K], MACTYPE (*output_l1)[ARRAY_K],
		int input_rows,
		int bubble_h, int bubble_w,
		uint TILESIZE_H, uint TILESIZE_W, uint TILESIZE_R, uint TILESIZE_S,
		bool isFirst) {

	DPTYPE data_reg[ARRAY_K][ARRAY_C];
	#pragma HLS dependence variable=data_reg
	MACTYPE output_reg[ARRAY_K][ARRAY_C];
	#pragma HLS ARRAY_PARTITION variable=data_reg dim=0 complete // Register
	#pragma HLS ARRAY_PARTITION variable=output_reg dim=0 complete  // Register
	LOOP_R_INNER: for (int ri = 0; ri < TILESIZE_R; ri++) {
		#pragma HLS LOOP_TRIPCOUNT max=1 min=1
		LOOP_S_INNER: for (int si = 0; si < TILESIZE_S; si++) {
			#pragma HLS LOOP_TRIPCOUNT max=1 min=1
			//#pragma HLS loop_flatten
			//LOOP_H_INNER: for (int hi = 0; hi < TILESIZE_H; hi++) {
				//#pragma HLS LOOP_TRIPCOUNT max=7 min=7
				//LOOP_W_INNER: for (int wi = 0; wi < TILESIZE_W; wi++) {
					//#pragma HLS LOOP_TRIPCOUNT max=7 min=7
				//for(int)
					#pragma HLS DEPENDENCE variable=output_l1
					#pragma HLS DEPENDENCE variable=output_l1_local
					#pragma HLS pipeline rewind
					//#pragma HLS latency min=1 max=1 // systolic array implementation
					LOOP_K_INNER: for (int ki = 0; ki < ARRAY_K; ki++) {
						#pragma HLS unroll
						LOOP_C_INNER: for (int ci = 0; ci < ARRAY_C; ci++) {
							#pragma HLS unroll
							data_reg[ki][ci] = data_l1[hi * TILESIZE_W + wi][ci];
							//output_reg[ki][ci] = data_reg[ki][ci] * weight_regfile[ki][ci];
							output_reg[ki][ci] = data_reg[ki][ci] * weight_regfile[ki][ci];
						}
					}

					// reduction
					LOOP_REDUCTION_K: for (int ki = 0; ki < ARRAY_K; ki++) {
						#pragma HLS unroll
						MACTYPE sum = 0;
						LOOP_REDUCTION_C: for (int ci = 0; ci < ARRAY_C; ci++) {
							#pragma HLS unroll
							sum += output_reg[ki][ci];
						}
						output_l1[hi * TILESIZE_W + wi][ki] = sum;
					}
				//}
			}
		}
	}
}
#endif

//DPTYPE bias_l2[BIAS_L2_SIZE][ARRAY_K];
DPTYPE bias_l2[ARRAY_K][BIAS_L2_SIZE];
//DPTYPE weight_l2[WEIGHT_L2_SIZE][ARRAY_K];
DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE];
DPTYPE data_l2[DATA_L2_SIZE][ARRAY_C];
MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_K];
MACTYPE output_l2_reduction[OUTPUT_L2_SIZE][ARRAY_K];



void weight_dram_read(DPTYPE weight_l2[ARRAY_K][WEIGHT_L2_SIZE], DPTYPE* weight_in,
						uint kmo, uint cmo, uint rmo, uint smo,
						uint K_L2, uint C_L2, uint R_L2, uint S_L2,
						uint L2_TILENUM_K, uint L2_TILENUM_C, uint L2_TILENUM_R, uint L2_TILENUM_S)
{
		WEIGHT_DRAM_READ:
		/*for (unsigned int ko = 0; ko < K_L2 / VEC_SIZE; ko++) {
			#pragma HLS	 loop_tripcount min=1 max=1
			for (unsigned int c = 0; c < C_L2; c++) {
				#pragma HLS loop_tripcount min=4 max=4
				for (unsigned int r = 0; r < R_L2; r++) {
					#pragma HLS loop_tripcount min=3 max=3
					for (unsigned int s = 0; s < S_L2; s++) {
						#pragma HLS loop_tripcount min=3 max=3*/
					for (unsigned int ko = 0; ko < (K_L2 / VEC_SIZE)*C_L2*R_L2*S_L2; ko++) { //burst read
					#pragma HLS loop_tripcount min=36 max=36
						#pragma HLS pipeline
						for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
							#pragma HLS unroll
						//	unsigned int global_kcrs = ((kmo*(K_L2/VEC_SIZE)+ko)*C*RS*RS + (cmo*C_L2+c)*RS*RS + (rmo*R_L2+r)*RS + (smo*S_L2 + s))*VEC_SIZE + ki;
						//	unsigned int kcrs = ko*C_L2*R_L2*S_L2 + c*R_L2*S_L2 + r*S_L2 + s;
							unsigned int global_kcrs = ((kmo*(L2_TILENUM_C)*(L2_TILENUM_R)*(L2_TILENUM_S)+cmo*(L2_TILENUM_R)*(L2_TILENUM_S)+rmo*(L2_TILENUM_S)+smo)
															*(K_L2/VEC_SIZE)*C_L2*R_L2*S_L2 + ko)*VEC_SIZE + ki; //burst read
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

void input_dram_read(DPTYPE data_l2[DATA_L2_SIZE][ARRAY_C], DPTYPE* data_in,
						uint cmo, uint hmo, uint wmo,
						uint C_L2, uint H_L2, uint W_L2, uint H_in_L2, uint W_in_L2, uint WH_in)
{
		INPUT_DRAM_READ: 
		for (unsigned int co = 0; co < C_L2/VEC_SIZE; co++) {
			#pragma HLS loop_tripcount min=1 max=1
			for(unsigned int h = 0; h < H_in_L2; h++) {
				#pragma HLS loop_tripcount min=9 max=9
				for(unsigned int w = 0; w < W_in_L2; w++) {
					#pragma HLS loop_tripcount min=9 max=9
					#pragma HLS pipeline
					for(unsigned int ci = 0; ci < VEC_SIZE; ci++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_C) / ARRAY_C
						#pragma HLS unroll
						unsigned int global_chw = ((cmo*(C_L2/VEC_SIZE)+co)*WH_in*WH_in + (hmo*H_L2+h)*WH_in + (wmo*W_L2+w))*VEC_SIZE + ci;
						unsigned int chw = co*H_in_L2*W_in_L2 + h*W_in_L2 + w;
						unsigned int v = ci;
						data_l2[chw][ci] = data_in[global_chw];
					}
				}
			}
		}
}
void output_dram_write(MACTYPE output_l2[OUTPUT_L2_SIZE][ARRAY_K], MACTYPE* conv_out,
						uint kmo, uint hmo, uint wmo,
						uint K_L2, uint H_L2, uint W_L2, uint WH)
{
		MACTYPE stream_buffer[STREAM_BUFFER_SIZE][VEC_SIZE];
		OUTPUT_DRAM_WRITE:
		for (unsigned int ko = 0; ko < (K_L2 / VEC_SIZE); ko++) {
			#pragma HLS loop_tripcount min=1 max=1
			for (unsigned int h = 0; h < H_L2; h++) {
				#pragma HLS loop_tripcount min=7 max=7
				/*for (unsigned int w = 0; w < W_L2; w++) {
					#pragma HLS loop_tripcount min=7 max=7
					#pragma HLS pipeline
					for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
						#pragma HLS unroll
						unsigned int global_khw = ((kmo*(K_L2/VEC_SIZE)+ko)*WH*WH + (hmo*H_L2+h)*WH + (wmo*W_L2+w))*VEC_SIZE + ki;
						unsigned int khw = ko*H_L2*W_L2 + h*W_L2 + w;
						unsigned int v = ki;
						//if(isFirst)
						//	//conv_out[global_khw] = output_l2[khw][ki] + bias_l2[ko][ki];
						//	conv_out[global_khw] = output_l2[khw][ki] + bias_l2[ki][ko];
						//else
							conv_out[global_khw] += output_l2[khw][ki];
					}
				}*/
				OUTPUT_DRAM_STREA_IN: for (unsigned int w = 0; w < W_L2; w++) {
					#pragma HLS loop_tripcount min=7 max=7
					#pragma HLS pipeline
					for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
						#pragma HLS unroll
						unsigned int global_khw = ((kmo*(K_L2/VEC_SIZE)+ko)*WH*WH + (hmo*H_L2+h)*WH + (wmo*W_L2+w))*VEC_SIZE + ki;
						unsigned int khw = ko*H_L2*W_L2 + h*W_L2 + w;
						unsigned int v = ki;
						//if(isFirst)
						//	//conv_out[global_khw] = output_l2[khw][ki] + bias_l2[ko][ki];
						//	conv_out[global_khw] = output_l2[khw][ki] + bias_l2[ki][ko];
						//else
							stream_buffer[w][ki] = conv_out[global_khw];
					}
				}
				OUTPUT_DRAM_STREA_OUT: for (unsigned int w = 0; w < W_L2; w++) {
					#pragma HLS loop_tripcount min=7 max=7
					#pragma HLS pipeline
					for (unsigned int ki = 0; ki < VEC_SIZE; ki++) { // TODO: split VECSIZE -> (VECSIZE/ARRAY_K) / ARRAY_K
						#pragma HLS unroll
						unsigned int global_khw = ((kmo*(K_L2/VEC_SIZE)+ko)*WH*WH + (hmo*H_L2+h)*WH + (wmo*W_L2+w))*VEC_SIZE + ki;
						unsigned int khw = ko*H_L2*W_L2 + h*W_L2 + w;
						unsigned int v = ki;
						//if(isFirst)
						//	//conv_out[global_khw] = output_l2[khw][ki] + bias_l2[ko][ki];
						//	conv_out[global_khw] = output_l2[khw][ki] + bias_l2[ki][ko];
						//else
							conv_out[global_khw] = stream_buffer[w][ki] + output_l2[khw][ki];
					}
				}
			}
		}
}

void Conv_sysarr(
		//NPU_PARAM param,
	    uint K,
	    uint C,
	    uint WH,
	    uint WH_in,
	    uint RS,
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

	//DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=bias_l2 dim=1 complete)
	//DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=weight_l2 dim=1 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=data_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2 dim=2 complete)
	DO_PRAGMA(HLS ARRAY_PARTITION variable=output_l2_reduction dim=2 complete)

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
    printf("Conv Sysarr set params\n");

    printf("Args: ");
    printf("%u,%u,%u,%u,%u,||,", K, C, WH, WH_in, RS);
    printf("%d,%d,%d,%d,%d,%d,||,", L2_TILENUM_K, L2_TILENUM_C, L2_TILENUM_W, L2_TILENUM_H, L2_TILENUM_R, L2_TILENUM_S);
    printf("%d,%d,%d,%d,%d,%d,%d,%d,||,", K_L2, C_L2, W_L2, H_L2, W_in_L2, H_in_L2, R_L2, S_L2);
    printf("%d,%d,%d,%d,%d,%d,||,", L1_TILENUM_K, L1_TILENUM_C, L1_TILENUM_W, L1_TILENUM_H, L1_TILENUM_R, L1_TILENUM_S);
    printf("%d,%d,%d,%d,%d,%d,%d,%d,||,", K_L1, C_L1, W_L1, H_L1, W_in_L1, H_in_L1, R_L1, S_L1);
    printf("%d,%d,%d,%d \n", TILESIZE_W, TILESIZE_H, TILESIZE_R, TILESIZE_S);

	const uint input_rows = TILESIZE_H * TILESIZE_W + (ARRAY_K - 1) + (ARRAY_C - 1); // inner loop with sysarr bubble
    printf("Conv Sysarr set params 2\n");
	const uint bubble = (ARRAY_K - 1) + (ARRAY_C - 1);
    printf("Conv Sysarr set params 3\n");
	const uint bubble_h = 0; //bubble / TILESIZE_W; //not be used
    printf("Conv Sysarr set params 4\n");
	const uint bubble_w = 0; //bubble % TILESIZE_W; //not be used
    printf("Conv Sysarr set params 5\n");


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
		//#pragma HLS dependence variable=output_l2

		weight_dram_read(weight_l2, weight_in,
						kmo, cmo, rmo, smo,
						K_L2, C_L2, R_L2, S_L2,
						L2_TILENUM_K, L2_TILENUM_C, L2_TILENUM_R, L2_TILENUM_S);
		// Read Input from DRAM
		input_dram_read(data_l2, data_in,
						cmo, hmo, wmo,
						C_L2, H_L2, W_L2, H_in_L2, W_in_L2, WH_in);

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
			#ifdef INPUT_SPARSE
			hls::stream<short> data_l1_bitvec[ARRAY_C];
			#endif
			MACTYPE output_l1[OUTPUT_L1_SIZE][ARRAY_K];
			static MACTYPE output_l1_local[OUTPUT_L1_SIZE][ARRAY_K];
			#pragma HLS ARRAY_PARTITION variable=weight_regfile dim=0 complete //register
			#pragma HLS ARRAY_PARTITION variable=data_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1 dim=2 complete
			#pragma HLS ARRAY_PARTITION variable=output_l1_local dim=2 complete

			//Systolic Array
			runWeight2Reg(weight_regfile, weight_l2, C_L2, R_L2, S_L2, ko, co, ro, so);
			#ifdef INPUT_SPARSE
			runDataL2toL1_bitvec(data_l1, data_l1_bitvec, data_l2, TILESIZE_H, TILESIZE_W, co, ho, wo, ro, so, W_in_L2, H_in_L2);
			#else
			runDataL2toL1(data_l1, data_l2, TILESIZE_H, TILESIZE_W, co, ho, wo, ro, so, W_in_L2, H_in_L2);
			#endif
			//#define SIMD
			#ifndef SIMD
			runSysArr(weight_regfile, data_l1, output_l1_local, output_l1,
						input_rows,
						bubble_h, bubble_w,
						TILESIZE_H, TILESIZE_W, TILESIZE_R, TILESIZE_S, isFirst);
			#else
				#ifdef INPUT_SPARSE
				runSIMD_bitvec(weight_regfile, data_l1, data_l1_bitvec, output_l1_local, output_l1,
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
			runOutputL1toL2(output_l1, output_l2, output_l2_reduction, TILESIZE_H, TILESIZE_W, ko, ho, wo, W_L2, H_L2, isFirst);
		} // Loop S
		} // Loop R
		}
		}
		}
		}

		output_dram_write(output_l2, conv_out,
						kmo, hmo, wmo,
						K_L2, H_L2, W_L2, WH);
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
