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
	{ lshr_ln282_3_cast int 32 regular  }
	{ lshr_ln282_2_cast int 32 regular  }
	{ lshr_ln282_1_cast int 32 regular  }
	{ lshr_ln282_cast int 32 regular  }
	{ param_L1_TILENUM_S int 32 regular  }
	{ param int 1184 regular  }
	{ ko_1 int 32 regular  }
	{ data_l2_0 int 8 regular {array 2048 { 1 3 } 1 1 }  }
	{ data_l2_1 int 8 regular {array 2048 { 1 3 } 1 1 }  }
	{ data_l2_2 int 8 regular {array 2048 { 1 3 } 1 1 }  }
	{ data_l2_3 int 8 regular {array 2048 { 1 3 } 1 1 }  }
	{ output_l2_0 int 32 regular {array 1568 { 0 3 } 0 1 }  }
	{ output_l2_1 int 32 regular {array 1568 { 0 3 } 0 1 }  }
	{ output_l2_2 int 32 regular {array 1568 { 0 3 } 0 1 }  }
	{ output_l2_3 int 32 regular {array 1568 { 0 3 } 0 1 }  }
	{ weight_l2_0 int 8 regular {array 2304 { 1 3 } 1 1 }  }
	{ weight_l2_1 int 8 regular {array 2304 { 1 3 } 1 1 }  }
	{ weight_l2_2 int 8 regular {array 2304 { 1 3 } 1 1 }  }
	{ weight_l2_3 int 8 regular {array 2304 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lshr_ln282_3_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lshr_ln282_2_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lshr_ln282_1_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lshr_ln282_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "param_L1_TILENUM_S", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "param", "interface" : "wire", "bitwidth" : 1184, "direction" : "READONLY"} , 
 	{ "Name" : "ko_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_l2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "weight_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 164
set portList { 
	{ lshr_ln282_3_cast sc_in sc_lv 32 signal 0 } 
	{ lshr_ln282_2_cast sc_in sc_lv 32 signal 1 } 
	{ lshr_ln282_1_cast sc_in sc_lv 32 signal 2 } 
	{ lshr_ln282_cast sc_in sc_lv 32 signal 3 } 
	{ param_L1_TILENUM_S sc_in sc_lv 32 signal 4 } 
	{ param sc_in sc_lv 1184 signal 5 } 
	{ ko_1 sc_in sc_lv 32 signal 6 } 
	{ data_l2_0_address0 sc_out sc_lv 11 signal 7 } 
	{ data_l2_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ data_l2_0_d0 sc_out sc_lv 8 signal 7 } 
	{ data_l2_0_q0 sc_in sc_lv 8 signal 7 } 
	{ data_l2_0_we0 sc_out sc_logic 1 signal 7 } 
	{ data_l2_0_address1 sc_out sc_lv 11 signal 7 } 
	{ data_l2_0_ce1 sc_out sc_logic 1 signal 7 } 
	{ data_l2_0_d1 sc_out sc_lv 8 signal 7 } 
	{ data_l2_0_q1 sc_in sc_lv 8 signal 7 } 
	{ data_l2_0_we1 sc_out sc_logic 1 signal 7 } 
	{ data_l2_1_address0 sc_out sc_lv 11 signal 8 } 
	{ data_l2_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ data_l2_1_d0 sc_out sc_lv 8 signal 8 } 
	{ data_l2_1_q0 sc_in sc_lv 8 signal 8 } 
	{ data_l2_1_we0 sc_out sc_logic 1 signal 8 } 
	{ data_l2_1_address1 sc_out sc_lv 11 signal 8 } 
	{ data_l2_1_ce1 sc_out sc_logic 1 signal 8 } 
	{ data_l2_1_d1 sc_out sc_lv 8 signal 8 } 
	{ data_l2_1_q1 sc_in sc_lv 8 signal 8 } 
	{ data_l2_1_we1 sc_out sc_logic 1 signal 8 } 
	{ data_l2_2_address0 sc_out sc_lv 11 signal 9 } 
	{ data_l2_2_ce0 sc_out sc_logic 1 signal 9 } 
	{ data_l2_2_d0 sc_out sc_lv 8 signal 9 } 
	{ data_l2_2_q0 sc_in sc_lv 8 signal 9 } 
	{ data_l2_2_we0 sc_out sc_logic 1 signal 9 } 
	{ data_l2_2_address1 sc_out sc_lv 11 signal 9 } 
	{ data_l2_2_ce1 sc_out sc_logic 1 signal 9 } 
	{ data_l2_2_d1 sc_out sc_lv 8 signal 9 } 
	{ data_l2_2_q1 sc_in sc_lv 8 signal 9 } 
	{ data_l2_2_we1 sc_out sc_logic 1 signal 9 } 
	{ data_l2_3_address0 sc_out sc_lv 11 signal 10 } 
	{ data_l2_3_ce0 sc_out sc_logic 1 signal 10 } 
	{ data_l2_3_d0 sc_out sc_lv 8 signal 10 } 
	{ data_l2_3_q0 sc_in sc_lv 8 signal 10 } 
	{ data_l2_3_we0 sc_out sc_logic 1 signal 10 } 
	{ data_l2_3_address1 sc_out sc_lv 11 signal 10 } 
	{ data_l2_3_ce1 sc_out sc_logic 1 signal 10 } 
	{ data_l2_3_d1 sc_out sc_lv 8 signal 10 } 
	{ data_l2_3_q1 sc_in sc_lv 8 signal 10 } 
	{ data_l2_3_we1 sc_out sc_logic 1 signal 10 } 
	{ output_l2_0_address0 sc_out sc_lv 11 signal 11 } 
	{ output_l2_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ output_l2_0_d0 sc_out sc_lv 32 signal 11 } 
	{ output_l2_0_q0 sc_in sc_lv 32 signal 11 } 
	{ output_l2_0_we0 sc_out sc_logic 1 signal 11 } 
	{ output_l2_0_address1 sc_out sc_lv 11 signal 11 } 
	{ output_l2_0_ce1 sc_out sc_logic 1 signal 11 } 
	{ output_l2_0_d1 sc_out sc_lv 32 signal 11 } 
	{ output_l2_0_q1 sc_in sc_lv 32 signal 11 } 
	{ output_l2_0_we1 sc_out sc_logic 1 signal 11 } 
	{ output_l2_1_address0 sc_out sc_lv 11 signal 12 } 
	{ output_l2_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ output_l2_1_d0 sc_out sc_lv 32 signal 12 } 
	{ output_l2_1_q0 sc_in sc_lv 32 signal 12 } 
	{ output_l2_1_we0 sc_out sc_logic 1 signal 12 } 
	{ output_l2_1_address1 sc_out sc_lv 11 signal 12 } 
	{ output_l2_1_ce1 sc_out sc_logic 1 signal 12 } 
	{ output_l2_1_d1 sc_out sc_lv 32 signal 12 } 
	{ output_l2_1_q1 sc_in sc_lv 32 signal 12 } 
	{ output_l2_1_we1 sc_out sc_logic 1 signal 12 } 
	{ output_l2_2_address0 sc_out sc_lv 11 signal 13 } 
	{ output_l2_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ output_l2_2_d0 sc_out sc_lv 32 signal 13 } 
	{ output_l2_2_q0 sc_in sc_lv 32 signal 13 } 
	{ output_l2_2_we0 sc_out sc_logic 1 signal 13 } 
	{ output_l2_2_address1 sc_out sc_lv 11 signal 13 } 
	{ output_l2_2_ce1 sc_out sc_logic 1 signal 13 } 
	{ output_l2_2_d1 sc_out sc_lv 32 signal 13 } 
	{ output_l2_2_q1 sc_in sc_lv 32 signal 13 } 
	{ output_l2_2_we1 sc_out sc_logic 1 signal 13 } 
	{ output_l2_3_address0 sc_out sc_lv 11 signal 14 } 
	{ output_l2_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ output_l2_3_d0 sc_out sc_lv 32 signal 14 } 
	{ output_l2_3_q0 sc_in sc_lv 32 signal 14 } 
	{ output_l2_3_we0 sc_out sc_logic 1 signal 14 } 
	{ output_l2_3_address1 sc_out sc_lv 11 signal 14 } 
	{ output_l2_3_ce1 sc_out sc_logic 1 signal 14 } 
	{ output_l2_3_d1 sc_out sc_lv 32 signal 14 } 
	{ output_l2_3_q1 sc_in sc_lv 32 signal 14 } 
	{ output_l2_3_we1 sc_out sc_logic 1 signal 14 } 
	{ weight_l2_0_address0 sc_out sc_lv 12 signal 15 } 
	{ weight_l2_0_ce0 sc_out sc_logic 1 signal 15 } 
	{ weight_l2_0_d0 sc_out sc_lv 8 signal 15 } 
	{ weight_l2_0_q0 sc_in sc_lv 8 signal 15 } 
	{ weight_l2_0_we0 sc_out sc_logic 1 signal 15 } 
	{ weight_l2_0_address1 sc_out sc_lv 12 signal 15 } 
	{ weight_l2_0_ce1 sc_out sc_logic 1 signal 15 } 
	{ weight_l2_0_d1 sc_out sc_lv 8 signal 15 } 
	{ weight_l2_0_q1 sc_in sc_lv 8 signal 15 } 
	{ weight_l2_0_we1 sc_out sc_logic 1 signal 15 } 
	{ weight_l2_1_address0 sc_out sc_lv 12 signal 16 } 
	{ weight_l2_1_ce0 sc_out sc_logic 1 signal 16 } 
	{ weight_l2_1_d0 sc_out sc_lv 8 signal 16 } 
	{ weight_l2_1_q0 sc_in sc_lv 8 signal 16 } 
	{ weight_l2_1_we0 sc_out sc_logic 1 signal 16 } 
	{ weight_l2_1_address1 sc_out sc_lv 12 signal 16 } 
	{ weight_l2_1_ce1 sc_out sc_logic 1 signal 16 } 
	{ weight_l2_1_d1 sc_out sc_lv 8 signal 16 } 
	{ weight_l2_1_q1 sc_in sc_lv 8 signal 16 } 
	{ weight_l2_1_we1 sc_out sc_logic 1 signal 16 } 
	{ weight_l2_2_address0 sc_out sc_lv 12 signal 17 } 
	{ weight_l2_2_ce0 sc_out sc_logic 1 signal 17 } 
	{ weight_l2_2_d0 sc_out sc_lv 8 signal 17 } 
	{ weight_l2_2_q0 sc_in sc_lv 8 signal 17 } 
	{ weight_l2_2_we0 sc_out sc_logic 1 signal 17 } 
	{ weight_l2_2_address1 sc_out sc_lv 12 signal 17 } 
	{ weight_l2_2_ce1 sc_out sc_logic 1 signal 17 } 
	{ weight_l2_2_d1 sc_out sc_lv 8 signal 17 } 
	{ weight_l2_2_q1 sc_in sc_lv 8 signal 17 } 
	{ weight_l2_2_we1 sc_out sc_logic 1 signal 17 } 
	{ weight_l2_3_address0 sc_out sc_lv 12 signal 18 } 
	{ weight_l2_3_ce0 sc_out sc_logic 1 signal 18 } 
	{ weight_l2_3_d0 sc_out sc_lv 8 signal 18 } 
	{ weight_l2_3_q0 sc_in sc_lv 8 signal 18 } 
	{ weight_l2_3_we0 sc_out sc_logic 1 signal 18 } 
	{ weight_l2_3_address1 sc_out sc_lv 12 signal 18 } 
	{ weight_l2_3_ce1 sc_out sc_logic 1 signal 18 } 
	{ weight_l2_3_d1 sc_out sc_lv 8 signal 18 } 
	{ weight_l2_3_q1 sc_in sc_lv 8 signal 18 } 
	{ weight_l2_3_we1 sc_out sc_logic 1 signal 18 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ lshr_ln282_2_cast_ap_vld sc_in sc_logic 1 invld 1 } 
	{ lshr_ln282_1_cast_ap_vld sc_in sc_logic 1 invld 2 } 
	{ lshr_ln282_cast_ap_vld sc_in sc_logic 1 invld 3 } 
	{ param_L1_TILENUM_S_ap_vld sc_in sc_logic 1 invld 4 } 
	{ param_ap_vld sc_in sc_logic 1 invld 5 } 
	{ ko_1_ap_vld sc_in sc_logic 1 invld 6 } 
	{ data_l2_0_empty_n sc_in sc_logic 1 signal -1 } 
	{ data_l2_0_read sc_out sc_logic 1 signal -1 } 
	{ data_l2_1_empty_n sc_in sc_logic 1 signal -1 } 
	{ data_l2_1_read sc_out sc_logic 1 signal -1 } 
	{ data_l2_2_empty_n sc_in sc_logic 1 signal -1 } 
	{ data_l2_2_read sc_out sc_logic 1 signal -1 } 
	{ data_l2_3_empty_n sc_in sc_logic 1 signal -1 } 
	{ data_l2_3_read sc_out sc_logic 1 signal -1 } 
	{ output_l2_0_full_n sc_in sc_logic 1 signal -1 } 
	{ output_l2_0_write sc_out sc_logic 1 signal -1 } 
	{ output_l2_1_full_n sc_in sc_logic 1 signal -1 } 
	{ output_l2_1_write sc_out sc_logic 1 signal -1 } 
	{ output_l2_2_full_n sc_in sc_logic 1 signal -1 } 
	{ output_l2_2_write sc_out sc_logic 1 signal -1 } 
	{ output_l2_3_full_n sc_in sc_logic 1 signal -1 } 
	{ output_l2_3_write sc_out sc_logic 1 signal -1 } 
	{ weight_l2_0_empty_n sc_in sc_logic 1 signal -1 } 
	{ weight_l2_0_read sc_out sc_logic 1 signal -1 } 
	{ weight_l2_1_empty_n sc_in sc_logic 1 signal -1 } 
	{ weight_l2_1_read sc_out sc_logic 1 signal -1 } 
	{ weight_l2_2_empty_n sc_in sc_logic 1 signal -1 } 
	{ weight_l2_2_read sc_out sc_logic 1 signal -1 } 
	{ weight_l2_3_empty_n sc_in sc_logic 1 signal -1 } 
	{ weight_l2_3_read sc_out sc_logic 1 signal -1 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "lshr_ln282_3_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lshr_ln282_3_cast", "role": "default" }} , 
 	{ "name": "lshr_ln282_2_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lshr_ln282_2_cast", "role": "default" }} , 
 	{ "name": "lshr_ln282_1_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lshr_ln282_1_cast", "role": "default" }} , 
 	{ "name": "lshr_ln282_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lshr_ln282_cast", "role": "default" }} , 
 	{ "name": "param_L1_TILENUM_S", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "param_L1_TILENUM_S", "role": "default" }} , 
 	{ "name": "param", "direction": "in", "datatype": "sc_lv", "bitwidth":1184, "type": "signal", "bundle":{"name": "param", "role": "default" }} , 
 	{ "name": "ko_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ko_1", "role": "default" }} , 
 	{ "name": "data_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address0" }} , 
 	{ "name": "data_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce0" }} , 
 	{ "name": "data_l2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "d0" }} , 
 	{ "name": "data_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q0" }} , 
 	{ "name": "data_l2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "we0" }} , 
 	{ "name": "data_l2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address1" }} , 
 	{ "name": "data_l2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce1" }} , 
 	{ "name": "data_l2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "d1" }} , 
 	{ "name": "data_l2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q1" }} , 
 	{ "name": "data_l2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "we1" }} , 
 	{ "name": "data_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address0" }} , 
 	{ "name": "data_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce0" }} , 
 	{ "name": "data_l2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "d0" }} , 
 	{ "name": "data_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q0" }} , 
 	{ "name": "data_l2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "we0" }} , 
 	{ "name": "data_l2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address1" }} , 
 	{ "name": "data_l2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce1" }} , 
 	{ "name": "data_l2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "d1" }} , 
 	{ "name": "data_l2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q1" }} , 
 	{ "name": "data_l2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "we1" }} , 
 	{ "name": "data_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address0" }} , 
 	{ "name": "data_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce0" }} , 
 	{ "name": "data_l2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "d0" }} , 
 	{ "name": "data_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q0" }} , 
 	{ "name": "data_l2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "we0" }} , 
 	{ "name": "data_l2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address1" }} , 
 	{ "name": "data_l2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce1" }} , 
 	{ "name": "data_l2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "d1" }} , 
 	{ "name": "data_l2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q1" }} , 
 	{ "name": "data_l2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "we1" }} , 
 	{ "name": "data_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address0" }} , 
 	{ "name": "data_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce0" }} , 
 	{ "name": "data_l2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "d0" }} , 
 	{ "name": "data_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q0" }} , 
 	{ "name": "data_l2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "we0" }} , 
 	{ "name": "data_l2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address1" }} , 
 	{ "name": "data_l2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce1" }} , 
 	{ "name": "data_l2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "d1" }} , 
 	{ "name": "data_l2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q1" }} , 
 	{ "name": "data_l2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "we1" }} , 
 	{ "name": "output_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_l2_0", "role": "address0" }} , 
 	{ "name": "output_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "ce0" }} , 
 	{ "name": "output_l2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "d0" }} , 
 	{ "name": "output_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "q0" }} , 
 	{ "name": "output_l2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "we0" }} , 
 	{ "name": "output_l2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_l2_0", "role": "address1" }} , 
 	{ "name": "output_l2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "ce1" }} , 
 	{ "name": "output_l2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "d1" }} , 
 	{ "name": "output_l2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "q1" }} , 
 	{ "name": "output_l2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "we1" }} , 
 	{ "name": "output_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_l2_1", "role": "address0" }} , 
 	{ "name": "output_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "ce0" }} , 
 	{ "name": "output_l2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "d0" }} , 
 	{ "name": "output_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "q0" }} , 
 	{ "name": "output_l2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "we0" }} , 
 	{ "name": "output_l2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_l2_1", "role": "address1" }} , 
 	{ "name": "output_l2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "ce1" }} , 
 	{ "name": "output_l2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "d1" }} , 
 	{ "name": "output_l2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "q1" }} , 
 	{ "name": "output_l2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "we1" }} , 
 	{ "name": "output_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_l2_2", "role": "address0" }} , 
 	{ "name": "output_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "ce0" }} , 
 	{ "name": "output_l2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "d0" }} , 
 	{ "name": "output_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "q0" }} , 
 	{ "name": "output_l2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "we0" }} , 
 	{ "name": "output_l2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_l2_2", "role": "address1" }} , 
 	{ "name": "output_l2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "ce1" }} , 
 	{ "name": "output_l2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "d1" }} , 
 	{ "name": "output_l2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "q1" }} , 
 	{ "name": "output_l2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "we1" }} , 
 	{ "name": "output_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_l2_3", "role": "address0" }} , 
 	{ "name": "output_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "ce0" }} , 
 	{ "name": "output_l2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "d0" }} , 
 	{ "name": "output_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "q0" }} , 
 	{ "name": "output_l2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "we0" }} , 
 	{ "name": "output_l2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "output_l2_3", "role": "address1" }} , 
 	{ "name": "output_l2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "ce1" }} , 
 	{ "name": "output_l2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "d1" }} , 
 	{ "name": "output_l2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "q1" }} , 
 	{ "name": "output_l2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "we1" }} , 
 	{ "name": "weight_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "address0" }} , 
 	{ "name": "weight_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "ce0" }} , 
 	{ "name": "weight_l2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "d0" }} , 
 	{ "name": "weight_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "q0" }} , 
 	{ "name": "weight_l2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "we0" }} , 
 	{ "name": "weight_l2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "address1" }} , 
 	{ "name": "weight_l2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "ce1" }} , 
 	{ "name": "weight_l2_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "d1" }} , 
 	{ "name": "weight_l2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "q1" }} , 
 	{ "name": "weight_l2_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "we1" }} , 
 	{ "name": "weight_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "address0" }} , 
 	{ "name": "weight_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "ce0" }} , 
 	{ "name": "weight_l2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "d0" }} , 
 	{ "name": "weight_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "q0" }} , 
 	{ "name": "weight_l2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "we0" }} , 
 	{ "name": "weight_l2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "address1" }} , 
 	{ "name": "weight_l2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "ce1" }} , 
 	{ "name": "weight_l2_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "d1" }} , 
 	{ "name": "weight_l2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "q1" }} , 
 	{ "name": "weight_l2_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "we1" }} , 
 	{ "name": "weight_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "address0" }} , 
 	{ "name": "weight_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "ce0" }} , 
 	{ "name": "weight_l2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "d0" }} , 
 	{ "name": "weight_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "q0" }} , 
 	{ "name": "weight_l2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "we0" }} , 
 	{ "name": "weight_l2_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "address1" }} , 
 	{ "name": "weight_l2_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "ce1" }} , 
 	{ "name": "weight_l2_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "d1" }} , 
 	{ "name": "weight_l2_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "q1" }} , 
 	{ "name": "weight_l2_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "we1" }} , 
 	{ "name": "weight_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "address0" }} , 
 	{ "name": "weight_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "ce0" }} , 
 	{ "name": "weight_l2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "d0" }} , 
 	{ "name": "weight_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "q0" }} , 
 	{ "name": "weight_l2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "we0" }} , 
 	{ "name": "weight_l2_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "address1" }} , 
 	{ "name": "weight_l2_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "ce1" }} , 
 	{ "name": "weight_l2_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "d1" }} , 
 	{ "name": "weight_l2_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "q1" }} , 
 	{ "name": "weight_l2_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "lshr_ln282_2_cast_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "lshr_ln282_2_cast", "role": "ap_vld" }} , 
 	{ "name": "lshr_ln282_1_cast_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "lshr_ln282_1_cast", "role": "ap_vld" }} , 
 	{ "name": "lshr_ln282_cast_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "lshr_ln282_cast", "role": "ap_vld" }} , 
 	{ "name": "param_L1_TILENUM_S_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "param_L1_TILENUM_S", "role": "ap_vld" }} , 
 	{ "name": "param_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "param", "role": "ap_vld" }} , 
 	{ "name": "ko_1_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "ko_1", "role": "ap_vld" }} , 
 	{ "name": "data_l2_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0_empty_n", "role": "default" }} , 
 	{ "name": "data_l2_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0_read", "role": "default" }} , 
 	{ "name": "data_l2_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1_empty_n", "role": "default" }} , 
 	{ "name": "data_l2_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1_read", "role": "default" }} , 
 	{ "name": "data_l2_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2_empty_n", "role": "default" }} , 
 	{ "name": "data_l2_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2_read", "role": "default" }} , 
 	{ "name": "data_l2_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3_empty_n", "role": "default" }} , 
 	{ "name": "data_l2_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3_read", "role": "default" }} , 
 	{ "name": "output_l2_0_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0_full_n", "role": "default" }} , 
 	{ "name": "output_l2_0_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0_write", "role": "default" }} , 
 	{ "name": "output_l2_1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1_full_n", "role": "default" }} , 
 	{ "name": "output_l2_1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1_write", "role": "default" }} , 
 	{ "name": "output_l2_2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2_full_n", "role": "default" }} , 
 	{ "name": "output_l2_2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2_write", "role": "default" }} , 
 	{ "name": "output_l2_3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3_full_n", "role": "default" }} , 
 	{ "name": "output_l2_3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3_write", "role": "default" }} , 
 	{ "name": "weight_l2_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0_empty_n", "role": "default" }} , 
 	{ "name": "weight_l2_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0_read", "role": "default" }} , 
 	{ "name": "weight_l2_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1_empty_n", "role": "default" }} , 
 	{ "name": "weight_l2_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1_read", "role": "default" }} , 
 	{ "name": "weight_l2_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2_empty_n", "role": "default" }} , 
 	{ "name": "weight_l2_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2_read", "role": "default" }} , 
 	{ "name": "weight_l2_3_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3_empty_n", "role": "default" }} , 
 	{ "name": "weight_l2_3_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3_read", "role": "default" }} , 
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "904", "EstimateLatencyMax" : "904",
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
			{"Name" : "lshr_ln282_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dataflow_parent_loop_proc18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "902", "EstimateLatencyMax" : "902",
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
			{"Name" : "lshr_ln282_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0", "Parent" : "1", "Child" : ["3"],
		"CDFG" : "dataflow_parent_loop_proc17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "900", "EstimateLatencyMax" : "900",
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
			{"Name" : "lshr_ln282_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0", "Parent" : "2", "Child" : ["4"],
		"CDFG" : "dataflow_parent_loop_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "898", "EstimateLatencyMax" : "898",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "4", "Name" : "dataflow_parent_loop_proc15_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "dataflow_parent_loop_proc15_U0"}],
		"Port" : [
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "4", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0", "Parent" : "3", "Child" : ["5"],
		"CDFG" : "dataflow_parent_loop_proc15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "298", "EstimateLatencyMax" : "298",
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
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "5", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0", "Parent" : "4", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "52", "59", "78", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123"],
		"CDFG" : "dataflow_in_loop_LOOP_S_OUTER",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "176", "EstimateLatencyMax" : "176",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "14", "Name" : "dataflow_in_loop_LOOP_S_OUTER_entry28_U0"},
			{"ID" : "15", "Name" : "runWeight2Reg_U0"},
			{"ID" : "52", "Name" : "runDataL2toL1_U0"}],
		"OutputProcess" : [
			{"ID" : "78", "Name" : "runOutputL1toL2_U0"}],
		"Port" : [
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "so", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_3"}]},
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
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "78", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "6", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_0_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_1_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_2_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_3_U", "Parent" : "5"},
	{"ID" : "10", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_0_U", "Parent" : "5"},
	{"ID" : "11", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_1_U", "Parent" : "5"},
	{"ID" : "12", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_2_U", "Parent" : "5"},
	{"ID" : "13", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_3_U", "Parent" : "5"},
	{"ID" : "14", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry28_U0", "Parent" : "5",
		"CDFG" : "dataflow_in_loop_LOOP_S_OUTER_entry28",
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
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "so", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "89", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "90", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "91", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "92", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "93", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_out2_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "ho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "98", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "99", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "52", "DependentChan" : "100", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "101", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_out6_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "15", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0", "Parent" : "5", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51"],
		"CDFG" : "runWeight2Reg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56", "EstimateLatencyMax" : "56",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "89", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "91", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "92", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "94", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "96", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "102", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "103", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "104", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "co_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "105", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "106", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "16", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U109", "Parent" : "15"},
	{"ID" : "17", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U110", "Parent" : "15"},
	{"ID" : "18", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U111", "Parent" : "15"},
	{"ID" : "19", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U112", "Parent" : "15"},
	{"ID" : "20", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U113", "Parent" : "15"},
	{"ID" : "21", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U114", "Parent" : "15"},
	{"ID" : "22", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U115", "Parent" : "15"},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U116", "Parent" : "15"},
	{"ID" : "24", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U117", "Parent" : "15"},
	{"ID" : "25", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U118", "Parent" : "15"},
	{"ID" : "26", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U119", "Parent" : "15"},
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U120", "Parent" : "15"},
	{"ID" : "28", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U121", "Parent" : "15"},
	{"ID" : "29", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U122", "Parent" : "15"},
	{"ID" : "30", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U123", "Parent" : "15"},
	{"ID" : "31", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U124", "Parent" : "15"},
	{"ID" : "32", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U125", "Parent" : "15"},
	{"ID" : "33", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U126", "Parent" : "15"},
	{"ID" : "34", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U127", "Parent" : "15"},
	{"ID" : "35", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U128", "Parent" : "15"},
	{"ID" : "36", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U129", "Parent" : "15"},
	{"ID" : "37", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U130", "Parent" : "15"},
	{"ID" : "38", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U131", "Parent" : "15"},
	{"ID" : "39", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U132", "Parent" : "15"},
	{"ID" : "40", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U133", "Parent" : "15"},
	{"ID" : "41", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U134", "Parent" : "15"},
	{"ID" : "42", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U135", "Parent" : "15"},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U136", "Parent" : "15"},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U137", "Parent" : "15"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U138", "Parent" : "15"},
	{"ID" : "46", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U139", "Parent" : "15"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U140", "Parent" : "15"},
	{"ID" : "48", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U141", "Parent" : "15"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_mul_12s_12s_12_4_1_U142", "Parent" : "15"},
	{"ID" : "50", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_mul_12s_12s_12_4_1_U143", "Parent" : "15"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.ama_addmuladd_12ns_12s_12s_12ns_12_4_1_U144", "Parent" : "15"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0", "Parent" : "5", "Child" : ["53", "54", "55", "56", "57", "58"],
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
			{"Name" : "data_l1_017_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "6"},
			{"Name" : "data_l1_118_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "7"},
			{"Name" : "data_l1_219_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "8"},
			{"Name" : "data_l1_320_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "59", "DependentChan" : "9"},
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "90", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "93", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "98", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "100", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "95", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "97", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_32ns_32ns_64_1_1_U165", "Parent" : "52"},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_11s_11s_11ns_11_4_1_U166", "Parent" : "52"},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_11s_11s_11ns_11_4_1_U167", "Parent" : "52"},
	{"ID" : "56", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_mul_11s_11s_11_4_1_U168", "Parent" : "52"},
	{"ID" : "57", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ama_addmuladd_11ns_11s_11s_11ns_11_4_1_U169", "Parent" : "52"},
	{"ID" : "58", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_6s_6s_6ns_6_4_1_U170", "Parent" : "52"},
	{"ID" : "59", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0", "Parent" : "5", "Child" : ["60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77"],
		"CDFG" : "runSysArr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "107", "DependentChanDepth" : "2"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "108", "DependentChanDepth" : "2"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "109", "DependentChanDepth" : "2"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "110", "DependentChanDepth" : "2"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "111", "DependentChanDepth" : "2"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "112", "DependentChanDepth" : "2"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "113", "DependentChanDepth" : "2"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "114", "DependentChanDepth" : "2"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "115", "DependentChanDepth" : "2"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "116", "DependentChanDepth" : "2"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "117", "DependentChanDepth" : "2"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "118", "DependentChanDepth" : "2"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "119", "DependentChanDepth" : "2"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "120", "DependentChanDepth" : "2"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "121", "DependentChanDepth" : "2"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "122", "DependentChanDepth" : "2"},
			{"Name" : "data_l1_017_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "6"},
			{"Name" : "data_l1_118_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "7"},
			{"Name" : "data_l1_219_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "8"},
			{"Name" : "data_l1_320_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "52", "DependentChan" : "9"},
			{"Name" : "output_l1_021_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "10"},
			{"Name" : "output_l1_122_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "11"},
			{"Name" : "output_l1_223_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "12"},
			{"Name" : "output_l1_324_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "13"},
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "102", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "78", "DependentChan" : "123", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "60", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_32s_32s_32_1_1_U190", "Parent" : "59"},
	{"ID" : "61", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_32ns_32ns_64_1_1_U191", "Parent" : "59"},
	{"ID" : "62", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U192", "Parent" : "59"},
	{"ID" : "63", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U193", "Parent" : "59"},
	{"ID" : "64", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U194", "Parent" : "59"},
	{"ID" : "65", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U195", "Parent" : "59"},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U196", "Parent" : "59"},
	{"ID" : "67", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U197", "Parent" : "59"},
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U198", "Parent" : "59"},
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U199", "Parent" : "59"},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U200", "Parent" : "59"},
	{"ID" : "71", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U201", "Parent" : "59"},
	{"ID" : "72", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U202", "Parent" : "59"},
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U203", "Parent" : "59"},
	{"ID" : "74", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U204", "Parent" : "59"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U205", "Parent" : "59"},
	{"ID" : "76", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U206", "Parent" : "59"},
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U207", "Parent" : "59"},
	{"ID" : "78", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0", "Parent" : "5", "Child" : ["79", "80", "81", "82", "83", "84", "85", "86", "87", "88"],
		"CDFG" : "runOutputL1toL2",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_86", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_86", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_132", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_132", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_86", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_132", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_132", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "8", "FromAddress" : "output_l2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_134", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_134", "ToFinalSV" : "8", "ToAddress" : "output_l2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_116", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_118", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_118", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_116", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_137", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_137", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_118", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_118", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_116", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_118", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_118", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_137", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_137", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_120", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_120", "FromFinalSV" : "8", "FromAddress" : "output_l2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_139", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_139", "ToFinalSV" : "8", "ToAddress" : "output_l2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_122", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_124", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_124", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_122", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_142", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_142", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_124", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_124", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_122", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_124", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_124", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_142", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_142", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_126", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_126", "FromFinalSV" : "8", "FromAddress" : "output_l2_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_144", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_144", "ToFinalSV" : "8", "ToAddress" : "output_l2_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_98", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_128", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_130", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_130", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_98", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_128", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_147", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_147", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_130", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_130", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_98", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_128", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_130", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_130", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_147", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_147", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_132", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_132", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_86", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_132", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_132", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_134", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_134", "FromFinalSV" : "8", "FromAddress" : "output_l2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "8", "ToAddress" : "output_l2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_137", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_137", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_116", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_137", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_137", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_118", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_118", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_139", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_139", "FromFinalSV" : "8", "FromAddress" : "output_l2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_120", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_120", "ToFinalSV" : "8", "ToAddress" : "output_l2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_142", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_142", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_122", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_142", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_142", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_124", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_124", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_144", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_144", "FromFinalSV" : "8", "FromAddress" : "output_l2_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_126", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_126", "ToFinalSV" : "8", "ToAddress" : "output_l2_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_147", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_147", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_98", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_128", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_147", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_147", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_130", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_130", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "output_l1_021_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "10"},
			{"Name" : "output_l1_122_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "11"},
			{"Name" : "output_l1_223_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "12"},
			{"Name" : "output_l1_324_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "13"},
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "59", "DependentChan" : "123", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "103", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "99", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "14", "DependentChan" : "101", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "105", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "104", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "106", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "79", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.output_l2_reduction_0_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.output_l2_reduction_1_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.output_l2_reduction_2_U", "Parent" : "78"},
	{"ID" : "82", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.output_l2_reduction_3_U", "Parent" : "78"},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_32ns_32ns_64_1_1_U238", "Parent" : "78"},
	{"ID" : "84", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_mul_11s_11s_11_4_1_U239", "Parent" : "78"},
	{"ID" : "85", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_mul_11s_11s_11_4_1_U240", "Parent" : "78"},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_mul_11s_11s_11_4_1_U241", "Parent" : "78"},
	{"ID" : "87", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mac_muladd_6s_6s_6ns_6_4_1_U242", "Parent" : "78"},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ama_addmuladd_11ns_11s_11s_11ns_11_4_1_U243", "Parent" : "78"},
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.param_c_U", "Parent" : "5"},
	{"ID" : "90", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.param_c1_U", "Parent" : "5"},
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ko_1_c_U", "Parent" : "5"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_c_U", "Parent" : "5"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_c2_U", "Parent" : "5"},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c_U", "Parent" : "5"},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c3_U", "Parent" : "5"},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c_U", "Parent" : "5"},
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c4_U", "Parent" : "5"},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ho_c_U", "Parent" : "5"},
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ho_c5_U", "Parent" : "5"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.wo_c_U", "Parent" : "5"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.wo_c6_U", "Parent" : "5"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.param_c7_U", "Parent" : "5"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ko_1_c8_U", "Parent" : "5"},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_c9_U", "Parent" : "5"},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c10_U", "Parent" : "5"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c11_U", "Parent" : "5"},
	{"ID" : "107", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_0_U", "Parent" : "5"},
	{"ID" : "108", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_1_U", "Parent" : "5"},
	{"ID" : "109", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_2_U", "Parent" : "5"},
	{"ID" : "110", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_3_U", "Parent" : "5"},
	{"ID" : "111", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_0_U", "Parent" : "5"},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_1_U", "Parent" : "5"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_2_U", "Parent" : "5"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_3_U", "Parent" : "5"},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_0_U", "Parent" : "5"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_1_U", "Parent" : "5"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_2_U", "Parent" : "5"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_3_U", "Parent" : "5"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_0_U", "Parent" : "5"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_1_U", "Parent" : "5"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_2_U", "Parent" : "5"},
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_3_U", "Parent" : "5"},
	{"ID" : "123", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.param_c12_U", "Parent" : "5"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_parent_loop_proc19 {
		lshr_ln282_3_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_2_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_1_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc18 {
		lshr_ln282_2_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_1_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc17 {
		lshr_ln282_1_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc16 {
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc15 {
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_OUTER {
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_OUTER_entry28 {
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		param_out {Type O LastRead -1 FirstWrite 0}
		param_out1 {Type O LastRead -1 FirstWrite 0}
		ko_1_out {Type O LastRead -1 FirstWrite 0}
		co_out {Type O LastRead -1 FirstWrite 0}
		co_out2 {Type O LastRead -1 FirstWrite 0}
		ro_out {Type O LastRead -1 FirstWrite 0}
		ro_out3 {Type O LastRead -1 FirstWrite 0}
		so_out {Type O LastRead -1 FirstWrite 0}
		so_out4 {Type O LastRead -1 FirstWrite 0}
		ho_out {Type O LastRead -1 FirstWrite 0}
		ho_out5 {Type O LastRead -1 FirstWrite 0}
		wo_out {Type O LastRead -1 FirstWrite 0}
		wo_out6 {Type O LastRead -1 FirstWrite 0}}
	runWeight2Reg {
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		param_out {Type O LastRead -1 FirstWrite 0}
		ko_1_out {Type O LastRead -1 FirstWrite 0}
		co_out {Type O LastRead -1 FirstWrite 0}
		ro_out {Type O LastRead -1 FirstWrite 0}
		so_out {Type O LastRead -1 FirstWrite 0}}
	runDataL2toL1 {
		data_l1_017_i {Type O LastRead -1 FirstWrite 8}
		data_l1_118_i {Type O LastRead -1 FirstWrite 8}
		data_l1_219_i {Type O LastRead -1 FirstWrite 8}
		data_l1_320_i {Type O LastRead -1 FirstWrite 8}
		param {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}}
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
		data_l1_017_i {Type I LastRead 2 FirstWrite -1}
		data_l1_118_i {Type I LastRead 2 FirstWrite -1}
		data_l1_219_i {Type I LastRead 2 FirstWrite -1}
		data_l1_320_i {Type I LastRead 2 FirstWrite -1}
		output_l1_021_i {Type O LastRead -1 FirstWrite 3}
		output_l1_122_i {Type O LastRead -1 FirstWrite 3}
		output_l1_223_i {Type O LastRead -1 FirstWrite 3}
		output_l1_324_i {Type O LastRead -1 FirstWrite 3}
		param {Type I LastRead 0 FirstWrite -1}
		param_out {Type O LastRead -1 FirstWrite 0}}
	runOutputL1toL2 {
		output_l1_021_i {Type I LastRead 7 FirstWrite -1}
		output_l1_122_i {Type I LastRead 8 FirstWrite -1}
		output_l1_223_i {Type I LastRead 8 FirstWrite -1}
		output_l1_324_i {Type I LastRead 8 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "904", "Max" : "904"}
	, {"Name" : "Interval", "Min" : "904", "Max" : "904"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	lshr_ln282_3_cast { ap_none {  { lshr_ln282_3_cast in_data 0 32 } } }
	lshr_ln282_2_cast { ap_none {  { lshr_ln282_2_cast in_data 0 32 }  { lshr_ln282_2_cast_ap_vld in_vld 0 1 } } }
	lshr_ln282_1_cast { ap_none {  { lshr_ln282_1_cast in_data 0 32 }  { lshr_ln282_1_cast_ap_vld in_vld 0 1 } } }
	lshr_ln282_cast { ap_none {  { lshr_ln282_cast in_data 0 32 }  { lshr_ln282_cast_ap_vld in_vld 0 1 } } }
	param_L1_TILENUM_S { ap_none {  { param_L1_TILENUM_S in_data 0 32 }  { param_L1_TILENUM_S_ap_vld in_vld 0 1 } } }
	param { ap_none {  { param in_data 0 1184 }  { param_ap_vld in_vld 0 1 } } }
	ko_1 { ap_none {  { ko_1 in_data 0 32 }  { ko_1_ap_vld in_vld 0 1 } } }
	data_l2_0 { ap_memory {  { data_l2_0_address0 mem_address 1 11 }  { data_l2_0_ce0 mem_ce 1 1 }  { data_l2_0_d0 mem_din 1 8 }  { data_l2_0_q0 mem_dout 0 8 }  { data_l2_0_we0 mem_we 1 1 }  { data_l2_0_address1 mem_address 1 11 }  { data_l2_0_ce1 mem_ce 1 1 }  { data_l2_0_d1 mem_din 1 8 }  { data_l2_0_q1 mem_dout 0 8 }  { data_l2_0_we1 mem_we 1 1 } } }
	data_l2_1 { ap_memory {  { data_l2_1_address0 mem_address 1 11 }  { data_l2_1_ce0 mem_ce 1 1 }  { data_l2_1_d0 mem_din 1 8 }  { data_l2_1_q0 mem_dout 0 8 }  { data_l2_1_we0 mem_we 1 1 }  { data_l2_1_address1 mem_address 1 11 }  { data_l2_1_ce1 mem_ce 1 1 }  { data_l2_1_d1 mem_din 1 8 }  { data_l2_1_q1 mem_dout 0 8 }  { data_l2_1_we1 mem_we 1 1 } } }
	data_l2_2 { ap_memory {  { data_l2_2_address0 mem_address 1 11 }  { data_l2_2_ce0 mem_ce 1 1 }  { data_l2_2_d0 mem_din 1 8 }  { data_l2_2_q0 mem_dout 0 8 }  { data_l2_2_we0 mem_we 1 1 }  { data_l2_2_address1 mem_address 1 11 }  { data_l2_2_ce1 mem_ce 1 1 }  { data_l2_2_d1 mem_din 1 8 }  { data_l2_2_q1 mem_dout 0 8 }  { data_l2_2_we1 mem_we 1 1 } } }
	data_l2_3 { ap_memory {  { data_l2_3_address0 mem_address 1 11 }  { data_l2_3_ce0 mem_ce 1 1 }  { data_l2_3_d0 mem_din 1 8 }  { data_l2_3_q0 mem_dout 0 8 }  { data_l2_3_we0 mem_we 1 1 }  { data_l2_3_address1 mem_address 1 11 }  { data_l2_3_ce1 mem_ce 1 1 }  { data_l2_3_d1 mem_din 1 8 }  { data_l2_3_q1 mem_dout 0 8 }  { data_l2_3_we1 mem_we 1 1 } } }
	output_l2_0 { ap_memory {  { output_l2_0_address0 mem_address 1 11 }  { output_l2_0_ce0 mem_ce 1 1 }  { output_l2_0_d0 mem_din 1 32 }  { output_l2_0_q0 mem_dout 0 32 }  { output_l2_0_we0 mem_we 1 1 }  { output_l2_0_address1 mem_address 1 11 }  { output_l2_0_ce1 mem_ce 1 1 }  { output_l2_0_d1 mem_din 1 32 }  { output_l2_0_q1 mem_dout 0 32 }  { output_l2_0_we1 mem_we 1 1 } } }
	output_l2_1 { ap_memory {  { output_l2_1_address0 mem_address 1 11 }  { output_l2_1_ce0 mem_ce 1 1 }  { output_l2_1_d0 mem_din 1 32 }  { output_l2_1_q0 mem_dout 0 32 }  { output_l2_1_we0 mem_we 1 1 }  { output_l2_1_address1 mem_address 1 11 }  { output_l2_1_ce1 mem_ce 1 1 }  { output_l2_1_d1 mem_din 1 32 }  { output_l2_1_q1 mem_dout 0 32 }  { output_l2_1_we1 mem_we 1 1 } } }
	output_l2_2 { ap_memory {  { output_l2_2_address0 mem_address 1 11 }  { output_l2_2_ce0 mem_ce 1 1 }  { output_l2_2_d0 mem_din 1 32 }  { output_l2_2_q0 mem_dout 0 32 }  { output_l2_2_we0 mem_we 1 1 }  { output_l2_2_address1 mem_address 1 11 }  { output_l2_2_ce1 mem_ce 1 1 }  { output_l2_2_d1 mem_din 1 32 }  { output_l2_2_q1 mem_dout 0 32 }  { output_l2_2_we1 mem_we 1 1 } } }
	output_l2_3 { ap_memory {  { output_l2_3_address0 mem_address 1 11 }  { output_l2_3_ce0 mem_ce 1 1 }  { output_l2_3_d0 mem_din 1 32 }  { output_l2_3_q0 mem_dout 0 32 }  { output_l2_3_we0 mem_we 1 1 }  { output_l2_3_address1 mem_address 1 11 }  { output_l2_3_ce1 mem_ce 1 1 }  { output_l2_3_d1 mem_din 1 32 }  { output_l2_3_q1 mem_dout 0 32 }  { output_l2_3_we1 mem_we 1 1 } } }
	weight_l2_0 { ap_memory {  { weight_l2_0_address0 mem_address 1 12 }  { weight_l2_0_ce0 mem_ce 1 1 }  { weight_l2_0_d0 mem_din 1 8 }  { weight_l2_0_q0 mem_dout 0 8 }  { weight_l2_0_we0 mem_we 1 1 }  { weight_l2_0_address1 mem_address 1 12 }  { weight_l2_0_ce1 mem_ce 1 1 }  { weight_l2_0_d1 mem_din 1 8 }  { weight_l2_0_q1 mem_dout 0 8 }  { weight_l2_0_we1 mem_we 1 1 } } }
	weight_l2_1 { ap_memory {  { weight_l2_1_address0 mem_address 1 12 }  { weight_l2_1_ce0 mem_ce 1 1 }  { weight_l2_1_d0 mem_din 1 8 }  { weight_l2_1_q0 mem_dout 0 8 }  { weight_l2_1_we0 mem_we 1 1 }  { weight_l2_1_address1 mem_address 1 12 }  { weight_l2_1_ce1 mem_ce 1 1 }  { weight_l2_1_d1 mem_din 1 8 }  { weight_l2_1_q1 mem_dout 0 8 }  { weight_l2_1_we1 mem_we 1 1 } } }
	weight_l2_2 { ap_memory {  { weight_l2_2_address0 mem_address 1 12 }  { weight_l2_2_ce0 mem_ce 1 1 }  { weight_l2_2_d0 mem_din 1 8 }  { weight_l2_2_q0 mem_dout 0 8 }  { weight_l2_2_we0 mem_we 1 1 }  { weight_l2_2_address1 mem_address 1 12 }  { weight_l2_2_ce1 mem_ce 1 1 }  { weight_l2_2_d1 mem_din 1 8 }  { weight_l2_2_q1 mem_dout 0 8 }  { weight_l2_2_we1 mem_we 1 1 } } }
	weight_l2_3 { ap_memory {  { weight_l2_3_address0 mem_address 1 12 }  { weight_l2_3_ce0 mem_ce 1 1 }  { weight_l2_3_d0 mem_din 1 8 }  { weight_l2_3_q0 mem_dout 0 8 }  { weight_l2_3_we0 mem_we 1 1 }  { weight_l2_3_address1 mem_address 1 12 }  { weight_l2_3_ce1 mem_ce 1 1 }  { weight_l2_3_d1 mem_din 1 8 }  { weight_l2_3_q1 mem_dout 0 8 }  { weight_l2_3_we1 mem_we 1 1 } } }
}
