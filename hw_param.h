/*
 * ------------------------------------------------------
 *
 *   PipeCNN: An OpenCL-Based FPGA Accelerator for CNNs
 *
 * ------------------------------------------------------
 * Filename:
 *   - hw_param.cl
 *
 * Author(s):
 *   - Dong Wang, wangdong@m.bjtu.edu.cn
 *
 * History:
 *   - v1.3 Win-Buffer-Based Implementation
 * ------------------------------------
 *
 *   Copyright (C) 2019, Institute of Information Science,
 *   Beijing Jiaotong University. All rights reserved.
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 *
 */

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
