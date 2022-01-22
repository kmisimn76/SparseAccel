############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Systolic_Array_PCNN_based
set_top Conv_sysarr
add_files Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp
add_files Systolic_Array_PCNN_based/hw_param.h
add_files -tb Systolic_Array_PCNN_based/test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcu200-fsgd2104-2-e}
create_clock -period 10 -name default
source "./Systolic_Array_PCNN_based/solution1/directives.tcl"
csim_design -O
csynth_design
cosim_design -O -trace_level all
export_design -rtl verilog -format ip_catalog
