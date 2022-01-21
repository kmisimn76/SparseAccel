set moduleName dataflow_parent_loop_proc19
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dataflow_parent_loop_proc19}
set C_modelType { void 0 }
set C_modelArgList {
	{ div101_cast127 int 30 regular  }
	{ TILES_H int 32 regular  }
	{ TILES_W int 32 regular  }
	{ TILES_R int 32 regular  }
	{ TILES_S int 32 regular  }
	{ weight_l2_0 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_1 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_2 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_3 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ p_read int 9 regular  }
	{ p_read1 int 9 regular  }
	{ ko_2 int 30 regular  }
	{ data_l2_0 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l2_1 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l2_2 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l2_3 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ p_read2 int 32 regular  }
	{ p_read3 int 32 regular  }
	{ p_read4 int 9 regular  }
	{ p_read5 int 32 regular  }
	{ p_read6 int 32 regular  }
	{ output_l2_0 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l2_1 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l2_2 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l2_3 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ p_read7 int 9 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "div101_cast127", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "TILES_H", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "TILES_W", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "TILES_R", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "TILES_S", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ko_2", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_l2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 154
set portList { 
	{ div101_cast127 sc_in sc_lv 30 signal 0 } 
	{ TILES_H sc_in sc_lv 32 signal 1 } 
	{ TILES_W sc_in sc_lv 32 signal 2 } 
	{ TILES_R sc_in sc_lv 32 signal 3 } 
	{ TILES_S sc_in sc_lv 32 signal 4 } 
	{ weight_l2_0_address0 sc_out sc_lv 9 signal 5 } 
	{ weight_l2_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ weight_l2_0_d0 sc_out sc_lv 8 signal 5 } 
	{ weight_l2_0_q0 sc_in sc_lv 8 signal 5 } 
	{ weight_l2_0_we0 sc_out sc_logic 1 signal 5 } 
	{ weight_l2_0_address1 sc_out sc_lv 9 signal 5 } 
	{ weight_l2_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ weight_l2_0_d1 sc_out sc_lv 8 signal 5 } 
	{ weight_l2_0_q1 sc_in sc_lv 8 signal 5 } 
	{ weight_l2_0_we1 sc_out sc_logic 1 signal 5 } 
	{ weight_l2_1_address0 sc_out sc_lv 9 signal 6 } 
	{ weight_l2_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ weight_l2_1_d0 sc_out sc_lv 8 signal 6 } 
	{ weight_l2_1_q0 sc_in sc_lv 8 signal 6 } 
	{ weight_l2_1_we0 sc_out sc_logic 1 signal 6 } 
	{ weight_l2_1_address1 sc_out sc_lv 9 signal 6 } 
	{ weight_l2_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ weight_l2_1_d1 sc_out sc_lv 8 signal 6 } 
	{ weight_l2_1_q1 sc_in sc_lv 8 signal 6 } 
	{ weight_l2_1_we1 sc_out sc_logic 1 signal 6 } 
	{ weight_l2_2_address0 sc_out sc_lv 9 signal 7 } 
	{ weight_l2_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ weight_l2_2_d0 sc_out sc_lv 8 signal 7 } 
	{ weight_l2_2_q0 sc_in sc_lv 8 signal 7 } 
	{ weight_l2_2_we0 sc_out sc_logic 1 signal 7 } 
	{ weight_l2_2_address1 sc_out sc_lv 9 signal 7 } 
	{ weight_l2_2_ce1 sc_out sc_logic 1 signal 7 } 
	{ weight_l2_2_d1 sc_out sc_lv 8 signal 7 } 
	{ weight_l2_2_q1 sc_in sc_lv 8 signal 7 } 
	{ weight_l2_2_we1 sc_out sc_logic 1 signal 7 } 
	{ weight_l2_3_address0 sc_out sc_lv 9 signal 8 } 
	{ weight_l2_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ weight_l2_3_d0 sc_out sc_lv 8 signal 8 } 
	{ weight_l2_3_q0 sc_in sc_lv 8 signal 8 } 
	{ weight_l2_3_we0 sc_out sc_logic 1 signal 8 } 
	{ weight_l2_3_address1 sc_out sc_lv 9 signal 8 } 
	{ weight_l2_3_ce1 sc_out sc_logic 1 signal 8 } 
	{ weight_l2_3_d1 sc_out sc_lv 8 signal 8 } 
	{ weight_l2_3_q1 sc_in sc_lv 8 signal 8 } 
	{ weight_l2_3_we1 sc_out sc_logic 1 signal 8 } 
	{ p_read sc_in sc_lv 9 signal 9 } 
	{ p_read1 sc_in sc_lv 9 signal 10 } 
	{ ko_2 sc_in sc_lv 30 signal 11 } 
	{ data_l2_0_address0 sc_out sc_lv 9 signal 12 } 
	{ data_l2_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ data_l2_0_d0 sc_out sc_lv 8 signal 12 } 
	{ data_l2_0_q0 sc_in sc_lv 8 signal 12 } 
	{ data_l2_0_we0 sc_out sc_logic 1 signal 12 } 
	{ data_l2_0_address1 sc_out sc_lv 9 signal 12 } 
	{ data_l2_0_ce1 sc_out sc_logic 1 signal 12 } 
	{ data_l2_0_d1 sc_out sc_lv 8 signal 12 } 
	{ data_l2_0_q1 sc_in sc_lv 8 signal 12 } 
	{ data_l2_0_we1 sc_out sc_logic 1 signal 12 } 
	{ data_l2_1_address0 sc_out sc_lv 9 signal 13 } 
	{ data_l2_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ data_l2_1_d0 sc_out sc_lv 8 signal 13 } 
	{ data_l2_1_q0 sc_in sc_lv 8 signal 13 } 
	{ data_l2_1_we0 sc_out sc_logic 1 signal 13 } 
	{ data_l2_1_address1 sc_out sc_lv 9 signal 13 } 
	{ data_l2_1_ce1 sc_out sc_logic 1 signal 13 } 
	{ data_l2_1_d1 sc_out sc_lv 8 signal 13 } 
	{ data_l2_1_q1 sc_in sc_lv 8 signal 13 } 
	{ data_l2_1_we1 sc_out sc_logic 1 signal 13 } 
	{ data_l2_2_address0 sc_out sc_lv 9 signal 14 } 
	{ data_l2_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ data_l2_2_d0 sc_out sc_lv 8 signal 14 } 
	{ data_l2_2_q0 sc_in sc_lv 8 signal 14 } 
	{ data_l2_2_we0 sc_out sc_logic 1 signal 14 } 
	{ data_l2_2_address1 sc_out sc_lv 9 signal 14 } 
	{ data_l2_2_ce1 sc_out sc_logic 1 signal 14 } 
	{ data_l2_2_d1 sc_out sc_lv 8 signal 14 } 
	{ data_l2_2_q1 sc_in sc_lv 8 signal 14 } 
	{ data_l2_2_we1 sc_out sc_logic 1 signal 14 } 
	{ data_l2_3_address0 sc_out sc_lv 9 signal 15 } 
	{ data_l2_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ data_l2_3_d0 sc_out sc_lv 8 signal 15 } 
	{ data_l2_3_q0 sc_in sc_lv 8 signal 15 } 
	{ data_l2_3_we0 sc_out sc_logic 1 signal 15 } 
	{ data_l2_3_address1 sc_out sc_lv 9 signal 15 } 
	{ data_l2_3_ce1 sc_out sc_logic 1 signal 15 } 
	{ data_l2_3_d1 sc_out sc_lv 8 signal 15 } 
	{ data_l2_3_q1 sc_in sc_lv 8 signal 15 } 
	{ data_l2_3_we1 sc_out sc_logic 1 signal 15 } 
	{ p_read2 sc_in sc_lv 32 signal 16 } 
	{ p_read3 sc_in sc_lv 32 signal 17 } 
	{ p_read4 sc_in sc_lv 9 signal 18 } 
	{ p_read5 sc_in sc_lv 32 signal 19 } 
	{ p_read6 sc_in sc_lv 32 signal 20 } 
	{ output_l2_0_address0 sc_out sc_lv 9 signal 21 } 
	{ output_l2_0_ce0 sc_out sc_logic 1 signal 21 } 
	{ output_l2_0_d0 sc_out sc_lv 32 signal 21 } 
	{ output_l2_0_q0 sc_in sc_lv 32 signal 21 } 
	{ output_l2_0_we0 sc_out sc_logic 1 signal 21 } 
	{ output_l2_0_address1 sc_out sc_lv 9 signal 21 } 
	{ output_l2_0_ce1 sc_out sc_logic 1 signal 21 } 
	{ output_l2_0_d1 sc_out sc_lv 32 signal 21 } 
	{ output_l2_0_q1 sc_in sc_lv 32 signal 21 } 
	{ output_l2_0_we1 sc_out sc_logic 1 signal 21 } 
	{ output_l2_1_address0 sc_out sc_lv 9 signal 22 } 
	{ output_l2_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ output_l2_1_d0 sc_out sc_lv 32 signal 22 } 
	{ output_l2_1_q0 sc_in sc_lv 32 signal 22 } 
	{ output_l2_1_we0 sc_out sc_logic 1 signal 22 } 
	{ output_l2_1_address1 sc_out sc_lv 9 signal 22 } 
	{ output_l2_1_ce1 sc_out sc_logic 1 signal 22 } 
	{ output_l2_1_d1 sc_out sc_lv 32 signal 22 } 
	{ output_l2_1_q1 sc_in sc_lv 32 signal 22 } 
	{ output_l2_1_we1 sc_out sc_logic 1 signal 22 } 
	{ output_l2_2_address0 sc_out sc_lv 9 signal 23 } 
	{ output_l2_2_ce0 sc_out sc_logic 1 signal 23 } 
	{ output_l2_2_d0 sc_out sc_lv 32 signal 23 } 
	{ output_l2_2_q0 sc_in sc_lv 32 signal 23 } 
	{ output_l2_2_we0 sc_out sc_logic 1 signal 23 } 
	{ output_l2_2_address1 sc_out sc_lv 9 signal 23 } 
	{ output_l2_2_ce1 sc_out sc_logic 1 signal 23 } 
	{ output_l2_2_d1 sc_out sc_lv 32 signal 23 } 
	{ output_l2_2_q1 sc_in sc_lv 32 signal 23 } 
	{ output_l2_2_we1 sc_out sc_logic 1 signal 23 } 
	{ output_l2_3_address0 sc_out sc_lv 9 signal 24 } 
	{ output_l2_3_ce0 sc_out sc_logic 1 signal 24 } 
	{ output_l2_3_d0 sc_out sc_lv 32 signal 24 } 
	{ output_l2_3_q0 sc_in sc_lv 32 signal 24 } 
	{ output_l2_3_we0 sc_out sc_logic 1 signal 24 } 
	{ output_l2_3_address1 sc_out sc_lv 9 signal 24 } 
	{ output_l2_3_ce1 sc_out sc_logic 1 signal 24 } 
	{ output_l2_3_d1 sc_out sc_lv 32 signal 24 } 
	{ output_l2_3_q1 sc_in sc_lv 32 signal 24 } 
	{ output_l2_3_we1 sc_out sc_logic 1 signal 24 } 
	{ p_read7 sc_in sc_lv 9 signal 25 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ TILES_H_ap_vld sc_in sc_logic 1 invld 1 } 
	{ TILES_W_ap_vld sc_in sc_logic 1 invld 2 } 
	{ TILES_R_ap_vld sc_in sc_logic 1 invld 3 } 
	{ TILES_S_ap_vld sc_in sc_logic 1 invld 4 } 
	{ p_read_ap_vld sc_in sc_logic 1 invld 9 } 
	{ p_read1_ap_vld sc_in sc_logic 1 invld 10 } 
	{ ko_2_ap_vld sc_in sc_logic 1 invld 11 } 
	{ p_read2_ap_vld sc_in sc_logic 1 invld 16 } 
	{ p_read3_ap_vld sc_in sc_logic 1 invld 17 } 
	{ p_read4_ap_vld sc_in sc_logic 1 invld 18 } 
	{ p_read5_ap_vld sc_in sc_logic 1 invld 19 } 
	{ p_read6_ap_vld sc_in sc_logic 1 invld 20 } 
	{ p_read7_ap_vld sc_in sc_logic 1 invld 25 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "div101_cast127", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "div101_cast127", "role": "default" }} , 
 	{ "name": "TILES_H", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "TILES_H", "role": "default" }} , 
 	{ "name": "TILES_W", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "TILES_W", "role": "default" }} , 
 	{ "name": "TILES_R", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "TILES_R", "role": "default" }} , 
 	{ "name": "TILES_S", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "TILES_S", "role": "default" }} , 
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
 	{ "name": "ko_2", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "ko_2", "role": "default" }} , 
 	{ "name": "data_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address0" }} , 
 	{ "name": "data_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce0" }} , 
 	{ "name": "data_l2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "d0" }} , 
 	{ "name": "data_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q0" }} , 
 	{ "name": "data_l2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "we0" }} , 
 	{ "name": "data_l2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address1" }} , 
 	{ "name": "data_l2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce1" }} , 
 	{ "name": "data_l2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "d1" }} , 
 	{ "name": "data_l2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q1" }} , 
 	{ "name": "data_l2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "we1" }} , 
 	{ "name": "data_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address0" }} , 
 	{ "name": "data_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce0" }} , 
 	{ "name": "data_l2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "d0" }} , 
 	{ "name": "data_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q0" }} , 
 	{ "name": "data_l2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "we0" }} , 
 	{ "name": "data_l2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address1" }} , 
 	{ "name": "data_l2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce1" }} , 
 	{ "name": "data_l2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "d1" }} , 
 	{ "name": "data_l2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q1" }} , 
 	{ "name": "data_l2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "we1" }} , 
 	{ "name": "data_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address0" }} , 
 	{ "name": "data_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce0" }} , 
 	{ "name": "data_l2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "d0" }} , 
 	{ "name": "data_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q0" }} , 
 	{ "name": "data_l2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "we0" }} , 
 	{ "name": "data_l2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address1" }} , 
 	{ "name": "data_l2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce1" }} , 
 	{ "name": "data_l2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "d1" }} , 
 	{ "name": "data_l2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q1" }} , 
 	{ "name": "data_l2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "we1" }} , 
 	{ "name": "data_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address0" }} , 
 	{ "name": "data_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce0" }} , 
 	{ "name": "data_l2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "d0" }} , 
 	{ "name": "data_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q0" }} , 
 	{ "name": "data_l2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "we0" }} , 
 	{ "name": "data_l2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address1" }} , 
 	{ "name": "data_l2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce1" }} , 
 	{ "name": "data_l2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "d1" }} , 
 	{ "name": "data_l2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q1" }} , 
 	{ "name": "data_l2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "we1" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "output_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_0", "role": "address0" }} , 
 	{ "name": "output_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "ce0" }} , 
 	{ "name": "output_l2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "d0" }} , 
 	{ "name": "output_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "q0" }} , 
 	{ "name": "output_l2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "we0" }} , 
 	{ "name": "output_l2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_0", "role": "address1" }} , 
 	{ "name": "output_l2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "ce1" }} , 
 	{ "name": "output_l2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "d1" }} , 
 	{ "name": "output_l2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "q1" }} , 
 	{ "name": "output_l2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "we1" }} , 
 	{ "name": "output_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_1", "role": "address0" }} , 
 	{ "name": "output_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "ce0" }} , 
 	{ "name": "output_l2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "d0" }} , 
 	{ "name": "output_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "q0" }} , 
 	{ "name": "output_l2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "we0" }} , 
 	{ "name": "output_l2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_1", "role": "address1" }} , 
 	{ "name": "output_l2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "ce1" }} , 
 	{ "name": "output_l2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "d1" }} , 
 	{ "name": "output_l2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "q1" }} , 
 	{ "name": "output_l2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "we1" }} , 
 	{ "name": "output_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_2", "role": "address0" }} , 
 	{ "name": "output_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "ce0" }} , 
 	{ "name": "output_l2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "d0" }} , 
 	{ "name": "output_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "q0" }} , 
 	{ "name": "output_l2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "we0" }} , 
 	{ "name": "output_l2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_2", "role": "address1" }} , 
 	{ "name": "output_l2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "ce1" }} , 
 	{ "name": "output_l2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "d1" }} , 
 	{ "name": "output_l2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "q1" }} , 
 	{ "name": "output_l2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "we1" }} , 
 	{ "name": "output_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_3", "role": "address0" }} , 
 	{ "name": "output_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "ce0" }} , 
 	{ "name": "output_l2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "d0" }} , 
 	{ "name": "output_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "q0" }} , 
 	{ "name": "output_l2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "we0" }} , 
 	{ "name": "output_l2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_3", "role": "address1" }} , 
 	{ "name": "output_l2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "ce1" }} , 
 	{ "name": "output_l2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "d1" }} , 
 	{ "name": "output_l2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "q1" }} , 
 	{ "name": "output_l2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "we1" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "TILES_H_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "TILES_H", "role": "ap_vld" }} , 
 	{ "name": "TILES_W_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "TILES_W", "role": "ap_vld" }} , 
 	{ "name": "TILES_R_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "TILES_R", "role": "ap_vld" }} , 
 	{ "name": "TILES_S_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "TILES_S", "role": "ap_vld" }} , 
 	{ "name": "p_read_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read", "role": "ap_vld" }} , 
 	{ "name": "p_read1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read1", "role": "ap_vld" }} , 
 	{ "name": "ko_2_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ko_2", "role": "ap_vld" }} , 
 	{ "name": "p_read2_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read2", "role": "ap_vld" }} , 
 	{ "name": "p_read3_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read3", "role": "ap_vld" }} , 
 	{ "name": "p_read4_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read4", "role": "ap_vld" }} , 
 	{ "name": "p_read5_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read5", "role": "ap_vld" }} , 
 	{ "name": "p_read6_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read6", "role": "ap_vld" }} , 
 	{ "name": "p_read7_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "p_read7", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_parent_loop_proc19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dataflow_parent_loop_proc18_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_parent_loop_proc18_U0"}],
		"Port" : [
			{"Name" : "div101_cast127", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_H", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_W", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dataflow_parent_loop_proc18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_parent_loop_proc17_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_parent_loop_proc17_U0"}],
		"Port" : [
			{"Name" : "TILES_H", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_W", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "dataflow_parent_loop_proc17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "dataflow_parent_loop_proc16_U0"}],
		"OutputProcess" : [
			{"ID" : "3", "Name" : "dataflow_parent_loop_proc16_U0"}],
		"Port" : [
			{"Name" : "TILES_W", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "dataflow_parent_loop_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "dataflow_parent_loop_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "dataflow_parent_loop_proc_U0"}],
		"Port" : [
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "5", "Name" : "dataflow_in_loop_LOOP_S_OUTER_U0"}],
		"OutputProcess" : [
			{"ID" : "5", "Name" : "dataflow_in_loop_LOOP_S_OUTER_U0"}],
		"Port" : [
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "5", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0", "Parent" : "4", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "52", "59", "82", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130"],
		"CDFG" : "dataflow_in_loop_LOOP_S_OUTER",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "14", "Name" : "dataflow_in_loop_LOOP_S_OUTER_entry25_U0"},
			{"ID" : "15", "Name" : "runWeight2Reg_U0"},
			{"ID" : "52", "Name" : "runDataL2toL1_U0"}],
		"OutputProcess" : [
			{"ID" : "82", "Name" : "runOutputL1toL2_U0"}],
		"Port" : [
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "so", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "82", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "6", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_0_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_1_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_2_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_3_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_0_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_1_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_2_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_3_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0", "Parent" : "5",
		"CDFG" : "dataflow_in_loop_LOOP_S_OUTER_entry25",
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
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "so", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "89", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "90", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "91", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "92", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "93", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "94", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "95", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "96", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "97", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "98", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "99", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "100", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "101", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "102", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "103", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_out9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "104", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "105", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_out10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "106", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "107", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "108", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "109", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "p_out14_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0", "Parent" : "5", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51"],
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
			{"Name" : "empty_19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "89", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "90", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "91", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "92", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "94", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "96", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "110", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "111", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "112", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_9s_9s_9_1_1_U36", "Parent" : "15"},
	{"ID" : "17", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_9s_9s_9_1_1_U37", "Parent" : "15"},
	{"ID" : "18", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U38", "Parent" : "15"},
	{"ID" : "19", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U39", "Parent" : "15"},
	{"ID" : "20", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U40", "Parent" : "15"},
	{"ID" : "21", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U41", "Parent" : "15"},
	{"ID" : "22", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U42", "Parent" : "15"},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U43", "Parent" : "15"},
	{"ID" : "24", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U44", "Parent" : "15"},
	{"ID" : "25", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U45", "Parent" : "15"},
	{"ID" : "26", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U46", "Parent" : "15"},
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U47", "Parent" : "15"},
	{"ID" : "28", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U48", "Parent" : "15"},
	{"ID" : "29", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U49", "Parent" : "15"},
	{"ID" : "30", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U50", "Parent" : "15"},
	{"ID" : "31", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U51", "Parent" : "15"},
	{"ID" : "32", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U52", "Parent" : "15"},
	{"ID" : "33", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U53", "Parent" : "15"},
	{"ID" : "34", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U54", "Parent" : "15"},
	{"ID" : "35", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U55", "Parent" : "15"},
	{"ID" : "36", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U56", "Parent" : "15"},
	{"ID" : "37", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U57", "Parent" : "15"},
	{"ID" : "38", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U58", "Parent" : "15"},
	{"ID" : "39", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U59", "Parent" : "15"},
	{"ID" : "40", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U60", "Parent" : "15"},
	{"ID" : "41", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U61", "Parent" : "15"},
	{"ID" : "42", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U62", "Parent" : "15"},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U63", "Parent" : "15"},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U64", "Parent" : "15"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U65", "Parent" : "15"},
	{"ID" : "46", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U66", "Parent" : "15"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U67", "Parent" : "15"},
	{"ID" : "48", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U68", "Parent" : "15"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U69", "Parent" : "15"},
	{"ID" : "50", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U70", "Parent" : "15"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.ama_addmuladd_9ns_9ns_9s_9ns_9_4_1_U71", "Parent" : "15"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0", "Parent" : "5", "Child" : ["53", "54", "55", "56", "57", "58"],
		"CDFG" : "runDataL2toL1",
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
			{"Name" : "data_l1_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "6"},
			{"Name" : "data_l1_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "7"},
			{"Name" : "data_l1_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "8"},
			{"Name" : "data_l1_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "9"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "98", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "100", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "93", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "102", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "104", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "95", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "97", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "106", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_9s_9s_9_1_1_U92", "Parent" : "52"},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_32ns_32ns_64_1_1_U93", "Parent" : "52"},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_9s_9s_9ns_9_4_1_U94", "Parent" : "52"},
	{"ID" : "56", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_9s_9s_9ns_9_4_1_U95", "Parent" : "52"},
	{"ID" : "57", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ama_addmuladd_9ns_9s_9s_9ns_9_4_1_U96", "Parent" : "52"},
	{"ID" : "58", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_9s_9s_9ns_9_4_1_U97", "Parent" : "52"},
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0", "Parent" : "5", "Child" : ["60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81"],
		"CDFG" : "runSysArr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "113", "DependentChanDepth" : "2"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "114", "DependentChanDepth" : "2"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "115", "DependentChanDepth" : "2"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "116", "DependentChanDepth" : "2"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "117", "DependentChanDepth" : "2"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "118", "DependentChanDepth" : "2"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "119", "DependentChanDepth" : "2"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "120", "DependentChanDepth" : "2"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "121", "DependentChanDepth" : "2"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "122", "DependentChanDepth" : "2"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "123", "DependentChanDepth" : "2"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "124", "DependentChanDepth" : "2"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "125", "DependentChanDepth" : "2"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "126", "DependentChanDepth" : "2"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "127", "DependentChanDepth" : "2"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "128", "DependentChanDepth" : "2"},
			{"Name" : "data_l1_017", "Type" : "Memory", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "6"},
			{"Name" : "data_l1_118", "Type" : "Memory", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "7"},
			{"Name" : "data_l1_219", "Type" : "Memory", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "8"},
			{"Name" : "data_l1_320", "Type" : "Memory", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "9"},
			{"Name" : "output_l1_021", "Type" : "Memory", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "10"},
			{"Name" : "output_l1_122", "Type" : "Memory", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "11"},
			{"Name" : "output_l1_223", "Type" : "Memory", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "12"},
			{"Name" : "output_l1_324", "Type" : "Memory", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "13"},
			{"Name" : "empty_20", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "101", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "99", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "107", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "108", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "112", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "111", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "129", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "82", "DependentChan" : "130", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "60", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.output_l1_local_3_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.output_l1_local_2_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.output_l1_local_1_U", "Parent" : "59"},
	{"ID" : "63", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.output_l1_local_0_U", "Parent" : "59"},
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_32s_32s_32_1_1_U117", "Parent" : "59"},
	{"ID" : "65", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_32ns_32ns_64_1_1_U118", "Parent" : "59"},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U119", "Parent" : "59"},
	{"ID" : "67", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U120", "Parent" : "59"},
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U121", "Parent" : "59"},
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U122", "Parent" : "59"},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U123", "Parent" : "59"},
	{"ID" : "71", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U124", "Parent" : "59"},
	{"ID" : "72", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U125", "Parent" : "59"},
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U126", "Parent" : "59"},
	{"ID" : "74", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U127", "Parent" : "59"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U128", "Parent" : "59"},
	{"ID" : "76", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U129", "Parent" : "59"},
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U130", "Parent" : "59"},
	{"ID" : "78", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U131", "Parent" : "59"},
	{"ID" : "79", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U132", "Parent" : "59"},
	{"ID" : "80", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U133", "Parent" : "59"},
	{"ID" : "81", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U134", "Parent" : "59"},
	{"ID" : "82", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0", "Parent" : "5", "Child" : ["83", "84", "85", "86", "87", "88"],
		"CDFG" : "runOutputL1toL2",
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
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "10"},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "11"},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "12"},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "13"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty_23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "130", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "129", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "110", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "103", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "105", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "109", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_9s_9s_9_1_1_U172", "Parent" : "82"},
	{"ID" : "84", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_9s_9s_9_1_1_U173", "Parent" : "82"},
	{"ID" : "85", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_9s_9s_9_1_1_U174", "Parent" : "82"},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_32ns_32ns_64_1_1_U175", "Parent" : "82"},
	{"ID" : "87", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mac_muladd_9s_9s_9ns_9_4_1_U176", "Parent" : "82"},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ama_addmuladd_9ns_9ns_9s_9ns_9_4_1_U177", "Parent" : "82"},
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c_U", "Parent" : "5"},
	{"ID" : "90", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c1_U", "Parent" : "5"},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ko_2_c_U", "Parent" : "5"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_1_c_U", "Parent" : "5"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_1_c2_U", "Parent" : "5"},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c_U", "Parent" : "5"},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c3_U", "Parent" : "5"},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c_U", "Parent" : "5"},
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c4_U", "Parent" : "5"},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c5_U", "Parent" : "5"},
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c6_U", "Parent" : "5"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c7_U", "Parent" : "5"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c8_U", "Parent" : "5"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ho_c_U", "Parent" : "5"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ho_c9_U", "Parent" : "5"},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.wo_c_U", "Parent" : "5"},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.wo_c10_U", "Parent" : "5"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c11_U", "Parent" : "5"},
	{"ID" : "107", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c12_U", "Parent" : "5"},
	{"ID" : "108", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c13_U", "Parent" : "5"},
	{"ID" : "109", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c14_U", "Parent" : "5"},
	{"ID" : "110", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ko_2_c15_U", "Parent" : "5"},
	{"ID" : "111", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c16_U", "Parent" : "5"},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c17_U", "Parent" : "5"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_0_U", "Parent" : "5"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_1_U", "Parent" : "5"},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_2_U", "Parent" : "5"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_3_U", "Parent" : "5"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_0_U", "Parent" : "5"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_1_U", "Parent" : "5"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_2_U", "Parent" : "5"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_3_U", "Parent" : "5"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_0_U", "Parent" : "5"},
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_1_U", "Parent" : "5"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_2_U", "Parent" : "5"},
	{"ID" : "124", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_3_U", "Parent" : "5"},
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_0_U", "Parent" : "5"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_1_U", "Parent" : "5"},
	{"ID" : "127", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_2_U", "Parent" : "5"},
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_3_U", "Parent" : "5"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c18_U", "Parent" : "5"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c19_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_parent_loop_proc19 {
		div101_cast127 {Type I LastRead 0 FirstWrite -1}
		TILES_H {Type I LastRead 0 FirstWrite -1}
		TILES_W {Type I LastRead 0 FirstWrite -1}
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc18 {
		TILES_H {Type I LastRead 0 FirstWrite -1}
		TILES_W {Type I LastRead 0 FirstWrite -1}
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc17 {
		TILES_W {Type I LastRead 0 FirstWrite -1}
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc16 {
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc {
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_OUTER {
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_OUTER_entry25 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		ko_2_out {Type O LastRead -1 FirstWrite 0}
		co_1_out {Type O LastRead -1 FirstWrite 0}
		co_1_out2 {Type O LastRead -1 FirstWrite 0}
		ro_out {Type O LastRead -1 FirstWrite 0}
		ro_out3 {Type O LastRead -1 FirstWrite 0}
		so_out {Type O LastRead -1 FirstWrite 0}
		so_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}
		p_out8 {Type O LastRead -1 FirstWrite 0}
		ho_out {Type O LastRead -1 FirstWrite 0}
		ho_out9 {Type O LastRead -1 FirstWrite 0}
		wo_out {Type O LastRead -1 FirstWrite 0}
		wo_out10 {Type O LastRead -1 FirstWrite 0}
		p_out11 {Type O LastRead -1 FirstWrite 0}
		p_out12 {Type O LastRead -1 FirstWrite 0}
		p_out13 {Type O LastRead -1 FirstWrite 0}
		p_out14 {Type O LastRead -1 FirstWrite 0}}
	runWeight2Reg {
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		empty_19 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		ko_2_out {Type O LastRead -1 FirstWrite 0}
		ro_out {Type O LastRead -1 FirstWrite 0}
		so_out {Type O LastRead -1 FirstWrite 0}}
	runDataL2toL1 {
		data_l1_0 {Type O LastRead -1 FirstWrite 8}
		data_l1_1 {Type O LastRead -1 FirstWrite 8}
		data_l1_2 {Type O LastRead -1 FirstWrite 8}
		data_l1_3 {Type O LastRead -1 FirstWrite 8}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	runSysArr {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		data_l1_017 {Type I LastRead 2 FirstWrite -1}
		data_l1_118 {Type I LastRead 2 FirstWrite -1}
		data_l1_219 {Type I LastRead 2 FirstWrite -1}
		data_l1_320 {Type I LastRead 2 FirstWrite -1}
		output_l1_021 {Type O LastRead -1 FirstWrite 3}
		output_l1_122 {Type O LastRead -1 FirstWrite 3}
		output_l1_223 {Type O LastRead -1 FirstWrite 3}
		output_l1_324 {Type O LastRead -1 FirstWrite 3}
		empty_20 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	runOutputL1toL2 {
		output_l1_0 {Type I LastRead 4 FirstWrite -1}
		output_l1_1 {Type I LastRead 4 FirstWrite -1}
		output_l1_2 {Type I LastRead 4 FirstWrite -1}
		output_l1_3 {Type I LastRead 4 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	div101_cast127 { ap_none {  { div101_cast127 in_data 0 30 } } }
	TILES_H { ap_none {  { TILES_H in_data 0 32 }  { TILES_H_ap_vld in_vld 0 1 } } }
	TILES_W { ap_none {  { TILES_W in_data 0 32 }  { TILES_W_ap_vld in_vld 0 1 } } }
	TILES_R { ap_none {  { TILES_R in_data 0 32 }  { TILES_R_ap_vld in_vld 0 1 } } }
	TILES_S { ap_none {  { TILES_S in_data 0 32 }  { TILES_S_ap_vld in_vld 0 1 } } }
	weight_l2_0 { ap_memory {  { weight_l2_0_address0 mem_address 1 9 }  { weight_l2_0_ce0 mem_ce 1 1 }  { weight_l2_0_d0 mem_din 1 8 }  { weight_l2_0_q0 mem_dout 0 8 }  { weight_l2_0_we0 mem_we 1 1 }  { weight_l2_0_address1 mem_address 1 9 }  { weight_l2_0_ce1 mem_ce 1 1 }  { weight_l2_0_d1 mem_din 1 8 }  { weight_l2_0_q1 mem_dout 0 8 }  { weight_l2_0_we1 mem_we 1 1 } } }
	weight_l2_1 { ap_memory {  { weight_l2_1_address0 mem_address 1 9 }  { weight_l2_1_ce0 mem_ce 1 1 }  { weight_l2_1_d0 mem_din 1 8 }  { weight_l2_1_q0 mem_dout 0 8 }  { weight_l2_1_we0 mem_we 1 1 }  { weight_l2_1_address1 mem_address 1 9 }  { weight_l2_1_ce1 mem_ce 1 1 }  { weight_l2_1_d1 mem_din 1 8 }  { weight_l2_1_q1 mem_dout 0 8 }  { weight_l2_1_we1 mem_we 1 1 } } }
	weight_l2_2 { ap_memory {  { weight_l2_2_address0 mem_address 1 9 }  { weight_l2_2_ce0 mem_ce 1 1 }  { weight_l2_2_d0 mem_din 1 8 }  { weight_l2_2_q0 mem_dout 0 8 }  { weight_l2_2_we0 mem_we 1 1 }  { weight_l2_2_address1 mem_address 1 9 }  { weight_l2_2_ce1 mem_ce 1 1 }  { weight_l2_2_d1 mem_din 1 8 }  { weight_l2_2_q1 mem_dout 0 8 }  { weight_l2_2_we1 mem_we 1 1 } } }
	weight_l2_3 { ap_memory {  { weight_l2_3_address0 mem_address 1 9 }  { weight_l2_3_ce0 mem_ce 1 1 }  { weight_l2_3_d0 mem_din 1 8 }  { weight_l2_3_q0 mem_dout 0 8 }  { weight_l2_3_we0 mem_we 1 1 }  { weight_l2_3_address1 mem_address 1 9 }  { weight_l2_3_ce1 mem_ce 1 1 }  { weight_l2_3_d1 mem_din 1 8 }  { weight_l2_3_q1 mem_dout 0 8 }  { weight_l2_3_we1 mem_we 1 1 } } }
	p_read { ap_none {  { p_read in_data 0 9 }  { p_read_ap_vld in_vld 0 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 9 }  { p_read1_ap_vld in_vld 0 1 } } }
	ko_2 { ap_none {  { ko_2 in_data 0 30 }  { ko_2_ap_vld in_vld 0 1 } } }
	data_l2_0 { ap_memory {  { data_l2_0_address0 mem_address 1 9 }  { data_l2_0_ce0 mem_ce 1 1 }  { data_l2_0_d0 mem_din 1 8 }  { data_l2_0_q0 mem_dout 0 8 }  { data_l2_0_we0 mem_we 1 1 }  { data_l2_0_address1 mem_address 1 9 }  { data_l2_0_ce1 mem_ce 1 1 }  { data_l2_0_d1 mem_din 1 8 }  { data_l2_0_q1 mem_dout 0 8 }  { data_l2_0_we1 mem_we 1 1 } } }
	data_l2_1 { ap_memory {  { data_l2_1_address0 mem_address 1 9 }  { data_l2_1_ce0 mem_ce 1 1 }  { data_l2_1_d0 mem_din 1 8 }  { data_l2_1_q0 mem_dout 0 8 }  { data_l2_1_we0 mem_we 1 1 }  { data_l2_1_address1 mem_address 1 9 }  { data_l2_1_ce1 mem_ce 1 1 }  { data_l2_1_d1 mem_din 1 8 }  { data_l2_1_q1 mem_dout 0 8 }  { data_l2_1_we1 mem_we 1 1 } } }
	data_l2_2 { ap_memory {  { data_l2_2_address0 mem_address 1 9 }  { data_l2_2_ce0 mem_ce 1 1 }  { data_l2_2_d0 mem_din 1 8 }  { data_l2_2_q0 mem_dout 0 8 }  { data_l2_2_we0 mem_we 1 1 }  { data_l2_2_address1 mem_address 1 9 }  { data_l2_2_ce1 mem_ce 1 1 }  { data_l2_2_d1 mem_din 1 8 }  { data_l2_2_q1 mem_dout 0 8 }  { data_l2_2_we1 mem_we 1 1 } } }
	data_l2_3 { ap_memory {  { data_l2_3_address0 mem_address 1 9 }  { data_l2_3_ce0 mem_ce 1 1 }  { data_l2_3_d0 mem_din 1 8 }  { data_l2_3_q0 mem_dout 0 8 }  { data_l2_3_we0 mem_we 1 1 }  { data_l2_3_address1 mem_address 1 9 }  { data_l2_3_ce1 mem_ce 1 1 }  { data_l2_3_d1 mem_din 1 8 }  { data_l2_3_q1 mem_dout 0 8 }  { data_l2_3_we1 mem_we 1 1 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 }  { p_read2_ap_vld in_vld 0 1 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 }  { p_read3_ap_vld in_vld 0 1 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 9 }  { p_read4_ap_vld in_vld 0 1 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 }  { p_read5_ap_vld in_vld 0 1 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 }  { p_read6_ap_vld in_vld 0 1 } } }
	output_l2_0 { ap_memory {  { output_l2_0_address0 mem_address 1 9 }  { output_l2_0_ce0 mem_ce 1 1 }  { output_l2_0_d0 mem_din 1 32 }  { output_l2_0_q0 mem_dout 0 32 }  { output_l2_0_we0 mem_we 1 1 }  { output_l2_0_address1 mem_address 1 9 }  { output_l2_0_ce1 mem_ce 1 1 }  { output_l2_0_d1 mem_din 1 32 }  { output_l2_0_q1 mem_dout 0 32 }  { output_l2_0_we1 mem_we 1 1 } } }
	output_l2_1 { ap_memory {  { output_l2_1_address0 mem_address 1 9 }  { output_l2_1_ce0 mem_ce 1 1 }  { output_l2_1_d0 mem_din 1 32 }  { output_l2_1_q0 mem_dout 0 32 }  { output_l2_1_we0 mem_we 1 1 }  { output_l2_1_address1 mem_address 1 9 }  { output_l2_1_ce1 mem_ce 1 1 }  { output_l2_1_d1 mem_din 1 32 }  { output_l2_1_q1 mem_dout 0 32 }  { output_l2_1_we1 mem_we 1 1 } } }
	output_l2_2 { ap_memory {  { output_l2_2_address0 mem_address 1 9 }  { output_l2_2_ce0 mem_ce 1 1 }  { output_l2_2_d0 mem_din 1 32 }  { output_l2_2_q0 mem_dout 0 32 }  { output_l2_2_we0 mem_we 1 1 }  { output_l2_2_address1 mem_address 1 9 }  { output_l2_2_ce1 mem_ce 1 1 }  { output_l2_2_d1 mem_din 1 32 }  { output_l2_2_q1 mem_dout 0 32 }  { output_l2_2_we1 mem_we 1 1 } } }
	output_l2_3 { ap_memory {  { output_l2_3_address0 mem_address 1 9 }  { output_l2_3_ce0 mem_ce 1 1 }  { output_l2_3_d0 mem_din 1 32 }  { output_l2_3_q0 mem_dout 0 32 }  { output_l2_3_we0 mem_we 1 1 }  { output_l2_3_address1 mem_address 1 9 }  { output_l2_3_ce1 mem_ce 1 1 }  { output_l2_3_d1 mem_din 1 32 }  { output_l2_3_q1 mem_dout 0 32 }  { output_l2_3_we1 mem_we 1 1 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 9 }  { p_read7_ap_vld in_vld 0 1 } } }
}
