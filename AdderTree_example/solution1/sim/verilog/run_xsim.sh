
/home/sumin/tools/Xilinx/Vivado/Vivado/2020.1/bin/xelab xil_defaultlib.apatb_adder_tree_large_top glbl -prj adder_tree_large.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver -L xpm  --lib "ieee_proposed=./ieee_proposed" -s adder_tree_large 
/home/sumin/tools/Xilinx/Vivado/Vivado/2020.1/bin/xsim --noieeewarnings adder_tree_large -tclbatch adder_tree_large.tcl

