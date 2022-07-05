
#ifndef _MAXPOOL_H
#define _MAXPOOL_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#ifndef TESTBENCH
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#endif

#define RELU//need to remove
/***********************************fpga buffer size ****************************/
#define RS_MAX 7	//RESNET50 conv1, do not change
#define K_MAX 4096	//VGG16 fc1, do not change

#define TILESIZE_WH_MAX (7*4)
#define TILENUM_KC_MAX 4
#define TILENUM_K_MAX 4
#define TILENUM_C_MAX 4
#define L1_TILENUM_WH_MAX 1


//typedef  unsigned int    uint;
#define uint unsigned int
typedef  unsigned short  ushort;
typedef  unsigned char   uchar;

//#define HOST_DEBUG
//float hack
#ifdef HOST_DEBUG
	// Define the precision of the data-path
	typedef float DPTYPE;  // data path type
	typedef float  MACTYPE;
	typedef float  REALTYPE;
	typedef float  ELTWISETYPE;
	#define DP_WIDTH 32    // data path width
	#define MAC_WIDTH 32
	#define REAL_WIDTH 32 //? how works ap_fixed?
#define REAL_WIDTH 32 //? how works ap_fixed?

	#define DPTYPE_MAX 3.402823466e+38
	#define DPTYPE_MIN -3.402823466e+38

	#define ROUND_FIX_GOLD 0
	#define ROUND_FIX 0
#else
	// Define the precision of the data-path
	typedef char DPTYPE;  // data path type
	typedef int  MACTYPE;
	#ifndef XILINX
	typedef float  REALTYPE;
	typedef float  ELTWISETYPE;
	//typedef ap_ufixed<32, 18, AP_RND>  REALTYPE;//VGG16
	//typedef ap_fixed<32, 18, AP_RND>  ELTWISETYPE;//RESNET
	//typedef ap_ufixed<32, 16, AP_RND, AP_SAT>  REALTYPE;
	//32:total bit
	//16:bit with represent integer part
	#endif
	#define DP_WIDTH 8    // data path width
	#define MAC_WIDTH 32
	#define REAL_WIDTH 32 //? how works ap_fixed?

	#define DPTYPE_MAX 127
	#define DPTYPE_MIN -127
	#define ROUND_FIX ((REALTYPE)(0.5))
	#define ROUND_FIX_ELTWISE ((ELTWISETYPE)(0.5))
	#define ROUND_FIX_GOLD 0.5

#endif

//#define VEC_SIZE 16 // smaller than ARRAY_C,ARRAY_K

//typedef ap_axiu<512,0,0,0> k2k_data;
#ifndef XILINX
//typedef ap_axiu<VEC_SIZE*32,0,0,0> k2k_data;
#endif
typedef struct {
    uint K;
    uint C;
    uint WH;
    uint WH_out;//ignore stride
    uint WH_in;
    uint RS;
	uint L2_TILENUM_K;///
	uint L2_TILENUM_C;
    uint L2_TILENUM_W; // W Size of a tile
    uint L2_TILENUM_H;
    uint L2_TILENUM_R;
    uint L2_TILENUM_S;
    uint K_L2;
    uint C_L2;
    uint W_out_L2;
    uint H_out_L2;
    uint W_L2;
    uint H_L2;
    uint W_in_L2;
    uint H_in_L2;
    uint R_L2;
    uint S_L2;
	uint L1_TILENUM_K;///
	uint L1_TILENUM_C;
    uint L1_TILENUM_W; // W Size of a tile
    uint L1_TILENUM_H;
    uint L1_TILENUM_R;
    uint L1_TILENUM_S;
    uint K_L1;
    uint C_L1;
    uint W_L1;
    uint H_L1;
    uint W_in_L1;
    uint H_in_L1;
    uint R_L1;
    uint S_L1;
    uint TILESIZE_W; // W Size of a tile
    uint TILESIZE_H;
    uint TILESIZE_R; //must be 1
    uint TILESIZE_S; //must be 1

    uint Padding_in;
    uint Padding_out;
    uint Stride;
    uint Stride_shift;

    float quant;

    //for fc layer only
    uint WHC;

    //for eltwise only?
    uint data_size;
    uint isLastEltwise;
    float quant2;
    float requant;

} NPU_PARAM;
#endif

//Use Relu
//#define RELU
