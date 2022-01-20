set moduleName runSysArr
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {runSysArr}
set C_modelType { void 0 }
set C_modelArgList {
	{ weight_regfile_0_0_read int 8 regular  }
	{ weight_regfile_0_1_read int 8 regular  }
	{ weight_regfile_0_2_read int 8 regular  }
	{ weight_regfile_0_3_read int 8 regular  }
	{ weight_regfile_1_0_read int 8 regular  }
	{ weight_regfile_1_1_read int 8 regular  }
	{ weight_regfile_1_2_read int 8 regular  }
	{ weight_regfile_1_3_read int 8 regular  }
	{ weight_regfile_2_0_read int 8 regular  }
	{ weight_regfile_2_1_read int 8 regular  }
	{ weight_regfile_2_2_read int 8 regular  }
	{ weight_regfile_2_3_read int 8 regular  }
	{ weight_regfile_3_0_read int 8 regular  }
	{ weight_regfile_3_1_read int 8 regular  }
	{ weight_regfile_3_2_read int 8 regular  }
	{ weight_regfile_3_3_read int 8 regular  }
	{ data_l1buf_0 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l1buf_1 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l1buf_2 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l1buf_3 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ output_l1_pass_0 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l1_pass_1 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l1_pass_2 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l1_pass_3 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ empty int 32 regular {fifo 0}  }
	{ ko_2 int 9 regular {fifo 0}  }
	{ s int 32 regular {fifo 0}  }
	{ r int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight_regfile_0_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_0_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_0_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_0_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_1_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_1_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_1_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_1_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_2_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_2_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_2_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_2_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_3_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_3_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_3_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_regfile_3_3_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l1buf_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l1buf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l1buf_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l1buf_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_l1_pass_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_pass_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_pass_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_pass_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ko_2", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 63
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weight_regfile_0_0_read sc_in sc_lv 8 signal 0 } 
	{ weight_regfile_0_1_read sc_in sc_lv 8 signal 1 } 
	{ weight_regfile_0_2_read sc_in sc_lv 8 signal 2 } 
	{ weight_regfile_0_3_read sc_in sc_lv 8 signal 3 } 
	{ weight_regfile_1_0_read sc_in sc_lv 8 signal 4 } 
	{ weight_regfile_1_1_read sc_in sc_lv 8 signal 5 } 
	{ weight_regfile_1_2_read sc_in sc_lv 8 signal 6 } 
	{ weight_regfile_1_3_read sc_in sc_lv 8 signal 7 } 
	{ weight_regfile_2_0_read sc_in sc_lv 8 signal 8 } 
	{ weight_regfile_2_1_read sc_in sc_lv 8 signal 9 } 
	{ weight_regfile_2_2_read sc_in sc_lv 8 signal 10 } 
	{ weight_regfile_2_3_read sc_in sc_lv 8 signal 11 } 
	{ weight_regfile_3_0_read sc_in sc_lv 8 signal 12 } 
	{ weight_regfile_3_1_read sc_in sc_lv 8 signal 13 } 
	{ weight_regfile_3_2_read sc_in sc_lv 8 signal 14 } 
	{ weight_regfile_3_3_read sc_in sc_lv 8 signal 15 } 
	{ data_l1buf_0_address0 sc_out sc_lv 9 signal 16 } 
	{ data_l1buf_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ data_l1buf_0_q0 sc_in sc_lv 8 signal 16 } 
	{ data_l1buf_1_address0 sc_out sc_lv 9 signal 17 } 
	{ data_l1buf_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ data_l1buf_1_q0 sc_in sc_lv 8 signal 17 } 
	{ data_l1buf_2_address0 sc_out sc_lv 9 signal 18 } 
	{ data_l1buf_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ data_l1buf_2_q0 sc_in sc_lv 8 signal 18 } 
	{ data_l1buf_3_address0 sc_out sc_lv 9 signal 19 } 
	{ data_l1buf_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ data_l1buf_3_q0 sc_in sc_lv 8 signal 19 } 
	{ output_l1_pass_0_address0 sc_out sc_lv 9 signal 20 } 
	{ output_l1_pass_0_ce0 sc_out sc_logic 1 signal 20 } 
	{ output_l1_pass_0_we0 sc_out sc_logic 1 signal 20 } 
	{ output_l1_pass_0_d0 sc_out sc_lv 32 signal 20 } 
	{ output_l1_pass_1_address0 sc_out sc_lv 9 signal 21 } 
	{ output_l1_pass_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ output_l1_pass_1_we0 sc_out sc_logic 1 signal 21 } 
	{ output_l1_pass_1_d0 sc_out sc_lv 32 signal 21 } 
	{ output_l1_pass_2_address0 sc_out sc_lv 9 signal 22 } 
	{ output_l1_pass_2_ce0 sc_out sc_logic 1 signal 22 } 
	{ output_l1_pass_2_we0 sc_out sc_logic 1 signal 22 } 
	{ output_l1_pass_2_d0 sc_out sc_lv 32 signal 22 } 
	{ output_l1_pass_3_address0 sc_out sc_lv 9 signal 23 } 
	{ output_l1_pass_3_ce0 sc_out sc_logic 1 signal 23 } 
	{ output_l1_pass_3_we0 sc_out sc_logic 1 signal 23 } 
	{ output_l1_pass_3_d0 sc_out sc_lv 32 signal 23 } 
	{ empty_dout sc_in sc_lv 32 signal 24 } 
	{ empty_empty_n sc_in sc_logic 1 signal 24 } 
	{ empty_read sc_out sc_logic 1 signal 24 } 
	{ ko_2_dout sc_in sc_lv 9 signal 25 } 
	{ ko_2_empty_n sc_in sc_logic 1 signal 25 } 
	{ ko_2_read sc_out sc_logic 1 signal 25 } 
	{ s_dout sc_in sc_lv 32 signal 26 } 
	{ s_empty_n sc_in sc_logic 1 signal 26 } 
	{ s_read sc_out sc_logic 1 signal 26 } 
	{ r_dout sc_in sc_lv 32 signal 27 } 
	{ r_empty_n sc_in sc_logic 1 signal 27 } 
	{ r_read sc_out sc_logic 1 signal 27 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "weight_regfile_0_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_0_0_read", "role": "default" }} , 
 	{ "name": "weight_regfile_0_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_0_1_read", "role": "default" }} , 
 	{ "name": "weight_regfile_0_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_0_2_read", "role": "default" }} , 
 	{ "name": "weight_regfile_0_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_0_3_read", "role": "default" }} , 
 	{ "name": "weight_regfile_1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_1_0_read", "role": "default" }} , 
 	{ "name": "weight_regfile_1_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_1_1_read", "role": "default" }} , 
 	{ "name": "weight_regfile_1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_1_2_read", "role": "default" }} , 
 	{ "name": "weight_regfile_1_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_1_3_read", "role": "default" }} , 
 	{ "name": "weight_regfile_2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_2_0_read", "role": "default" }} , 
 	{ "name": "weight_regfile_2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_2_1_read", "role": "default" }} , 
 	{ "name": "weight_regfile_2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_2_2_read", "role": "default" }} , 
 	{ "name": "weight_regfile_2_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_2_3_read", "role": "default" }} , 
 	{ "name": "weight_regfile_3_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_3_0_read", "role": "default" }} , 
 	{ "name": "weight_regfile_3_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_3_1_read", "role": "default" }} , 
 	{ "name": "weight_regfile_3_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_3_2_read", "role": "default" }} , 
 	{ "name": "weight_regfile_3_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_regfile_3_3_read", "role": "default" }} , 
 	{ "name": "data_l1buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_0", "role": "address0" }} , 
 	{ "name": "data_l1buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_0", "role": "ce0" }} , 
 	{ "name": "data_l1buf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_0", "role": "q0" }} , 
 	{ "name": "data_l1buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_1", "role": "address0" }} , 
 	{ "name": "data_l1buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_1", "role": "ce0" }} , 
 	{ "name": "data_l1buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_1", "role": "q0" }} , 
 	{ "name": "data_l1buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_2", "role": "address0" }} , 
 	{ "name": "data_l1buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_2", "role": "ce0" }} , 
 	{ "name": "data_l1buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_2", "role": "q0" }} , 
 	{ "name": "data_l1buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_3", "role": "address0" }} , 
 	{ "name": "data_l1buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_3", "role": "ce0" }} , 
 	{ "name": "data_l1buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_3", "role": "q0" }} , 
 	{ "name": "output_l1_pass_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_pass_0", "role": "address0" }} , 
 	{ "name": "output_l1_pass_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_0", "role": "ce0" }} , 
 	{ "name": "output_l1_pass_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_0", "role": "we0" }} , 
 	{ "name": "output_l1_pass_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_pass_0", "role": "d0" }} , 
 	{ "name": "output_l1_pass_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_pass_1", "role": "address0" }} , 
 	{ "name": "output_l1_pass_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_1", "role": "ce0" }} , 
 	{ "name": "output_l1_pass_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_1", "role": "we0" }} , 
 	{ "name": "output_l1_pass_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_pass_1", "role": "d0" }} , 
 	{ "name": "output_l1_pass_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_pass_2", "role": "address0" }} , 
 	{ "name": "output_l1_pass_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_2", "role": "ce0" }} , 
 	{ "name": "output_l1_pass_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_2", "role": "we0" }} , 
 	{ "name": "output_l1_pass_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_pass_2", "role": "d0" }} , 
 	{ "name": "output_l1_pass_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_pass_3", "role": "address0" }} , 
 	{ "name": "output_l1_pass_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_3", "role": "ce0" }} , 
 	{ "name": "output_l1_pass_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_3", "role": "we0" }} , 
 	{ "name": "output_l1_pass_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_pass_3", "role": "d0" }} , 
 	{ "name": "empty_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "dout" }} , 
 	{ "name": "empty_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "empty_n" }} , 
 	{ "name": "empty_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "read" }} , 
 	{ "name": "ko_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ko_2", "role": "dout" }} , 
 	{ "name": "ko_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2", "role": "empty_n" }} , 
 	{ "name": "ko_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2", "role": "read" }} , 
 	{ "name": "s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "dout" }} , 
 	{ "name": "s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "empty_n" }} , 
 	{ "name": "s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "read" }} , 
 	{ "name": "r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "dout" }} , 
 	{ "name": "r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "empty_n" }} , 
 	{ "name": "r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"],
		"CDFG" : "runSysArr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "57", "EstimateLatencyMax" : "57",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weight_regfile_0_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "data_l1buf_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "output_l1_pass_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_local_3_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_local_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_local_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_local_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U98", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_9_1_1_U99", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U100", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U101", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U102", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_8s_8s_16_1_1_U103", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_2_1_U104", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_2_1_U105", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_2_1_U106", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_2_1_U107", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_2_1_U108", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_2_1_U109", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_2_1_U110", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_2_1_U111", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_2_1_U112", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_18s_19_1_1_U113", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_17s_18_1_1_U114", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_16s_17_1_1_U115", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	runSysArr {
		weight_regfile_0_0_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_0_1_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_0_2_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_0_3_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_1_0_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_1_1_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_1_2_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_1_3_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_2_0_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_2_1_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_2_2_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_2_3_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_3_0_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_3_1_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_3_2_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_3_3_read {Type I LastRead 0 FirstWrite -1}
		data_l1buf_0 {Type I LastRead 1 FirstWrite -1}
		data_l1buf_1 {Type I LastRead 1 FirstWrite -1}
		data_l1buf_2 {Type I LastRead 1 FirstWrite -1}
		data_l1buf_3 {Type I LastRead 1 FirstWrite -1}
		output_l1_pass_0 {Type O LastRead -1 FirstWrite 2}
		output_l1_pass_1 {Type O LastRead -1 FirstWrite 2}
		output_l1_pass_2 {Type O LastRead -1 FirstWrite 2}
		output_l1_pass_3 {Type O LastRead -1 FirstWrite 2}
		empty {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "57"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "57"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	weight_regfile_0_0_read { ap_none {  { weight_regfile_0_0_read in_data 0 8 } } }
	weight_regfile_0_1_read { ap_none {  { weight_regfile_0_1_read in_data 0 8 } } }
	weight_regfile_0_2_read { ap_none {  { weight_regfile_0_2_read in_data 0 8 } } }
	weight_regfile_0_3_read { ap_none {  { weight_regfile_0_3_read in_data 0 8 } } }
	weight_regfile_1_0_read { ap_none {  { weight_regfile_1_0_read in_data 0 8 } } }
	weight_regfile_1_1_read { ap_none {  { weight_regfile_1_1_read in_data 0 8 } } }
	weight_regfile_1_2_read { ap_none {  { weight_regfile_1_2_read in_data 0 8 } } }
	weight_regfile_1_3_read { ap_none {  { weight_regfile_1_3_read in_data 0 8 } } }
	weight_regfile_2_0_read { ap_none {  { weight_regfile_2_0_read in_data 0 8 } } }
	weight_regfile_2_1_read { ap_none {  { weight_regfile_2_1_read in_data 0 8 } } }
	weight_regfile_2_2_read { ap_none {  { weight_regfile_2_2_read in_data 0 8 } } }
	weight_regfile_2_3_read { ap_none {  { weight_regfile_2_3_read in_data 0 8 } } }
	weight_regfile_3_0_read { ap_none {  { weight_regfile_3_0_read in_data 0 8 } } }
	weight_regfile_3_1_read { ap_none {  { weight_regfile_3_1_read in_data 0 8 } } }
	weight_regfile_3_2_read { ap_none {  { weight_regfile_3_2_read in_data 0 8 } } }
	weight_regfile_3_3_read { ap_none {  { weight_regfile_3_3_read in_data 0 8 } } }
	data_l1buf_0 { ap_memory {  { data_l1buf_0_address0 mem_address 1 9 }  { data_l1buf_0_ce0 mem_ce 1 1 }  { data_l1buf_0_q0 mem_dout 0 8 } } }
	data_l1buf_1 { ap_memory {  { data_l1buf_1_address0 mem_address 1 9 }  { data_l1buf_1_ce0 mem_ce 1 1 }  { data_l1buf_1_q0 mem_dout 0 8 } } }
	data_l1buf_2 { ap_memory {  { data_l1buf_2_address0 mem_address 1 9 }  { data_l1buf_2_ce0 mem_ce 1 1 }  { data_l1buf_2_q0 mem_dout 0 8 } } }
	data_l1buf_3 { ap_memory {  { data_l1buf_3_address0 mem_address 1 9 }  { data_l1buf_3_ce0 mem_ce 1 1 }  { data_l1buf_3_q0 mem_dout 0 8 } } }
	output_l1_pass_0 { ap_memory {  { output_l1_pass_0_address0 mem_address 1 9 }  { output_l1_pass_0_ce0 mem_ce 1 1 }  { output_l1_pass_0_we0 mem_we 1 1 }  { output_l1_pass_0_d0 mem_din 1 32 } } }
	output_l1_pass_1 { ap_memory {  { output_l1_pass_1_address0 mem_address 1 9 }  { output_l1_pass_1_ce0 mem_ce 1 1 }  { output_l1_pass_1_we0 mem_we 1 1 }  { output_l1_pass_1_d0 mem_din 1 32 } } }
	output_l1_pass_2 { ap_memory {  { output_l1_pass_2_address0 mem_address 1 9 }  { output_l1_pass_2_ce0 mem_ce 1 1 }  { output_l1_pass_2_we0 mem_we 1 1 }  { output_l1_pass_2_d0 mem_din 1 32 } } }
	output_l1_pass_3 { ap_memory {  { output_l1_pass_3_address0 mem_address 1 9 }  { output_l1_pass_3_ce0 mem_ce 1 1 }  { output_l1_pass_3_we0 mem_we 1 1 }  { output_l1_pass_3_d0 mem_din 1 32 } } }
	empty { ap_fifo {  { empty_dout fifo_data 0 32 }  { empty_empty_n fifo_status 0 1 }  { empty_read fifo_update 1 1 } } }
	ko_2 { ap_fifo {  { ko_2_dout fifo_data 0 9 }  { ko_2_empty_n fifo_status 0 1 }  { ko_2_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_dout fifo_data 0 32 }  { s_empty_n fifo_status 0 1 }  { s_read fifo_update 1 1 } } }
	r { ap_fifo {  { r_dout fifo_data 0 32 }  { r_empty_n fifo_status 0 1 }  { r_read fifo_update 1 1 } } }
}
