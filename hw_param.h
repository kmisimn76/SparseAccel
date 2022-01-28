

#ifndef _HW_PARAM_H
#define _HW_PARAM_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

 // do not include these headers for host program, may cause compilation ERROR
#ifndef XILINX
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#endif


typedef  unsigned int    uint;
typedef  unsigned short  ushort;
typedef  unsigned char   uchar;

// Define the precision of the data-path
typedef char DPTYPE;  // data path type
typedef int  MACTYPE;
#define DP_WIDTH 8    // data path width
#define MAC_WIDTH 32

#define VEC_SIZE 16 // smaller than ARRAY_C,ARRAY_K
//typedef ap_axiu<512,0,0,0> k2k_data;
#ifndef XILINX
typedef ap_axiu<VEC_SIZE*32,0,0,0> k2k_data;
#endif
typedef struct {
    uint K;
    uint C;
    uint WH;
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
} NPU_PARAM;
#endif

