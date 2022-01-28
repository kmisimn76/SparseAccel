set moduleName runDataL2toL1
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
set C_modelName {runDataL2toL1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_l1_0257_i int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_1258_i int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_2259_i int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_3260_i int 8 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_4261_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_5262_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_6263_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_7264_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_8265_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_9266_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_10267_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_11268_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_12269_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_13270_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_14271_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ data_l1_15272_i int 1 regular {array 49 { 0 3 } 0 1 }  }
	{ param int 1120 regular {fifo 0}  }
	{ co int 11 regular {fifo 0}  }
	{ ho int 11 regular {fifo 0}  }
	{ wo int 11 regular {fifo 0}  }
	{ ro int 11 regular {fifo 0}  }
	{ so int 11 regular {fifo 0}  }
	{ data_l2_0 int 8 regular {array 2048 { 1 3 } 1 1 }  }
	{ data_l2_1 int 8 regular {array 2048 { 1 3 } 1 1 }  }
	{ data_l2_2 int 8 regular {array 2048 { 1 3 } 1 1 }  }
	{ data_l2_3 int 8 regular {array 2048 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_l1_0257_i", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_1258_i", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_2259_i", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_3260_i", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_4261_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_5262_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_6263_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_7264_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_8265_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_9266_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_10267_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_11268_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_12269_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_13270_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_14271_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_15272_i", "interface" : "memory", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "param", "interface" : "fifo", "bitwidth" : 1120, "direction" : "READONLY"} , 
 	{ "Name" : "co", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "ho", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "wo", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "ro", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "so", "interface" : "fifo", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 101
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_l1_0257_i_address0 sc_out sc_lv 6 signal 0 } 
	{ data_l1_0257_i_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_l1_0257_i_we0 sc_out sc_logic 1 signal 0 } 
	{ data_l1_0257_i_d0 sc_out sc_lv 8 signal 0 } 
	{ data_l1_1258_i_address0 sc_out sc_lv 6 signal 1 } 
	{ data_l1_1258_i_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_l1_1258_i_we0 sc_out sc_logic 1 signal 1 } 
	{ data_l1_1258_i_d0 sc_out sc_lv 8 signal 1 } 
	{ data_l1_2259_i_address0 sc_out sc_lv 6 signal 2 } 
	{ data_l1_2259_i_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_l1_2259_i_we0 sc_out sc_logic 1 signal 2 } 
	{ data_l1_2259_i_d0 sc_out sc_lv 8 signal 2 } 
	{ data_l1_3260_i_address0 sc_out sc_lv 6 signal 3 } 
	{ data_l1_3260_i_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_l1_3260_i_we0 sc_out sc_logic 1 signal 3 } 
	{ data_l1_3260_i_d0 sc_out sc_lv 8 signal 3 } 
	{ data_l1_4261_i_address0 sc_out sc_lv 6 signal 4 } 
	{ data_l1_4261_i_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_l1_4261_i_we0 sc_out sc_logic 1 signal 4 } 
	{ data_l1_4261_i_d0 sc_out sc_lv 1 signal 4 } 
	{ data_l1_5262_i_address0 sc_out sc_lv 6 signal 5 } 
	{ data_l1_5262_i_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_l1_5262_i_we0 sc_out sc_logic 1 signal 5 } 
	{ data_l1_5262_i_d0 sc_out sc_lv 1 signal 5 } 
	{ data_l1_6263_i_address0 sc_out sc_lv 6 signal 6 } 
	{ data_l1_6263_i_ce0 sc_out sc_logic 1 signal 6 } 
	{ data_l1_6263_i_we0 sc_out sc_logic 1 signal 6 } 
	{ data_l1_6263_i_d0 sc_out sc_lv 1 signal 6 } 
	{ data_l1_7264_i_address0 sc_out sc_lv 6 signal 7 } 
	{ data_l1_7264_i_ce0 sc_out sc_logic 1 signal 7 } 
	{ data_l1_7264_i_we0 sc_out sc_logic 1 signal 7 } 
	{ data_l1_7264_i_d0 sc_out sc_lv 1 signal 7 } 
	{ data_l1_8265_i_address0 sc_out sc_lv 6 signal 8 } 
	{ data_l1_8265_i_ce0 sc_out sc_logic 1 signal 8 } 
	{ data_l1_8265_i_we0 sc_out sc_logic 1 signal 8 } 
	{ data_l1_8265_i_d0 sc_out sc_lv 1 signal 8 } 
	{ data_l1_9266_i_address0 sc_out sc_lv 6 signal 9 } 
	{ data_l1_9266_i_ce0 sc_out sc_logic 1 signal 9 } 
	{ data_l1_9266_i_we0 sc_out sc_logic 1 signal 9 } 
	{ data_l1_9266_i_d0 sc_out sc_lv 1 signal 9 } 
	{ data_l1_10267_i_address0 sc_out sc_lv 6 signal 10 } 
	{ data_l1_10267_i_ce0 sc_out sc_logic 1 signal 10 } 
	{ data_l1_10267_i_we0 sc_out sc_logic 1 signal 10 } 
	{ data_l1_10267_i_d0 sc_out sc_lv 1 signal 10 } 
	{ data_l1_11268_i_address0 sc_out sc_lv 6 signal 11 } 
	{ data_l1_11268_i_ce0 sc_out sc_logic 1 signal 11 } 
	{ data_l1_11268_i_we0 sc_out sc_logic 1 signal 11 } 
	{ data_l1_11268_i_d0 sc_out sc_lv 1 signal 11 } 
	{ data_l1_12269_i_address0 sc_out sc_lv 6 signal 12 } 
	{ data_l1_12269_i_ce0 sc_out sc_logic 1 signal 12 } 
	{ data_l1_12269_i_we0 sc_out sc_logic 1 signal 12 } 
	{ data_l1_12269_i_d0 sc_out sc_lv 1 signal 12 } 
	{ data_l1_13270_i_address0 sc_out sc_lv 6 signal 13 } 
	{ data_l1_13270_i_ce0 sc_out sc_logic 1 signal 13 } 
	{ data_l1_13270_i_we0 sc_out sc_logic 1 signal 13 } 
	{ data_l1_13270_i_d0 sc_out sc_lv 1 signal 13 } 
	{ data_l1_14271_i_address0 sc_out sc_lv 6 signal 14 } 
	{ data_l1_14271_i_ce0 sc_out sc_logic 1 signal 14 } 
	{ data_l1_14271_i_we0 sc_out sc_logic 1 signal 14 } 
	{ data_l1_14271_i_d0 sc_out sc_lv 1 signal 14 } 
	{ data_l1_15272_i_address0 sc_out sc_lv 6 signal 15 } 
	{ data_l1_15272_i_ce0 sc_out sc_logic 1 signal 15 } 
	{ data_l1_15272_i_we0 sc_out sc_logic 1 signal 15 } 
	{ data_l1_15272_i_d0 sc_out sc_lv 1 signal 15 } 
	{ param_dout sc_in sc_lv 1120 signal 16 } 
	{ param_empty_n sc_in sc_logic 1 signal 16 } 
	{ param_read sc_out sc_logic 1 signal 16 } 
	{ co_dout sc_in sc_lv 11 signal 17 } 
	{ co_empty_n sc_in sc_logic 1 signal 17 } 
	{ co_read sc_out sc_logic 1 signal 17 } 
	{ ho_dout sc_in sc_lv 11 signal 18 } 
	{ ho_empty_n sc_in sc_logic 1 signal 18 } 
	{ ho_read sc_out sc_logic 1 signal 18 } 
	{ wo_dout sc_in sc_lv 11 signal 19 } 
	{ wo_empty_n sc_in sc_logic 1 signal 19 } 
	{ wo_read sc_out sc_logic 1 signal 19 } 
	{ ro_dout sc_in sc_lv 11 signal 20 } 
	{ ro_empty_n sc_in sc_logic 1 signal 20 } 
	{ ro_read sc_out sc_logic 1 signal 20 } 
	{ so_dout sc_in sc_lv 11 signal 21 } 
	{ so_empty_n sc_in sc_logic 1 signal 21 } 
	{ so_read sc_out sc_logic 1 signal 21 } 
	{ data_l2_0_address0 sc_out sc_lv 11 signal 22 } 
	{ data_l2_0_ce0 sc_out sc_logic 1 signal 22 } 
	{ data_l2_0_q0 sc_in sc_lv 8 signal 22 } 
	{ data_l2_1_address0 sc_out sc_lv 11 signal 23 } 
	{ data_l2_1_ce0 sc_out sc_logic 1 signal 23 } 
	{ data_l2_1_q0 sc_in sc_lv 8 signal 23 } 
	{ data_l2_2_address0 sc_out sc_lv 11 signal 24 } 
	{ data_l2_2_ce0 sc_out sc_logic 1 signal 24 } 
	{ data_l2_2_q0 sc_in sc_lv 8 signal 24 } 
	{ data_l2_3_address0 sc_out sc_lv 11 signal 25 } 
	{ data_l2_3_ce0 sc_out sc_logic 1 signal 25 } 
	{ data_l2_3_q0 sc_in sc_lv 8 signal 25 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_l1_0257_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_0257_i", "role": "address0" }} , 
 	{ "name": "data_l1_0257_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_0257_i", "role": "ce0" }} , 
 	{ "name": "data_l1_0257_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_0257_i", "role": "we0" }} , 
 	{ "name": "data_l1_0257_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_0257_i", "role": "d0" }} , 
 	{ "name": "data_l1_1258_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_1258_i", "role": "address0" }} , 
 	{ "name": "data_l1_1258_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_1258_i", "role": "ce0" }} , 
 	{ "name": "data_l1_1258_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_1258_i", "role": "we0" }} , 
 	{ "name": "data_l1_1258_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_1258_i", "role": "d0" }} , 
 	{ "name": "data_l1_2259_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_2259_i", "role": "address0" }} , 
 	{ "name": "data_l1_2259_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_2259_i", "role": "ce0" }} , 
 	{ "name": "data_l1_2259_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_2259_i", "role": "we0" }} , 
 	{ "name": "data_l1_2259_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_2259_i", "role": "d0" }} , 
 	{ "name": "data_l1_3260_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_3260_i", "role": "address0" }} , 
 	{ "name": "data_l1_3260_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_3260_i", "role": "ce0" }} , 
 	{ "name": "data_l1_3260_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_3260_i", "role": "we0" }} , 
 	{ "name": "data_l1_3260_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_3260_i", "role": "d0" }} , 
 	{ "name": "data_l1_4261_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_4261_i", "role": "address0" }} , 
 	{ "name": "data_l1_4261_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_4261_i", "role": "ce0" }} , 
 	{ "name": "data_l1_4261_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_4261_i", "role": "we0" }} , 
 	{ "name": "data_l1_4261_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_4261_i", "role": "d0" }} , 
 	{ "name": "data_l1_5262_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_5262_i", "role": "address0" }} , 
 	{ "name": "data_l1_5262_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_5262_i", "role": "ce0" }} , 
 	{ "name": "data_l1_5262_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_5262_i", "role": "we0" }} , 
 	{ "name": "data_l1_5262_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_5262_i", "role": "d0" }} , 
 	{ "name": "data_l1_6263_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_6263_i", "role": "address0" }} , 
 	{ "name": "data_l1_6263_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_6263_i", "role": "ce0" }} , 
 	{ "name": "data_l1_6263_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_6263_i", "role": "we0" }} , 
 	{ "name": "data_l1_6263_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_6263_i", "role": "d0" }} , 
 	{ "name": "data_l1_7264_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_7264_i", "role": "address0" }} , 
 	{ "name": "data_l1_7264_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_7264_i", "role": "ce0" }} , 
 	{ "name": "data_l1_7264_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_7264_i", "role": "we0" }} , 
 	{ "name": "data_l1_7264_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_7264_i", "role": "d0" }} , 
 	{ "name": "data_l1_8265_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_8265_i", "role": "address0" }} , 
 	{ "name": "data_l1_8265_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_8265_i", "role": "ce0" }} , 
 	{ "name": "data_l1_8265_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_8265_i", "role": "we0" }} , 
 	{ "name": "data_l1_8265_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_8265_i", "role": "d0" }} , 
 	{ "name": "data_l1_9266_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_9266_i", "role": "address0" }} , 
 	{ "name": "data_l1_9266_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_9266_i", "role": "ce0" }} , 
 	{ "name": "data_l1_9266_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_9266_i", "role": "we0" }} , 
 	{ "name": "data_l1_9266_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_9266_i", "role": "d0" }} , 
 	{ "name": "data_l1_10267_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_10267_i", "role": "address0" }} , 
 	{ "name": "data_l1_10267_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_10267_i", "role": "ce0" }} , 
 	{ "name": "data_l1_10267_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_10267_i", "role": "we0" }} , 
 	{ "name": "data_l1_10267_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_10267_i", "role": "d0" }} , 
 	{ "name": "data_l1_11268_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_11268_i", "role": "address0" }} , 
 	{ "name": "data_l1_11268_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_11268_i", "role": "ce0" }} , 
 	{ "name": "data_l1_11268_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_11268_i", "role": "we0" }} , 
 	{ "name": "data_l1_11268_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_11268_i", "role": "d0" }} , 
 	{ "name": "data_l1_12269_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_12269_i", "role": "address0" }} , 
 	{ "name": "data_l1_12269_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_12269_i", "role": "ce0" }} , 
 	{ "name": "data_l1_12269_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_12269_i", "role": "we0" }} , 
 	{ "name": "data_l1_12269_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_12269_i", "role": "d0" }} , 
 	{ "name": "data_l1_13270_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_13270_i", "role": "address0" }} , 
 	{ "name": "data_l1_13270_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_13270_i", "role": "ce0" }} , 
 	{ "name": "data_l1_13270_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_13270_i", "role": "we0" }} , 
 	{ "name": "data_l1_13270_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_13270_i", "role": "d0" }} , 
 	{ "name": "data_l1_14271_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_14271_i", "role": "address0" }} , 
 	{ "name": "data_l1_14271_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_14271_i", "role": "ce0" }} , 
 	{ "name": "data_l1_14271_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_14271_i", "role": "we0" }} , 
 	{ "name": "data_l1_14271_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_14271_i", "role": "d0" }} , 
 	{ "name": "data_l1_15272_i_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_l1_15272_i", "role": "address0" }} , 
 	{ "name": "data_l1_15272_i_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_15272_i", "role": "ce0" }} , 
 	{ "name": "data_l1_15272_i_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_15272_i", "role": "we0" }} , 
 	{ "name": "data_l1_15272_i_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_15272_i", "role": "d0" }} , 
 	{ "name": "param_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1120, "type": "signal", "bundle":{"name": "param", "role": "dout" }} , 
 	{ "name": "param_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "param", "role": "empty_n" }} , 
 	{ "name": "param_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "param", "role": "read" }} , 
 	{ "name": "co_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "co", "role": "dout" }} , 
 	{ "name": "co_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co", "role": "empty_n" }} , 
 	{ "name": "co_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co", "role": "read" }} , 
 	{ "name": "ho_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ho", "role": "dout" }} , 
 	{ "name": "ho_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho", "role": "empty_n" }} , 
 	{ "name": "ho_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho", "role": "read" }} , 
 	{ "name": "wo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "wo", "role": "dout" }} , 
 	{ "name": "wo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo", "role": "empty_n" }} , 
 	{ "name": "wo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo", "role": "read" }} , 
 	{ "name": "ro_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ro", "role": "dout" }} , 
 	{ "name": "ro_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro", "role": "empty_n" }} , 
 	{ "name": "ro_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro", "role": "read" }} , 
 	{ "name": "so_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "so", "role": "dout" }} , 
 	{ "name": "so_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so", "role": "empty_n" }} , 
 	{ "name": "so_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so", "role": "read" }} , 
 	{ "name": "data_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address0" }} , 
 	{ "name": "data_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce0" }} , 
 	{ "name": "data_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q0" }} , 
 	{ "name": "data_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address0" }} , 
 	{ "name": "data_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce0" }} , 
 	{ "name": "data_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q0" }} , 
 	{ "name": "data_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address0" }} , 
 	{ "name": "data_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce0" }} , 
 	{ "name": "data_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q0" }} , 
 	{ "name": "data_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address0" }} , 
 	{ "name": "data_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce0" }} , 
 	{ "name": "data_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
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
			{"Name" : "data_l1_0257_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_1258_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_2259_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_3260_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_4261_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_5262_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_6263_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_7264_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_8265_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_9266_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_10267_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_11268_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_12269_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_13270_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_14271_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_15272_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U657", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_11s_11s_11ns_11_4_1_U658", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_11s_11s_11ns_11_4_1_U659", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11s_11s_11_4_1_U660", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_11ns_11s_11s_11ns_11_4_1_U661", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_6s_6s_6ns_6_4_1_U662", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	runDataL2toL1 {
		data_l1_0257_i {Type O LastRead -1 FirstWrite 8}
		data_l1_1258_i {Type O LastRead -1 FirstWrite 8}
		data_l1_2259_i {Type O LastRead -1 FirstWrite 8}
		data_l1_3260_i {Type O LastRead -1 FirstWrite 8}
		data_l1_4261_i {Type O LastRead -1 FirstWrite 7}
		data_l1_5262_i {Type O LastRead -1 FirstWrite 7}
		data_l1_6263_i {Type O LastRead -1 FirstWrite 7}
		data_l1_7264_i {Type O LastRead -1 FirstWrite 7}
		data_l1_8265_i {Type O LastRead -1 FirstWrite 7}
		data_l1_9266_i {Type O LastRead -1 FirstWrite 7}
		data_l1_10267_i {Type O LastRead -1 FirstWrite 7}
		data_l1_11268_i {Type O LastRead -1 FirstWrite 7}
		data_l1_12269_i {Type O LastRead -1 FirstWrite 7}
		data_l1_13270_i {Type O LastRead -1 FirstWrite 7}
		data_l1_14271_i {Type O LastRead -1 FirstWrite 7}
		data_l1_15272_i {Type O LastRead -1 FirstWrite 7}
		param {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "57", "Max" : "57"}
	, {"Name" : "Interval", "Min" : "57", "Max" : "57"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_l1_0257_i { ap_memory {  { data_l1_0257_i_address0 mem_address 1 6 }  { data_l1_0257_i_ce0 mem_ce 1 1 }  { data_l1_0257_i_we0 mem_we 1 1 }  { data_l1_0257_i_d0 mem_din 1 8 } } }
	data_l1_1258_i { ap_memory {  { data_l1_1258_i_address0 mem_address 1 6 }  { data_l1_1258_i_ce0 mem_ce 1 1 }  { data_l1_1258_i_we0 mem_we 1 1 }  { data_l1_1258_i_d0 mem_din 1 8 } } }
	data_l1_2259_i { ap_memory {  { data_l1_2259_i_address0 mem_address 1 6 }  { data_l1_2259_i_ce0 mem_ce 1 1 }  { data_l1_2259_i_we0 mem_we 1 1 }  { data_l1_2259_i_d0 mem_din 1 8 } } }
	data_l1_3260_i { ap_memory {  { data_l1_3260_i_address0 mem_address 1 6 }  { data_l1_3260_i_ce0 mem_ce 1 1 }  { data_l1_3260_i_we0 mem_we 1 1 }  { data_l1_3260_i_d0 mem_din 1 8 } } }
	data_l1_4261_i { ap_memory {  { data_l1_4261_i_address0 mem_address 1 6 }  { data_l1_4261_i_ce0 mem_ce 1 1 }  { data_l1_4261_i_we0 mem_we 1 1 }  { data_l1_4261_i_d0 mem_din 1 1 } } }
	data_l1_5262_i { ap_memory {  { data_l1_5262_i_address0 mem_address 1 6 }  { data_l1_5262_i_ce0 mem_ce 1 1 }  { data_l1_5262_i_we0 mem_we 1 1 }  { data_l1_5262_i_d0 mem_din 1 1 } } }
	data_l1_6263_i { ap_memory {  { data_l1_6263_i_address0 mem_address 1 6 }  { data_l1_6263_i_ce0 mem_ce 1 1 }  { data_l1_6263_i_we0 mem_we 1 1 }  { data_l1_6263_i_d0 mem_din 1 1 } } }
	data_l1_7264_i { ap_memory {  { data_l1_7264_i_address0 mem_address 1 6 }  { data_l1_7264_i_ce0 mem_ce 1 1 }  { data_l1_7264_i_we0 mem_we 1 1 }  { data_l1_7264_i_d0 mem_din 1 1 } } }
	data_l1_8265_i { ap_memory {  { data_l1_8265_i_address0 mem_address 1 6 }  { data_l1_8265_i_ce0 mem_ce 1 1 }  { data_l1_8265_i_we0 mem_we 1 1 }  { data_l1_8265_i_d0 mem_din 1 1 } } }
	data_l1_9266_i { ap_memory {  { data_l1_9266_i_address0 mem_address 1 6 }  { data_l1_9266_i_ce0 mem_ce 1 1 }  { data_l1_9266_i_we0 mem_we 1 1 }  { data_l1_9266_i_d0 mem_din 1 1 } } }
	data_l1_10267_i { ap_memory {  { data_l1_10267_i_address0 mem_address 1 6 }  { data_l1_10267_i_ce0 mem_ce 1 1 }  { data_l1_10267_i_we0 mem_we 1 1 }  { data_l1_10267_i_d0 mem_din 1 1 } } }
	data_l1_11268_i { ap_memory {  { data_l1_11268_i_address0 mem_address 1 6 }  { data_l1_11268_i_ce0 mem_ce 1 1 }  { data_l1_11268_i_we0 mem_we 1 1 }  { data_l1_11268_i_d0 mem_din 1 1 } } }
	data_l1_12269_i { ap_memory {  { data_l1_12269_i_address0 mem_address 1 6 }  { data_l1_12269_i_ce0 mem_ce 1 1 }  { data_l1_12269_i_we0 mem_we 1 1 }  { data_l1_12269_i_d0 mem_din 1 1 } } }
	data_l1_13270_i { ap_memory {  { data_l1_13270_i_address0 mem_address 1 6 }  { data_l1_13270_i_ce0 mem_ce 1 1 }  { data_l1_13270_i_we0 mem_we 1 1 }  { data_l1_13270_i_d0 mem_din 1 1 } } }
	data_l1_14271_i { ap_memory {  { data_l1_14271_i_address0 mem_address 1 6 }  { data_l1_14271_i_ce0 mem_ce 1 1 }  { data_l1_14271_i_we0 mem_we 1 1 }  { data_l1_14271_i_d0 mem_din 1 1 } } }
	data_l1_15272_i { ap_memory {  { data_l1_15272_i_address0 mem_address 1 6 }  { data_l1_15272_i_ce0 mem_ce 1 1 }  { data_l1_15272_i_we0 mem_we 1 1 }  { data_l1_15272_i_d0 mem_din 1 1 } } }
	param { ap_fifo {  { param_dout fifo_data 0 1120 }  { param_empty_n fifo_status 0 1 }  { param_read fifo_update 1 1 } } }
	co { ap_fifo {  { co_dout fifo_data 0 11 }  { co_empty_n fifo_status 0 1 }  { co_read fifo_update 1 1 } } }
	ho { ap_fifo {  { ho_dout fifo_data 0 11 }  { ho_empty_n fifo_status 0 1 }  { ho_read fifo_update 1 1 } } }
	wo { ap_fifo {  { wo_dout fifo_data 0 11 }  { wo_empty_n fifo_status 0 1 }  { wo_read fifo_update 1 1 } } }
	ro { ap_fifo {  { ro_dout fifo_data 0 11 }  { ro_empty_n fifo_status 0 1 }  { ro_read fifo_update 1 1 } } }
	so { ap_fifo {  { so_dout fifo_data 0 11 }  { so_empty_n fifo_status 0 1 }  { so_read fifo_update 1 1 } } }
	data_l2_0 { ap_memory {  { data_l2_0_address0 mem_address 1 11 }  { data_l2_0_ce0 mem_ce 1 1 }  { data_l2_0_q0 mem_dout 0 8 } } }
	data_l2_1 { ap_memory {  { data_l2_1_address0 mem_address 1 11 }  { data_l2_1_ce0 mem_ce 1 1 }  { data_l2_1_q0 mem_dout 0 8 } } }
	data_l2_2 { ap_memory {  { data_l2_2_address0 mem_address 1 11 }  { data_l2_2_ce0 mem_ce 1 1 }  { data_l2_2_q0 mem_dout 0 8 } } }
	data_l2_3 { ap_memory {  { data_l2_3_address0 mem_address 1 11 }  { data_l2_3_ce0 mem_ce 1 1 }  { data_l2_3_q0 mem_dout 0 8 } } }
}
