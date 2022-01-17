

#ifndef _HW_PARAM_H
#define _HW_PARAM_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

 // do not include these headers for host program, may cause compilation ERROR
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"


typedef  unsigned int    uint;
typedef  unsigned short  ushort;
typedef  unsigned char   uchar;

// Define the precision of the data-path
typedef char DPTYPE;  // data path type
typedef int  MACTYPE;
#define DP_WIDTH 8    // data path width
#define MAC_WIDTH 32

#define VEC_SIZE 4
//typedef ap_axiu<32,0,0,0> k2k_data;
typedef ap_axiu<VEC_SIZE*32,0,0,0> k2k_data;

#endif
