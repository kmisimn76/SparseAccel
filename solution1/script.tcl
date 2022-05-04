############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Systolic_Array_TEST_PCNN_based
set_top Conv_sysarr
add_files Systolic_Array_TEST_PCNN_based/conv_sysarr_dbbuf.cpp -cflags "-DARRAY_K=16 -DARRAY_C=16 -DVEC_SIZE=16 -DBLOCK_SIZE=4 -DPORT_NUM=8"
add_files Systolic_Array_TEST_PCNN_based/hw_param.h
open_solution "solution1" -flow_target vivado
set_part {xcu200-fsgd2104-2-e}
create_clock -period 10 -name default
config_export -format xo -rtl verilog -vivado_optimization_level 0 -vivado_phys_opt none -vivado_report_level 0
source "./Systolic_Array_TEST_PCNN_based/solution1/directives.tcl"
#csim_design -clean
csynth_design
#cosim_design -O -wave_debug -trace_level all
export_design -rtl verilog -format xo
