set moduleName runWeight2Reg
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
set C_modelName {runWeight2Reg}
set C_modelType { int 128 }
set C_modelArgList {
	{ param int 1184 regular {fifo 0}  }
	{ ko_1 int 12 regular {fifo 0}  }
	{ co int 32 regular {fifo 0}  }
	{ ro int 32 regular {fifo 0}  }
	{ so int 32 regular {fifo 0}  }
	{ weight_l2_0 int 8 regular {array 2304 { 1 3 } 1 1 }  }
	{ weight_l2_1 int 8 regular {array 2304 { 1 3 } 1 1 }  }
	{ weight_l2_2 int 8 regular {array 2304 { 1 3 } 1 1 }  }
	{ weight_l2_3 int 8 regular {array 2304 { 1 3 } 1 1 }  }
	{ param_out int 1184 regular {fifo 1}  }
	{ ko_1_out int 11 regular {fifo 1}  }
	{ co_out int 32 regular {fifo 1}  }
	{ ro_out int 32 regular {fifo 1}  }
	{ so_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "param", "interface" : "fifo", "bitwidth" : 1184, "direction" : "READONLY"} , 
 	{ "Name" : "ko_1", "interface" : "fifo", "bitwidth" : 12, "direction" : "READONLY"} , 
 	{ "Name" : "co", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ro", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "so", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "param_out", "interface" : "fifo", "bitwidth" : 1184, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ko_1_out", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "co_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ro_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "so_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 65
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ param_dout sc_in sc_lv 1184 signal 0 } 
	{ param_empty_n sc_in sc_logic 1 signal 0 } 
	{ param_read sc_out sc_logic 1 signal 0 } 
	{ ko_1_dout sc_in sc_lv 12 signal 1 } 
	{ ko_1_empty_n sc_in sc_logic 1 signal 1 } 
	{ ko_1_read sc_out sc_logic 1 signal 1 } 
	{ co_dout sc_in sc_lv 32 signal 2 } 
	{ co_empty_n sc_in sc_logic 1 signal 2 } 
	{ co_read sc_out sc_logic 1 signal 2 } 
	{ ro_dout sc_in sc_lv 32 signal 3 } 
	{ ro_empty_n sc_in sc_logic 1 signal 3 } 
	{ ro_read sc_out sc_logic 1 signal 3 } 
	{ so_dout sc_in sc_lv 32 signal 4 } 
	{ so_empty_n sc_in sc_logic 1 signal 4 } 
	{ so_read sc_out sc_logic 1 signal 4 } 
	{ weight_l2_0_address0 sc_out sc_lv 12 signal 5 } 
	{ weight_l2_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ weight_l2_0_q0 sc_in sc_lv 8 signal 5 } 
	{ weight_l2_1_address0 sc_out sc_lv 12 signal 6 } 
	{ weight_l2_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ weight_l2_1_q0 sc_in sc_lv 8 signal 6 } 
	{ weight_l2_2_address0 sc_out sc_lv 12 signal 7 } 
	{ weight_l2_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ weight_l2_2_q0 sc_in sc_lv 8 signal 7 } 
	{ weight_l2_3_address0 sc_out sc_lv 12 signal 8 } 
	{ weight_l2_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ weight_l2_3_q0 sc_in sc_lv 8 signal 8 } 
	{ param_out_din sc_out sc_lv 1184 signal 9 } 
	{ param_out_full_n sc_in sc_logic 1 signal 9 } 
	{ param_out_write sc_out sc_logic 1 signal 9 } 
	{ ko_1_out_din sc_out sc_lv 11 signal 10 } 
	{ ko_1_out_full_n sc_in sc_logic 1 signal 10 } 
	{ ko_1_out_write sc_out sc_logic 1 signal 10 } 
	{ co_out_din sc_out sc_lv 32 signal 11 } 
	{ co_out_full_n sc_in sc_logic 1 signal 11 } 
	{ co_out_write sc_out sc_logic 1 signal 11 } 
	{ ro_out_din sc_out sc_lv 32 signal 12 } 
	{ ro_out_full_n sc_in sc_logic 1 signal 12 } 
	{ ro_out_write sc_out sc_logic 1 signal 12 } 
	{ so_out_din sc_out sc_lv 32 signal 13 } 
	{ so_out_full_n sc_in sc_logic 1 signal 13 } 
	{ so_out_write sc_out sc_logic 1 signal 13 } 
	{ ap_return_0 sc_out sc_lv 8 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8 signal -1 } 
	{ ap_return_4 sc_out sc_lv 8 signal -1 } 
	{ ap_return_5 sc_out sc_lv 8 signal -1 } 
	{ ap_return_6 sc_out sc_lv 8 signal -1 } 
	{ ap_return_7 sc_out sc_lv 8 signal -1 } 
	{ ap_return_8 sc_out sc_lv 8 signal -1 } 
	{ ap_return_9 sc_out sc_lv 8 signal -1 } 
	{ ap_return_10 sc_out sc_lv 8 signal -1 } 
	{ ap_return_11 sc_out sc_lv 8 signal -1 } 
	{ ap_return_12 sc_out sc_lv 8 signal -1 } 
	{ ap_return_13 sc_out sc_lv 8 signal -1 } 
	{ ap_return_14 sc_out sc_lv 8 signal -1 } 
	{ ap_return_15 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "param_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1184, "type": "signal", "bundle":{"name": "param", "role": "dout" }} , 
 	{ "name": "param_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "param", "role": "empty_n" }} , 
 	{ "name": "param_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "param", "role": "read" }} , 
 	{ "name": "ko_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "ko_1", "role": "dout" }} , 
 	{ "name": "ko_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_1", "role": "empty_n" }} , 
 	{ "name": "ko_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_1", "role": "read" }} , 
 	{ "name": "co_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "co", "role": "dout" }} , 
 	{ "name": "co_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co", "role": "empty_n" }} , 
 	{ "name": "co_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co", "role": "read" }} , 
 	{ "name": "ro_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ro", "role": "dout" }} , 
 	{ "name": "ro_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro", "role": "empty_n" }} , 
 	{ "name": "ro_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro", "role": "read" }} , 
 	{ "name": "so_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "so", "role": "dout" }} , 
 	{ "name": "so_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so", "role": "empty_n" }} , 
 	{ "name": "so_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so", "role": "read" }} , 
 	{ "name": "weight_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "address0" }} , 
 	{ "name": "weight_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "ce0" }} , 
 	{ "name": "weight_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "q0" }} , 
 	{ "name": "weight_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "address0" }} , 
 	{ "name": "weight_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "ce0" }} , 
 	{ "name": "weight_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "q0" }} , 
 	{ "name": "weight_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "address0" }} , 
 	{ "name": "weight_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "ce0" }} , 
 	{ "name": "weight_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "q0" }} , 
 	{ "name": "weight_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "address0" }} , 
 	{ "name": "weight_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "ce0" }} , 
 	{ "name": "weight_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "q0" }} , 
 	{ "name": "param_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1184, "type": "signal", "bundle":{"name": "param_out", "role": "din" }} , 
 	{ "name": "param_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "param_out", "role": "full_n" }} , 
 	{ "name": "param_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "param_out", "role": "write" }} , 
 	{ "name": "ko_1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "ko_1_out", "role": "din" }} , 
 	{ "name": "ko_1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_1_out", "role": "full_n" }} , 
 	{ "name": "ko_1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_1_out", "role": "write" }} , 
 	{ "name": "co_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "co_out", "role": "din" }} , 
 	{ "name": "co_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_out", "role": "full_n" }} , 
 	{ "name": "co_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_out", "role": "write" }} , 
 	{ "name": "ro_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ro_out", "role": "din" }} , 
 	{ "name": "ro_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro_out", "role": "full_n" }} , 
 	{ "name": "ro_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro_out", "role": "write" }} , 
 	{ "name": "so_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "so_out", "role": "din" }} , 
 	{ "name": "so_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so_out", "role": "full_n" }} , 
 	{ "name": "so_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so_out", "role": "write" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36"],
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
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "co_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U109", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U110", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U111", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U112", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U113", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U114", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U115", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U116", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U117", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U118", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U119", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U120", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U121", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U122", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U123", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U124", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U125", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U126", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U127", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U128", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U129", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U130", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U131", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U132", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U133", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U134", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U135", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U136", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U137", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U138", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U139", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U140", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U141", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12s_12s_12_4_1_U142", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12s_12s_12_4_1_U143", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_12ns_12s_12s_12ns_12_4_1_U144", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		so_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "56", "Max" : "56"}
	, {"Name" : "Interval", "Min" : "56", "Max" : "56"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	param { ap_fifo {  { param_dout fifo_data 0 1184 }  { param_empty_n fifo_status 0 1 }  { param_read fifo_update 1 1 } } }
	ko_1 { ap_fifo {  { ko_1_dout fifo_data 0 12 }  { ko_1_empty_n fifo_status 0 1 }  { ko_1_read fifo_update 1 1 } } }
	co { ap_fifo {  { co_dout fifo_data 0 32 }  { co_empty_n fifo_status 0 1 }  { co_read fifo_update 1 1 } } }
	ro { ap_fifo {  { ro_dout fifo_data 0 32 }  { ro_empty_n fifo_status 0 1 }  { ro_read fifo_update 1 1 } } }
	so { ap_fifo {  { so_dout fifo_data 0 32 }  { so_empty_n fifo_status 0 1 }  { so_read fifo_update 1 1 } } }
	weight_l2_0 { ap_memory {  { weight_l2_0_address0 mem_address 1 12 }  { weight_l2_0_ce0 mem_ce 1 1 }  { weight_l2_0_q0 mem_dout 0 8 } } }
	weight_l2_1 { ap_memory {  { weight_l2_1_address0 mem_address 1 12 }  { weight_l2_1_ce0 mem_ce 1 1 }  { weight_l2_1_q0 mem_dout 0 8 } } }
	weight_l2_2 { ap_memory {  { weight_l2_2_address0 mem_address 1 12 }  { weight_l2_2_ce0 mem_ce 1 1 }  { weight_l2_2_q0 mem_dout 0 8 } } }
	weight_l2_3 { ap_memory {  { weight_l2_3_address0 mem_address 1 12 }  { weight_l2_3_ce0 mem_ce 1 1 }  { weight_l2_3_q0 mem_dout 0 8 } } }
	param_out { ap_fifo {  { param_out_din fifo_data 1 1184 }  { param_out_full_n fifo_status 0 1 }  { param_out_write fifo_update 1 1 } } }
	ko_1_out { ap_fifo {  { ko_1_out_din fifo_data 1 11 }  { ko_1_out_full_n fifo_status 0 1 }  { ko_1_out_write fifo_update 1 1 } } }
	co_out { ap_fifo {  { co_out_din fifo_data 1 32 }  { co_out_full_n fifo_status 0 1 }  { co_out_write fifo_update 1 1 } } }
	ro_out { ap_fifo {  { ro_out_din fifo_data 1 32 }  { ro_out_full_n fifo_status 0 1 }  { ro_out_write fifo_update 1 1 } } }
	so_out { ap_fifo {  { so_out_din fifo_data 1 32 }  { so_out_full_n fifo_status 0 1 }  { so_out_write fifo_update 1 1 } } }
}
