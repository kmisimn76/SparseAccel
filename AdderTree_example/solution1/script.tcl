############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project AdderTree_example
set_top adder_tree_large
add_files AdderTree_example/example.cpp
add_files -tb AdderTree_example/test.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu200-fsgd2104-2-e}
create_clock -period 10 -name default
config_interface  -default_slave_interface s_axilite -m_axi_addr64 -m_axi_alignment_byte_size 64  -m_axi_latency 64 -m_axi_max_widen_bitwidth 512 -m_axi_offset off -register_io off 
config_rtl   -module_auto_prefix  -register_reset_num 3 -reset control  -reset_level high
#source "./AdderTree_example/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
