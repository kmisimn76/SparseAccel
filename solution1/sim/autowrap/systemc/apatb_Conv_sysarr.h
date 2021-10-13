// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_Conv_sysarr (
hls::stream<int > bias_in,
hls::stream<int > weight_in,
hls::stream<int > data_in,
hls::stream<int > conv_out);
