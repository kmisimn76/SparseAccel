

#ifndef _CONVOLUTION_H
#define _CONVOLUTION_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define CEIL(x,y) ((x/y)+((x%y==0)?(0):(1)))

#ifndef TESTBENCH
#include "ap_axi_sdata.h"
#include "ap_int.h"
#include "hls_stream.h"
#endif


typedef  unsigned int	 uint;
typedef  unsigned short  ushort;
typedef  unsigned char   uchar;

typedef char DPTYPE;  // data path type
typedef int  MACTYPE;


#endif

