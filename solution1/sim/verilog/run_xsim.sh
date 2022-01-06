
/home/sumin/tools/Xilinx/Vivado/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_Conv_sysarr_dbbuf_top glbl -prj Conv_sysarr_dbbuf.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  --lib "ieee_proposed=./ieee_proposed" -s Conv_sysarr_dbbuf 
/home/sumin/tools/Xilinx/Vivado/Vivado/2020.1/bin/xsim --noieeewarnings Conv_sysarr_dbbuf -tclbatch Conv_sysarr_dbbuf.tcl

