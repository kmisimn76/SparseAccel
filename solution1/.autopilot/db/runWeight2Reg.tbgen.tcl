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
	{ weight_l2_0 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_1 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_2 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ weight_l2_3 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ empty_15 int 9 regular {fifo 0}  }
	{ empty int 9 regular {fifo 0}  }
	{ ko_2 int 9 regular {fifo 0}  }
	{ co_1 int 7 regular {fifo 0}  }
	{ r int 32 regular {fifo 0}  }
	{ s int 32 regular {fifo 0}  }
	{ r_out int 32 regular {fifo 1}  }
	{ s_out int 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "weight_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "weight_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_15", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ko_2", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "co_1", "interface" : "fifo", "bitwidth" : 7, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 128} ]}
# RTL Port declarations: 
set portNum 59
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ weight_l2_0_address0 sc_out sc_lv 9 signal 0 } 
	{ weight_l2_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ weight_l2_0_q0 sc_in sc_lv 8 signal 0 } 
	{ weight_l2_1_address0 sc_out sc_lv 9 signal 1 } 
	{ weight_l2_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ weight_l2_1_q0 sc_in sc_lv 8 signal 1 } 
	{ weight_l2_2_address0 sc_out sc_lv 9 signal 2 } 
	{ weight_l2_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ weight_l2_2_q0 sc_in sc_lv 8 signal 2 } 
	{ weight_l2_3_address0 sc_out sc_lv 9 signal 3 } 
	{ weight_l2_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ weight_l2_3_q0 sc_in sc_lv 8 signal 3 } 
	{ empty_15_dout sc_in sc_lv 9 signal 4 } 
	{ empty_15_empty_n sc_in sc_logic 1 signal 4 } 
	{ empty_15_read sc_out sc_logic 1 signal 4 } 
	{ empty_dout sc_in sc_lv 9 signal 5 } 
	{ empty_empty_n sc_in sc_logic 1 signal 5 } 
	{ empty_read sc_out sc_logic 1 signal 5 } 
	{ ko_2_dout sc_in sc_lv 9 signal 6 } 
	{ ko_2_empty_n sc_in sc_logic 1 signal 6 } 
	{ ko_2_read sc_out sc_logic 1 signal 6 } 
	{ co_1_dout sc_in sc_lv 7 signal 7 } 
	{ co_1_empty_n sc_in sc_logic 1 signal 7 } 
	{ co_1_read sc_out sc_logic 1 signal 7 } 
	{ r_dout sc_in sc_lv 32 signal 8 } 
	{ r_empty_n sc_in sc_logic 1 signal 8 } 
	{ r_read sc_out sc_logic 1 signal 8 } 
	{ s_dout sc_in sc_lv 32 signal 9 } 
	{ s_empty_n sc_in sc_logic 1 signal 9 } 
	{ s_read sc_out sc_logic 1 signal 9 } 
	{ r_out_din sc_out sc_lv 32 signal 10 } 
	{ r_out_full_n sc_in sc_logic 1 signal 10 } 
	{ r_out_write sc_out sc_logic 1 signal 10 } 
	{ s_out_din sc_out sc_lv 32 signal 11 } 
	{ s_out_full_n sc_in sc_logic 1 signal 11 } 
	{ s_out_write sc_out sc_logic 1 signal 11 } 
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
 	{ "name": "weight_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "address0" }} , 
 	{ "name": "weight_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "ce0" }} , 
 	{ "name": "weight_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_0", "role": "q0" }} , 
 	{ "name": "weight_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "address0" }} , 
 	{ "name": "weight_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "ce0" }} , 
 	{ "name": "weight_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_1", "role": "q0" }} , 
 	{ "name": "weight_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "address0" }} , 
 	{ "name": "weight_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "ce0" }} , 
 	{ "name": "weight_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_2", "role": "q0" }} , 
 	{ "name": "weight_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "address0" }} , 
 	{ "name": "weight_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "ce0" }} , 
 	{ "name": "weight_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "weight_l2_3", "role": "q0" }} , 
 	{ "name": "empty_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "empty_15", "role": "dout" }} , 
 	{ "name": "empty_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_15", "role": "empty_n" }} , 
 	{ "name": "empty_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_15", "role": "read" }} , 
 	{ "name": "empty_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "empty", "role": "dout" }} , 
 	{ "name": "empty_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "empty_n" }} , 
 	{ "name": "empty_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "read" }} , 
 	{ "name": "ko_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ko_2", "role": "dout" }} , 
 	{ "name": "ko_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2", "role": "empty_n" }} , 
 	{ "name": "ko_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2", "role": "read" }} , 
 	{ "name": "co_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "co_1", "role": "dout" }} , 
 	{ "name": "co_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1", "role": "empty_n" }} , 
 	{ "name": "co_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1", "role": "read" }} , 
 	{ "name": "r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "dout" }} , 
 	{ "name": "r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "empty_n" }} , 
 	{ "name": "r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "read" }} , 
 	{ "name": "s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "dout" }} , 
 	{ "name": "s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "empty_n" }} , 
 	{ "name": "s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "read" }} , 
 	{ "name": "r_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_out", "role": "din" }} , 
 	{ "name": "r_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_out", "role": "full_n" }} , 
 	{ "name": "r_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_out", "role": "write" }} , 
 	{ "name": "s_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_out", "role": "din" }} , 
 	{ "name": "s_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out", "role": "full_n" }} , 
 	{ "name": "s_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out", "role": "write" }} , 
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
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
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
			{"Name" : "empty_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_9_1_1_U21", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_9_1_1_U22", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U23", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U24", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U25", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U26", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U27", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U28", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U29", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U30", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U31", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U32", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U33", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U34", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U35", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U36", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U37", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U38", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U39", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U40", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U41", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U42", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U43", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U44", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U45", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U46", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U47", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U48", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U49", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U50", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U51", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U52", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U53", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_8_1_1_U54", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_1_1_1_U55", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_9ns_9ns_9s_9ns_9_4_1_U56", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		r_out {Type O LastRead -1 FirstWrite 0}
		s_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	weight_l2_0 { ap_memory {  { weight_l2_0_address0 mem_address 1 9 }  { weight_l2_0_ce0 mem_ce 1 1 }  { weight_l2_0_q0 mem_dout 0 8 } } }
	weight_l2_1 { ap_memory {  { weight_l2_1_address0 mem_address 1 9 }  { weight_l2_1_ce0 mem_ce 1 1 }  { weight_l2_1_q0 mem_dout 0 8 } } }
	weight_l2_2 { ap_memory {  { weight_l2_2_address0 mem_address 1 9 }  { weight_l2_2_ce0 mem_ce 1 1 }  { weight_l2_2_q0 mem_dout 0 8 } } }
	weight_l2_3 { ap_memory {  { weight_l2_3_address0 mem_address 1 9 }  { weight_l2_3_ce0 mem_ce 1 1 }  { weight_l2_3_q0 mem_dout 0 8 } } }
	empty_15 { ap_fifo {  { empty_15_dout fifo_data 0 9 }  { empty_15_empty_n fifo_status 0 1 }  { empty_15_read fifo_update 1 1 } } }
	empty { ap_fifo {  { empty_dout fifo_data 0 9 }  { empty_empty_n fifo_status 0 1 }  { empty_read fifo_update 1 1 } } }
	ko_2 { ap_fifo {  { ko_2_dout fifo_data 0 9 }  { ko_2_empty_n fifo_status 0 1 }  { ko_2_read fifo_update 1 1 } } }
	co_1 { ap_fifo {  { co_1_dout fifo_data 0 7 }  { co_1_empty_n fifo_status 0 1 }  { co_1_read fifo_update 1 1 } } }
	r { ap_fifo {  { r_dout fifo_data 0 32 }  { r_empty_n fifo_status 0 1 }  { r_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_dout fifo_data 0 32 }  { s_empty_n fifo_status 0 1 }  { s_read fifo_update 1 1 } } }
	r_out { ap_fifo {  { r_out_din fifo_data 1 32 }  { r_out_full_n fifo_status 0 1 }  { r_out_write fifo_update 1 1 } } }
	s_out { ap_fifo {  { s_out_din fifo_data 1 32 }  { s_out_full_n fifo_status 0 1 }  { s_out_write fifo_update 1 1 } } }
}
