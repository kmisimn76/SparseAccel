set moduleName dataflow_in_loop_LOOP_S
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dataflow_in_loop_LOOP_S}
set C_modelType { void 0 }
set C_modelArgList {
	{ weight_l2_0 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_1 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_2 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_3 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ p_read int 9 regular  }
	{ p_read1 int 9 regular  }
	{ ko_2 int 9 regular  }
	{ co_1 int 10 regular  }
	{ r int 32 regular  }
	{ s int 32 regular  }
	{ data_l2_0 int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_l2_1 int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_l2_2 int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_l2_3 int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ p_read2 int 32 regular  }
	{ p_read3 int 10 regular  }
	{ output_l1_0 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l1_1 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l1_2 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l1_3 int 32 regular {array 512 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ko_2", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "co_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "output_l1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 143
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ weight_l2_0_address0 sc_out sc_lv 9 signal 0 } 
	{ weight_l2_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ weight_l2_0_d0 sc_out sc_lv 8 signal 0 } 
	{ weight_l2_0_q0 sc_in sc_lv 8 signal 0 } 
	{ weight_l2_0_we0 sc_out sc_logic 1 signal 0 } 
	{ weight_l2_0_address1 sc_out sc_lv 9 signal 0 } 
	{ weight_l2_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ weight_l2_0_d1 sc_out sc_lv 8 signal 0 } 
	{ weight_l2_0_q1 sc_in sc_lv 8 signal 0 } 
	{ weight_l2_0_we1 sc_out sc_logic 1 signal 0 } 
	{ weight_l2_1_address0 sc_out sc_lv 9 signal 1 } 
	{ weight_l2_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ weight_l2_1_d0 sc_out sc_lv 8 signal 1 } 
	{ weight_l2_1_q0 sc_in sc_lv 8 signal 1 } 
	{ weight_l2_1_we0 sc_out sc_logic 1 signal 1 } 
	{ weight_l2_1_address1 sc_out sc_lv 9 signal 1 } 
	{ weight_l2_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ weight_l2_1_d1 sc_out sc_lv 8 signal 1 } 
	{ weight_l2_1_q1 sc_in sc_lv 8 signal 1 } 
	{ weight_l2_1_we1 sc_out sc_logic 1 signal 1 } 
	{ weight_l2_2_address0 sc_out sc_lv 9 signal 2 } 
	{ weight_l2_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ weight_l2_2_d0 sc_out sc_lv 8 signal 2 } 
	{ weight_l2_2_q0 sc_in sc_lv 8 signal 2 } 
	{ weight_l2_2_we0 sc_out sc_logic 1 signal 2 } 
	{ weight_l2_2_address1 sc_out sc_lv 9 signal 2 } 
	{ weight_l2_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ weight_l2_2_d1 sc_out sc_lv 8 signal 2 } 
	{ weight_l2_2_q1 sc_in sc_lv 8 signal 2 } 
	{ weight_l2_2_we1 sc_out sc_logic 1 signal 2 } 
	{ weight_l2_3_address0 sc_out sc_lv 9 signal 3 } 
	{ weight_l2_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ weight_l2_3_d0 sc_out sc_lv 8 signal 3 } 
	{ weight_l2_3_q0 sc_in sc_lv 8 signal 3 } 
	{ weight_l2_3_we0 sc_out sc_logic 1 signal 3 } 
	{ weight_l2_3_address1 sc_out sc_lv 9 signal 3 } 
	{ weight_l2_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ weight_l2_3_d1 sc_out sc_lv 8 signal 3 } 
	{ weight_l2_3_q1 sc_in sc_lv 8 signal 3 } 
	{ weight_l2_3_we1 sc_out sc_logic 1 signal 3 } 
	{ p_read sc_in sc_lv 9 signal 4 } 
	{ p_read1 sc_in sc_lv 9 signal 5 } 
	{ ko_2 sc_in sc_lv 9 signal 6 } 
	{ co_1 sc_in sc_lv 10 signal 7 } 
	{ r sc_in sc_lv 32 signal 8 } 
	{ s sc_in sc_lv 32 signal 9 } 
	{ data_l2_0_address0 sc_out sc_lv 10 signal 10 } 
	{ data_l2_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ data_l2_0_d0 sc_out sc_lv 8 signal 10 } 
	{ data_l2_0_q0 sc_in sc_lv 8 signal 10 } 
	{ data_l2_0_we0 sc_out sc_logic 1 signal 10 } 
	{ data_l2_0_address1 sc_out sc_lv 10 signal 10 } 
	{ data_l2_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ data_l2_0_d1 sc_out sc_lv 8 signal 10 } 
	{ data_l2_0_q1 sc_in sc_lv 8 signal 10 } 
	{ data_l2_0_we1 sc_out sc_logic 1 signal 10 } 
	{ data_l2_1_address0 sc_out sc_lv 10 signal 11 } 
	{ data_l2_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ data_l2_1_d0 sc_out sc_lv 8 signal 11 } 
	{ data_l2_1_q0 sc_in sc_lv 8 signal 11 } 
	{ data_l2_1_we0 sc_out sc_logic 1 signal 11 } 
	{ data_l2_1_address1 sc_out sc_lv 10 signal 11 } 
	{ data_l2_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ data_l2_1_d1 sc_out sc_lv 8 signal 11 } 
	{ data_l2_1_q1 sc_in sc_lv 8 signal 11 } 
	{ data_l2_1_we1 sc_out sc_logic 1 signal 11 } 
	{ data_l2_2_address0 sc_out sc_lv 10 signal 12 } 
	{ data_l2_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ data_l2_2_d0 sc_out sc_lv 8 signal 12 } 
	{ data_l2_2_q0 sc_in sc_lv 8 signal 12 } 
	{ data_l2_2_we0 sc_out sc_logic 1 signal 12 } 
	{ data_l2_2_address1 sc_out sc_lv 10 signal 12 } 
	{ data_l2_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ data_l2_2_d1 sc_out sc_lv 8 signal 12 } 
	{ data_l2_2_q1 sc_in sc_lv 8 signal 12 } 
	{ data_l2_2_we1 sc_out sc_logic 1 signal 12 } 
	{ data_l2_3_address0 sc_out sc_lv 10 signal 13 } 
	{ data_l2_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ data_l2_3_d0 sc_out sc_lv 8 signal 13 } 
	{ data_l2_3_q0 sc_in sc_lv 8 signal 13 } 
	{ data_l2_3_we0 sc_out sc_logic 1 signal 13 } 
	{ data_l2_3_address1 sc_out sc_lv 10 signal 13 } 
	{ data_l2_3_ce1 sc_out sc_logic 1 signal 13 } 
	{ data_l2_3_d1 sc_out sc_lv 8 signal 13 } 
	{ data_l2_3_q1 sc_in sc_lv 8 signal 13 } 
	{ data_l2_3_we1 sc_out sc_logic 1 signal 13 } 
	{ p_read2 sc_in sc_lv 32 signal 14 } 
	{ p_read3 sc_in sc_lv 10 signal 15 } 
	{ output_l1_0_address0 sc_out sc_lv 9 signal 16 } 
	{ output_l1_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ output_l1_0_d0 sc_out sc_lv 32 signal 16 } 
	{ output_l1_0_q0 sc_in sc_lv 32 signal 16 } 
	{ output_l1_0_we0 sc_out sc_logic 1 signal 16 } 
	{ output_l1_0_address1 sc_out sc_lv 9 signal 16 } 
	{ output_l1_0_ce1 sc_out sc_logic 1 signal 16 } 
	{ output_l1_0_d1 sc_out sc_lv 32 signal 16 } 
	{ output_l1_0_q1 sc_in sc_lv 32 signal 16 } 
	{ output_l1_0_we1 sc_out sc_logic 1 signal 16 } 
	{ output_l1_1_address0 sc_out sc_lv 9 signal 17 } 
	{ output_l1_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ output_l1_1_d0 sc_out sc_lv 32 signal 17 } 
	{ output_l1_1_q0 sc_in sc_lv 32 signal 17 } 
	{ output_l1_1_we0 sc_out sc_logic 1 signal 17 } 
	{ output_l1_1_address1 sc_out sc_lv 9 signal 17 } 
	{ output_l1_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ output_l1_1_d1 sc_out sc_lv 32 signal 17 } 
	{ output_l1_1_q1 sc_in sc_lv 32 signal 17 } 
	{ output_l1_1_we1 sc_out sc_logic 1 signal 17 } 
	{ output_l1_2_address0 sc_out sc_lv 9 signal 18 } 
	{ output_l1_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ output_l1_2_d0 sc_out sc_lv 32 signal 18 } 
	{ output_l1_2_q0 sc_in sc_lv 32 signal 18 } 
	{ output_l1_2_we0 sc_out sc_logic 1 signal 18 } 
	{ output_l1_2_address1 sc_out sc_lv 9 signal 18 } 
	{ output_l1_2_ce1 sc_out sc_logic 1 signal 18 } 
	{ output_l1_2_d1 sc_out sc_lv 32 signal 18 } 
	{ output_l1_2_q1 sc_in sc_lv 32 signal 18 } 
	{ output_l1_2_we1 sc_out sc_logic 1 signal 18 } 
	{ output_l1_3_address0 sc_out sc_lv 9 signal 19 } 
	{ output_l1_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ output_l1_3_d0 sc_out sc_lv 32 signal 19 } 
	{ output_l1_3_q0 sc_in sc_lv 32 signal 19 } 
	{ output_l1_3_we0 sc_out sc_logic 1 signal 19 } 
	{ output_l1_3_address1 sc_out sc_lv 9 signal 19 } 
	{ output_l1_3_ce1 sc_out sc_logic 1 signal 19 } 
	{ output_l1_3_d1 sc_out sc_lv 32 signal 19 } 
	{ output_l1_3_q1 sc_in sc_lv 32 signal 19 } 
	{ output_l1_3_we1 sc_out sc_logic 1 signal 19 } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 4 } 
	{ p_read1_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ko_2_ap_vld sc_in sc_logic 1 invld 6 } 
	{ co_1_ap_vld sc_in sc_logic 1 invld 7 } 
	{ r_ap_vld sc_in sc_logic 1 invld 8 } 
	{ s_ap_vld sc_in sc_logic 1 invld 9 } 
	{ p_read2_ap_vld sc_in sc_logic 1 invld 14 } 
	{ p_read3_ap_vld sc_in sc_logic 1 invld 15 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "weight_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "address0" }} , 
 	{ "name": "weight_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "ce0" }} , 
 	{ "name": "weight_l2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "d0" }} , 
 	{ "name": "weight_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "q0" }} , 
 	{ "name": "weight_l2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "we0" }} , 
 	{ "name": "weight_l2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "address1" }} , 
 	{ "name": "weight_l2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "ce1" }} , 
 	{ "name": "weight_l2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "d1" }} , 
 	{ "name": "weight_l2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "q1" }} , 
 	{ "name": "weight_l2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "we1" }} , 
 	{ "name": "weight_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "address0" }} , 
 	{ "name": "weight_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "ce0" }} , 
 	{ "name": "weight_l2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "d0" }} , 
 	{ "name": "weight_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "q0" }} , 
 	{ "name": "weight_l2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "we0" }} , 
 	{ "name": "weight_l2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "address1" }} , 
 	{ "name": "weight_l2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "ce1" }} , 
 	{ "name": "weight_l2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "d1" }} , 
 	{ "name": "weight_l2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "q1" }} , 
 	{ "name": "weight_l2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "we1" }} , 
 	{ "name": "weight_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "address0" }} , 
 	{ "name": "weight_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "ce0" }} , 
 	{ "name": "weight_l2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "d0" }} , 
 	{ "name": "weight_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "q0" }} , 
 	{ "name": "weight_l2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "we0" }} , 
 	{ "name": "weight_l2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "address1" }} , 
 	{ "name": "weight_l2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "ce1" }} , 
 	{ "name": "weight_l2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "d1" }} , 
 	{ "name": "weight_l2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "q1" }} , 
 	{ "name": "weight_l2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "we1" }} , 
 	{ "name": "weight_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "address0" }} , 
 	{ "name": "weight_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "ce0" }} , 
 	{ "name": "weight_l2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "d0" }} , 
 	{ "name": "weight_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "q0" }} , 
 	{ "name": "weight_l2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "we0" }} , 
 	{ "name": "weight_l2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "address1" }} , 
 	{ "name": "weight_l2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "ce1" }} , 
 	{ "name": "weight_l2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "d1" }} , 
 	{ "name": "weight_l2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "q1" }} , 
 	{ "name": "weight_l2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "we1" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "ko_2", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ko_2", "role": "default" }} , 
 	{ "name": "co_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "co_1", "role": "default" }} , 
 	{ "name": "r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "default" }} , 
 	{ "name": "s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "data_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address0" }} , 
 	{ "name": "data_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce0" }} , 
 	{ "name": "data_l2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "d0" }} , 
 	{ "name": "data_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q0" }} , 
 	{ "name": "data_l2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "we0" }} , 
 	{ "name": "data_l2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address1" }} , 
 	{ "name": "data_l2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce1" }} , 
 	{ "name": "data_l2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "d1" }} , 
 	{ "name": "data_l2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q1" }} , 
 	{ "name": "data_l2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "we1" }} , 
 	{ "name": "data_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address0" }} , 
 	{ "name": "data_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce0" }} , 
 	{ "name": "data_l2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "d0" }} , 
 	{ "name": "data_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q0" }} , 
 	{ "name": "data_l2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "we0" }} , 
 	{ "name": "data_l2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address1" }} , 
 	{ "name": "data_l2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce1" }} , 
 	{ "name": "data_l2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "d1" }} , 
 	{ "name": "data_l2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q1" }} , 
 	{ "name": "data_l2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "we1" }} , 
 	{ "name": "data_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address0" }} , 
 	{ "name": "data_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce0" }} , 
 	{ "name": "data_l2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "d0" }} , 
 	{ "name": "data_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q0" }} , 
 	{ "name": "data_l2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "we0" }} , 
 	{ "name": "data_l2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address1" }} , 
 	{ "name": "data_l2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce1" }} , 
 	{ "name": "data_l2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "d1" }} , 
 	{ "name": "data_l2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q1" }} , 
 	{ "name": "data_l2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "we1" }} , 
 	{ "name": "data_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address0" }} , 
 	{ "name": "data_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce0" }} , 
 	{ "name": "data_l2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "d0" }} , 
 	{ "name": "data_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q0" }} , 
 	{ "name": "data_l2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "we0" }} , 
 	{ "name": "data_l2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address1" }} , 
 	{ "name": "data_l2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce1" }} , 
 	{ "name": "data_l2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "d1" }} , 
 	{ "name": "data_l2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q1" }} , 
 	{ "name": "data_l2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "we1" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "output_l1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_0", "role": "address0" }} , 
 	{ "name": "output_l1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_0", "role": "ce0" }} , 
 	{ "name": "output_l1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_0", "role": "d0" }} , 
 	{ "name": "output_l1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_0", "role": "q0" }} , 
 	{ "name": "output_l1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_0", "role": "we0" }} , 
 	{ "name": "output_l1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_0", "role": "address1" }} , 
 	{ "name": "output_l1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_0", "role": "ce1" }} , 
 	{ "name": "output_l1_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_0", "role": "d1" }} , 
 	{ "name": "output_l1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_0", "role": "q1" }} , 
 	{ "name": "output_l1_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_0", "role": "we1" }} , 
 	{ "name": "output_l1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_1", "role": "address0" }} , 
 	{ "name": "output_l1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_1", "role": "ce0" }} , 
 	{ "name": "output_l1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_1", "role": "d0" }} , 
 	{ "name": "output_l1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_1", "role": "q0" }} , 
 	{ "name": "output_l1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_1", "role": "we0" }} , 
 	{ "name": "output_l1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_1", "role": "address1" }} , 
 	{ "name": "output_l1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_1", "role": "ce1" }} , 
 	{ "name": "output_l1_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_1", "role": "d1" }} , 
 	{ "name": "output_l1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_1", "role": "q1" }} , 
 	{ "name": "output_l1_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_1", "role": "we1" }} , 
 	{ "name": "output_l1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_2", "role": "address0" }} , 
 	{ "name": "output_l1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_2", "role": "ce0" }} , 
 	{ "name": "output_l1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_2", "role": "d0" }} , 
 	{ "name": "output_l1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_2", "role": "q0" }} , 
 	{ "name": "output_l1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_2", "role": "we0" }} , 
 	{ "name": "output_l1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_2", "role": "address1" }} , 
 	{ "name": "output_l1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_2", "role": "ce1" }} , 
 	{ "name": "output_l1_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_2", "role": "d1" }} , 
 	{ "name": "output_l1_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_2", "role": "q1" }} , 
 	{ "name": "output_l1_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_2", "role": "we1" }} , 
 	{ "name": "output_l1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_3", "role": "address0" }} , 
 	{ "name": "output_l1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_3", "role": "ce0" }} , 
 	{ "name": "output_l1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_3", "role": "d0" }} , 
 	{ "name": "output_l1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_3", "role": "q0" }} , 
 	{ "name": "output_l1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_3", "role": "we0" }} , 
 	{ "name": "output_l1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_3", "role": "address1" }} , 
 	{ "name": "output_l1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_3", "role": "ce1" }} , 
 	{ "name": "output_l1_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_3", "role": "d1" }} , 
 	{ "name": "output_l1_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_3", "role": "q1" }} , 
 	{ "name": "output_l1_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_3", "role": "we1" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "p_read1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read1", "role": "ap_vld" }} , 
 	{ "name": "ko_2_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ko_2", "role": "ap_vld" }} , 
 	{ "name": "co_1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "co_1", "role": "ap_vld" }} , 
 	{ "name": "r_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "r", "role": "ap_vld" }} , 
 	{ "name": "s_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "s", "role": "ap_vld" }} , 
 	{ "name": "p_read2_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read2", "role": "ap_vld" }} , 
 	{ "name": "p_read3_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read3", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "43", "48", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101"],
		"CDFG" : "dataflow_in_loop_LOOP_S",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "113", "EstimateLatencyMax" : "113",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "dataflow_in_loop_LOOP_S_entry20_U0"},
			{"ID" : "6", "Name" : "runWeight2Reg_U0"},
			{"ID" : "43", "Name" : "runL2toL1_U0"}],
		"OutputProcess" : [
			{"ID" : "48", "Name" : "runSysArr_U0"}],
		"Port" : [
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "r", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "runL2toL1_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "runL2toL1_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "runL2toL1_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "runL2toL1_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_pass_0"}]},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_pass_1"}]},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_pass_2"}]},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_pass_3"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "48", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l1buf_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l1buf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l1buf_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l1buf_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_entry20_U0", "Parent" : "0",
		"CDFG" : "dataflow_in_loop_LOOP_S_entry20",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "r", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "71", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "72", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "73", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "74", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "75", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "76", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "77", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "6", "DependentChan" : "78", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "79", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "80", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "81", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "43", "DependentChan" : "82", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0", "Parent" : "0", "Child" : ["7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42"],
		"CDFG" : "runWeight2Reg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "41", "EstimateLatencyMax" : "41",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "71", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "72", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "73", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "74", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "76", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "78", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "83", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "84", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "85", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mul_9s_9s_9_1_1_U21", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mul_9s_9s_9_1_1_U22", "Parent" : "6"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U23", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U24", "Parent" : "6"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U25", "Parent" : "6"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U26", "Parent" : "6"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U27", "Parent" : "6"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U28", "Parent" : "6"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U29", "Parent" : "6"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U30", "Parent" : "6"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U31", "Parent" : "6"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U32", "Parent" : "6"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U33", "Parent" : "6"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U34", "Parent" : "6"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U35", "Parent" : "6"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U36", "Parent" : "6"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U37", "Parent" : "6"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U38", "Parent" : "6"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U39", "Parent" : "6"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U40", "Parent" : "6"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U41", "Parent" : "6"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U42", "Parent" : "6"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U43", "Parent" : "6"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U44", "Parent" : "6"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U45", "Parent" : "6"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U46", "Parent" : "6"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U47", "Parent" : "6"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U48", "Parent" : "6"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U49", "Parent" : "6"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U50", "Parent" : "6"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U51", "Parent" : "6"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U52", "Parent" : "6"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U53", "Parent" : "6"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_8_1_1_U54", "Parent" : "6"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.mux_42_1_1_1_U55", "Parent" : "6"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runWeight2Reg_U0.ama_addmuladd_9ns_9ns_9s_9ns_9_4_1_U56", "Parent" : "6"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.runL2toL1_U0", "Parent" : "0", "Child" : ["44", "45", "46", "47"],
		"CDFG" : "runL2toL1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_l1buf_017", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "1"},
			{"Name" : "data_l1buf_118", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "2"},
			{"Name" : "data_l1buf_219", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "3"},
			{"Name" : "data_l1buf_320", "Type" : "Memory", "Direction" : "O", "DependentProc" : "48", "DependentChan" : "4"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "80", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "75", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "77", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "79", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "82", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runL2toL1_U0.mul_10s_10s_10_1_1_U77", "Parent" : "43"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runL2toL1_U0.mul_32ns_32ns_64_1_1_U78", "Parent" : "43"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runL2toL1_U0.ama_addmuladd_10ns_10ns_10s_10ns_10_4_1_U79", "Parent" : "43"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runL2toL1_U0.mac_muladd_9s_9s_9ns_9_4_1_U80", "Parent" : "43"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0", "Parent" : "0", "Child" : ["49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70"],
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
			{"Name" : "weight_regfile_0_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "86", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "87", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "88", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "89", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "90", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "91", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "92", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "93", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "94", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "95", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "96", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "97", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "98", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "99", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "100", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "101", "DependentChanDepth" : "2"},
			{"Name" : "data_l1buf_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "1"},
			{"Name" : "data_l1buf_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "2"},
			{"Name" : "data_l1buf_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "3"},
			{"Name" : "data_l1buf_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "43", "DependentChan" : "4"},
			{"Name" : "output_l1_pass_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "81", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "83", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "85", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "6", "DependentChan" : "84", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.output_l1_local_3_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.output_l1_local_2_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.output_l1_local_1_U", "Parent" : "48"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.output_l1_local_0_U", "Parent" : "48"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mul_32s_32s_32_1_1_U98", "Parent" : "48"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mul_9s_9s_9_1_1_U99", "Parent" : "48"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mul_8s_8s_16_1_1_U100", "Parent" : "48"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mul_8s_8s_16_1_1_U101", "Parent" : "48"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mul_8s_8s_16_1_1_U102", "Parent" : "48"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mul_8s_8s_16_1_1_U103", "Parent" : "48"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_18s_19_2_1_U104", "Parent" : "48"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_17s_18_2_1_U105", "Parent" : "48"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_16s_17_2_1_U106", "Parent" : "48"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_18s_19_2_1_U107", "Parent" : "48"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_17s_18_2_1_U108", "Parent" : "48"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_16s_17_2_1_U109", "Parent" : "48"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_18s_19_2_1_U110", "Parent" : "48"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_17s_18_2_1_U111", "Parent" : "48"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_16s_17_2_1_U112", "Parent" : "48"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_18s_19_1_1_U113", "Parent" : "48"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_17s_18_1_1_U114", "Parent" : "48"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.runSysArr_U0.mac_muladd_8s_8s_16s_17_1_1_U115", "Parent" : "48"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c1_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ko_2_c_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.co_1_c_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.co_1_c2_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_c_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_c3_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_c_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_c4_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c5_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c6_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_c7_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ko_2_c8_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.r_c9_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.s_c10_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_0_0_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_0_1_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_0_2_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_0_3_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_1_0_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_1_1_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_1_2_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_1_3_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_2_0_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_2_1_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_2_2_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_2_3_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_3_0_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_3_1_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_3_2_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_regfile_3_3_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_LOOP_S {
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		output_l1_0 {Type O LastRead -1 FirstWrite 2}
		output_l1_1 {Type O LastRead -1 FirstWrite 2}
		output_l1_2 {Type O LastRead -1 FirstWrite 2}
		output_l1_3 {Type O LastRead -1 FirstWrite 2}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_entry20 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		ko_2_out {Type O LastRead -1 FirstWrite 0}
		co_1_out {Type O LastRead -1 FirstWrite 0}
		co_1_out2 {Type O LastRead -1 FirstWrite 0}
		r_out {Type O LastRead -1 FirstWrite 0}
		r_out3 {Type O LastRead -1 FirstWrite 0}
		s_out {Type O LastRead -1 FirstWrite 0}
		s_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}}
	runWeight2Reg {
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		empty_15 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		ko_2_out {Type O LastRead -1 FirstWrite 0}
		r_out {Type O LastRead -1 FirstWrite 0}
		s_out {Type O LastRead -1 FirstWrite 0}}
	runL2toL1 {
		data_l1buf_017 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_118 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_219 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_320 {Type O LastRead -1 FirstWrite 5}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		empty_16 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "113", "Max" : "113"}
	, {"Name" : "Interval", "Min" : "58", "Max" : "58"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	weight_l2_0 { ap_memory {  { weight_l2_0_address0 mem_address 1 9 }  { weight_l2_0_ce0 mem_ce 1 1 }  { weight_l2_0_d0 mem_din 1 8 }  { weight_l2_0_q0 mem_dout 0 8 }  { weight_l2_0_we0 mem_we 1 1 }  { weight_l2_0_address1 mem_address 1 9 }  { weight_l2_0_ce1 mem_ce 1 1 }  { weight_l2_0_d1 mem_din 1 8 }  { weight_l2_0_q1 mem_dout 0 8 }  { weight_l2_0_we1 mem_we 1 1 } } }
	weight_l2_1 { ap_memory {  { weight_l2_1_address0 mem_address 1 9 }  { weight_l2_1_ce0 mem_ce 1 1 }  { weight_l2_1_d0 mem_din 1 8 }  { weight_l2_1_q0 mem_dout 0 8 }  { weight_l2_1_we0 mem_we 1 1 }  { weight_l2_1_address1 mem_address 1 9 }  { weight_l2_1_ce1 mem_ce 1 1 }  { weight_l2_1_d1 mem_din 1 8 }  { weight_l2_1_q1 mem_dout 0 8 }  { weight_l2_1_we1 mem_we 1 1 } } }
	weight_l2_2 { ap_memory {  { weight_l2_2_address0 mem_address 1 9 }  { weight_l2_2_ce0 mem_ce 1 1 }  { weight_l2_2_d0 mem_din 1 8 }  { weight_l2_2_q0 mem_dout 0 8 }  { weight_l2_2_we0 mem_we 1 1 }  { weight_l2_2_address1 mem_address 1 9 }  { weight_l2_2_ce1 mem_ce 1 1 }  { weight_l2_2_d1 mem_din 1 8 }  { weight_l2_2_q1 mem_dout 0 8 }  { weight_l2_2_we1 mem_we 1 1 } } }
	weight_l2_3 { ap_memory {  { weight_l2_3_address0 mem_address 1 9 }  { weight_l2_3_ce0 mem_ce 1 1 }  { weight_l2_3_d0 mem_din 1 8 }  { weight_l2_3_q0 mem_dout 0 8 }  { weight_l2_3_we0 mem_we 1 1 }  { weight_l2_3_address1 mem_address 1 9 }  { weight_l2_3_ce1 mem_ce 1 1 }  { weight_l2_3_d1 mem_din 1 8 }  { weight_l2_3_q1 mem_dout 0 8 }  { weight_l2_3_we1 mem_we 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 9 }  { p_read_ap_vld in_vld 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 9 }  { p_read1_ap_vld in_vld 0 1 } } }
	ko_2 { ap_none {  { ko_2 in_data 0 9 }  { ko_2_ap_vld in_vld 0 1 } } }
	co_1 { ap_none {  { co_1 in_data 0 10 }  { co_1_ap_vld in_vld 0 1 } } }
	r { ap_none {  { r in_data 0 32 }  { r_ap_vld in_vld 0 1 } } }
	s { ap_none {  { s in_data 0 32 }  { s_ap_vld in_vld 0 1 } } }
	data_l2_0 { ap_memory {  { data_l2_0_address0 mem_address 1 10 }  { data_l2_0_ce0 mem_ce 1 1 }  { data_l2_0_d0 mem_din 1 8 }  { data_l2_0_q0 mem_dout 0 8 }  { data_l2_0_we0 mem_we 1 1 }  { data_l2_0_address1 mem_address 1 10 }  { data_l2_0_ce1 mem_ce 1 1 }  { data_l2_0_d1 mem_din 1 8 }  { data_l2_0_q1 mem_dout 0 8 }  { data_l2_0_we1 mem_we 1 1 } } }
	data_l2_1 { ap_memory {  { data_l2_1_address0 mem_address 1 10 }  { data_l2_1_ce0 mem_ce 1 1 }  { data_l2_1_d0 mem_din 1 8 }  { data_l2_1_q0 mem_dout 0 8 }  { data_l2_1_we0 mem_we 1 1 }  { data_l2_1_address1 mem_address 1 10 }  { data_l2_1_ce1 mem_ce 1 1 }  { data_l2_1_d1 mem_din 1 8 }  { data_l2_1_q1 mem_dout 0 8 }  { data_l2_1_we1 mem_we 1 1 } } }
	data_l2_2 { ap_memory {  { data_l2_2_address0 mem_address 1 10 }  { data_l2_2_ce0 mem_ce 1 1 }  { data_l2_2_d0 mem_din 1 8 }  { data_l2_2_q0 mem_dout 0 8 }  { data_l2_2_we0 mem_we 1 1 }  { data_l2_2_address1 mem_address 1 10 }  { data_l2_2_ce1 mem_ce 1 1 }  { data_l2_2_d1 mem_din 1 8 }  { data_l2_2_q1 mem_dout 0 8 }  { data_l2_2_we1 mem_we 1 1 } } }
	data_l2_3 { ap_memory {  { data_l2_3_address0 mem_address 1 10 }  { data_l2_3_ce0 mem_ce 1 1 }  { data_l2_3_d0 mem_din 1 8 }  { data_l2_3_q0 mem_dout 0 8 }  { data_l2_3_we0 mem_we 1 1 }  { data_l2_3_address1 mem_address 1 10 }  { data_l2_3_ce1 mem_ce 1 1 }  { data_l2_3_d1 mem_din 1 8 }  { data_l2_3_q1 mem_dout 0 8 }  { data_l2_3_we1 mem_we 1 1 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 }  { p_read2_ap_vld in_vld 0 1 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 10 }  { p_read3_ap_vld in_vld 0 1 } } }
	output_l1_0 { ap_memory {  { output_l1_0_address0 mem_address 1 9 }  { output_l1_0_ce0 mem_ce 1 1 }  { output_l1_0_d0 mem_din 1 32 }  { output_l1_0_q0 mem_dout 0 32 }  { output_l1_0_we0 mem_we 1 1 }  { output_l1_0_address1 mem_address 1 9 }  { output_l1_0_ce1 mem_ce 1 1 }  { output_l1_0_d1 mem_din 1 32 }  { output_l1_0_q1 mem_dout 0 32 }  { output_l1_0_we1 mem_we 1 1 } } }
	output_l1_1 { ap_memory {  { output_l1_1_address0 mem_address 1 9 }  { output_l1_1_ce0 mem_ce 1 1 }  { output_l1_1_d0 mem_din 1 32 }  { output_l1_1_q0 mem_dout 0 32 }  { output_l1_1_we0 mem_we 1 1 }  { output_l1_1_address1 mem_address 1 9 }  { output_l1_1_ce1 mem_ce 1 1 }  { output_l1_1_d1 mem_din 1 32 }  { output_l1_1_q1 mem_dout 0 32 }  { output_l1_1_we1 mem_we 1 1 } } }
	output_l1_2 { ap_memory {  { output_l1_2_address0 mem_address 1 9 }  { output_l1_2_ce0 mem_ce 1 1 }  { output_l1_2_d0 mem_din 1 32 }  { output_l1_2_q0 mem_dout 0 32 }  { output_l1_2_we0 mem_we 1 1 }  { output_l1_2_address1 mem_address 1 9 }  { output_l1_2_ce1 mem_ce 1 1 }  { output_l1_2_d1 mem_din 1 32 }  { output_l1_2_q1 mem_dout 0 32 }  { output_l1_2_we1 mem_we 1 1 } } }
	output_l1_3 { ap_memory {  { output_l1_3_address0 mem_address 1 9 }  { output_l1_3_ce0 mem_ce 1 1 }  { output_l1_3_d0 mem_din 1 32 }  { output_l1_3_q0 mem_dout 0 32 }  { output_l1_3_we0 mem_we 1 1 }  { output_l1_3_address1 mem_address 1 9 }  { output_l1_3_ce1 mem_ce 1 1 }  { output_l1_3_d1 mem_din 1 32 }  { output_l1_3_q1 mem_dout 0 32 }  { output_l1_3_we1 mem_we 1 1 } } }
}
