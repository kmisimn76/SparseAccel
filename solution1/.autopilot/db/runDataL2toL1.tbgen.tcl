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
	{ data_l1_0 int 8 regular {array 196 { 0 3 } 0 1 }  }
	{ data_l1_1 int 8 regular {array 196 { 0 3 } 0 1 }  }
	{ data_l1_2 int 8 regular {array 196 { 0 3 } 0 1 }  }
	{ data_l1_3 int 8 regular {array 196 { 0 3 } 0 1 }  }
	{ data_l2_0 int 8 regular {array 817216 { 1 3 } 1 1 }  }
	{ data_l2_1 int 8 regular {array 817216 { 1 3 } 1 1 }  }
	{ data_l2_2 int 8 regular {array 817216 { 1 3 } 1 1 }  }
	{ data_l2_3 int 8 regular {array 817216 { 1 3 } 1 1 }  }
	{ empty_25 int 32 regular {fifo 0}  }
	{ empty_26 int 32 regular {fifo 0}  }
	{ co_1 int 20 regular {fifo 0}  }
	{ ho int 20 regular {fifo 0}  }
	{ wo int 20 regular {fifo 0}  }
	{ ro int 20 regular {fifo 0}  }
	{ so int 20 regular {fifo 0}  }
	{ empty int 20 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_l1_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_25", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_26", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "co_1", "interface" : "fifo", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "ho", "interface" : "fifo", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "wo", "interface" : "fifo", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "ro", "interface" : "fifo", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "so", "interface" : "fifo", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "fifo", "bitwidth" : 20, "direction" : "READONLY"} ]}
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
	{ data_l1_0_address0 sc_out sc_lv 8 signal 0 } 
	{ data_l1_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_l1_0_we0 sc_out sc_logic 1 signal 0 } 
	{ data_l1_0_d0 sc_out sc_lv 8 signal 0 } 
	{ data_l1_1_address0 sc_out sc_lv 8 signal 1 } 
	{ data_l1_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_l1_1_we0 sc_out sc_logic 1 signal 1 } 
	{ data_l1_1_d0 sc_out sc_lv 8 signal 1 } 
	{ data_l1_2_address0 sc_out sc_lv 8 signal 2 } 
	{ data_l1_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_l1_2_we0 sc_out sc_logic 1 signal 2 } 
	{ data_l1_2_d0 sc_out sc_lv 8 signal 2 } 
	{ data_l1_3_address0 sc_out sc_lv 8 signal 3 } 
	{ data_l1_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_l1_3_we0 sc_out sc_logic 1 signal 3 } 
	{ data_l1_3_d0 sc_out sc_lv 8 signal 3 } 
	{ data_l2_0_address0 sc_out sc_lv 20 signal 4 } 
	{ data_l2_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_l2_0_q0 sc_in sc_lv 8 signal 4 } 
	{ data_l2_1_address0 sc_out sc_lv 20 signal 5 } 
	{ data_l2_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_l2_1_q0 sc_in sc_lv 8 signal 5 } 
	{ data_l2_2_address0 sc_out sc_lv 20 signal 6 } 
	{ data_l2_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ data_l2_2_q0 sc_in sc_lv 8 signal 6 } 
	{ data_l2_3_address0 sc_out sc_lv 20 signal 7 } 
	{ data_l2_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ data_l2_3_q0 sc_in sc_lv 8 signal 7 } 
	{ empty_25_dout sc_in sc_lv 32 signal 8 } 
	{ empty_25_empty_n sc_in sc_logic 1 signal 8 } 
	{ empty_25_read sc_out sc_logic 1 signal 8 } 
	{ empty_26_dout sc_in sc_lv 32 signal 9 } 
	{ empty_26_empty_n sc_in sc_logic 1 signal 9 } 
	{ empty_26_read sc_out sc_logic 1 signal 9 } 
	{ co_1_dout sc_in sc_lv 20 signal 10 } 
	{ co_1_empty_n sc_in sc_logic 1 signal 10 } 
	{ co_1_read sc_out sc_logic 1 signal 10 } 
	{ ho_dout sc_in sc_lv 20 signal 11 } 
	{ ho_empty_n sc_in sc_logic 1 signal 11 } 
	{ ho_read sc_out sc_logic 1 signal 11 } 
	{ wo_dout sc_in sc_lv 20 signal 12 } 
	{ wo_empty_n sc_in sc_logic 1 signal 12 } 
	{ wo_read sc_out sc_logic 1 signal 12 } 
	{ ro_dout sc_in sc_lv 20 signal 13 } 
	{ ro_empty_n sc_in sc_logic 1 signal 13 } 
	{ ro_read sc_out sc_logic 1 signal 13 } 
	{ so_dout sc_in sc_lv 20 signal 14 } 
	{ so_empty_n sc_in sc_logic 1 signal 14 } 
	{ so_read sc_out sc_logic 1 signal 14 } 
	{ empty_dout sc_in sc_lv 20 signal 15 } 
	{ empty_empty_n sc_in sc_logic 1 signal 15 } 
	{ empty_read sc_out sc_logic 1 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_l1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_0", "role": "address0" }} , 
 	{ "name": "data_l1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_0", "role": "ce0" }} , 
 	{ "name": "data_l1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_0", "role": "we0" }} , 
 	{ "name": "data_l1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_0", "role": "d0" }} , 
 	{ "name": "data_l1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_1", "role": "address0" }} , 
 	{ "name": "data_l1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_1", "role": "ce0" }} , 
 	{ "name": "data_l1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_1", "role": "we0" }} , 
 	{ "name": "data_l1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_1", "role": "d0" }} , 
 	{ "name": "data_l1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_2", "role": "address0" }} , 
 	{ "name": "data_l1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_2", "role": "ce0" }} , 
 	{ "name": "data_l1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_2", "role": "we0" }} , 
 	{ "name": "data_l1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_2", "role": "d0" }} , 
 	{ "name": "data_l1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_3", "role": "address0" }} , 
 	{ "name": "data_l1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_3", "role": "ce0" }} , 
 	{ "name": "data_l1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1_3", "role": "we0" }} , 
 	{ "name": "data_l1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1_3", "role": "d0" }} , 
 	{ "name": "data_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address0" }} , 
 	{ "name": "data_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce0" }} , 
 	{ "name": "data_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q0" }} , 
 	{ "name": "data_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address0" }} , 
 	{ "name": "data_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce0" }} , 
 	{ "name": "data_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q0" }} , 
 	{ "name": "data_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address0" }} , 
 	{ "name": "data_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce0" }} , 
 	{ "name": "data_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q0" }} , 
 	{ "name": "data_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address0" }} , 
 	{ "name": "data_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce0" }} , 
 	{ "name": "data_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q0" }} , 
 	{ "name": "empty_25_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_25", "role": "dout" }} , 
 	{ "name": "empty_25_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_25", "role": "empty_n" }} , 
 	{ "name": "empty_25_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_25", "role": "read" }} , 
 	{ "name": "empty_26_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_26", "role": "dout" }} , 
 	{ "name": "empty_26_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_26", "role": "empty_n" }} , 
 	{ "name": "empty_26_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_26", "role": "read" }} , 
 	{ "name": "co_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "co_1", "role": "dout" }} , 
 	{ "name": "co_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1", "role": "empty_n" }} , 
 	{ "name": "co_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1", "role": "read" }} , 
 	{ "name": "ho_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ho", "role": "dout" }} , 
 	{ "name": "ho_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho", "role": "empty_n" }} , 
 	{ "name": "ho_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho", "role": "read" }} , 
 	{ "name": "wo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "wo", "role": "dout" }} , 
 	{ "name": "wo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo", "role": "empty_n" }} , 
 	{ "name": "wo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo", "role": "read" }} , 
 	{ "name": "ro_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ro", "role": "dout" }} , 
 	{ "name": "ro_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro", "role": "empty_n" }} , 
 	{ "name": "ro_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro", "role": "read" }} , 
 	{ "name": "so_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "so", "role": "dout" }} , 
 	{ "name": "so_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so", "role": "empty_n" }} , 
 	{ "name": "so_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so", "role": "read" }} , 
 	{ "name": "empty_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "empty", "role": "dout" }} , 
 	{ "name": "empty_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "empty_n" }} , 
 	{ "name": "empty_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
		"CDFG" : "runDataL2toL1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "53", "EstimateLatencyMax" : "53",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "data_l1_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
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
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_20s_20s_20_1_1_U91", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_20s_20s_20_1_1_U92", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_20s_20s_20_1_1_U93", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U94", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_20s_20s_20_1_1_U95", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_8ns_8_4_1_U96", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	runDataL2toL1 {
		data_l1_0 {Type O LastRead -1 FirstWrite 4}
		data_l1_1 {Type O LastRead -1 FirstWrite 4}
		data_l1_2 {Type O LastRead -1 FirstWrite 4}
		data_l1_3 {Type O LastRead -1 FirstWrite 4}
		data_l2_0 {Type I LastRead 3 FirstWrite -1}
		data_l2_1 {Type I LastRead 3 FirstWrite -1}
		data_l2_2 {Type I LastRead 3 FirstWrite -1}
		data_l2_3 {Type I LastRead 3 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "53", "Max" : "53"}
	, {"Name" : "Interval", "Min" : "53", "Max" : "53"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_l1_0 { ap_memory {  { data_l1_0_address0 mem_address 1 8 }  { data_l1_0_ce0 mem_ce 1 1 }  { data_l1_0_we0 mem_we 1 1 }  { data_l1_0_d0 mem_din 1 8 } } }
	data_l1_1 { ap_memory {  { data_l1_1_address0 mem_address 1 8 }  { data_l1_1_ce0 mem_ce 1 1 }  { data_l1_1_we0 mem_we 1 1 }  { data_l1_1_d0 mem_din 1 8 } } }
	data_l1_2 { ap_memory {  { data_l1_2_address0 mem_address 1 8 }  { data_l1_2_ce0 mem_ce 1 1 }  { data_l1_2_we0 mem_we 1 1 }  { data_l1_2_d0 mem_din 1 8 } } }
	data_l1_3 { ap_memory {  { data_l1_3_address0 mem_address 1 8 }  { data_l1_3_ce0 mem_ce 1 1 }  { data_l1_3_we0 mem_we 1 1 }  { data_l1_3_d0 mem_din 1 8 } } }
	data_l2_0 { ap_memory {  { data_l2_0_address0 mem_address 1 20 }  { data_l2_0_ce0 mem_ce 1 1 }  { data_l2_0_q0 mem_dout 0 8 } } }
	data_l2_1 { ap_memory {  { data_l2_1_address0 mem_address 1 20 }  { data_l2_1_ce0 mem_ce 1 1 }  { data_l2_1_q0 mem_dout 0 8 } } }
	data_l2_2 { ap_memory {  { data_l2_2_address0 mem_address 1 20 }  { data_l2_2_ce0 mem_ce 1 1 }  { data_l2_2_q0 mem_dout 0 8 } } }
	data_l2_3 { ap_memory {  { data_l2_3_address0 mem_address 1 20 }  { data_l2_3_ce0 mem_ce 1 1 }  { data_l2_3_q0 mem_dout 0 8 } } }
	empty_25 { ap_fifo {  { empty_25_dout fifo_data 0 32 }  { empty_25_empty_n fifo_status 0 1 }  { empty_25_read fifo_update 1 1 } } }
	empty_26 { ap_fifo {  { empty_26_dout fifo_data 0 32 }  { empty_26_empty_n fifo_status 0 1 }  { empty_26_read fifo_update 1 1 } } }
	co_1 { ap_fifo {  { co_1_dout fifo_data 0 20 }  { co_1_empty_n fifo_status 0 1 }  { co_1_read fifo_update 1 1 } } }
	ho { ap_fifo {  { ho_dout fifo_data 0 20 }  { ho_empty_n fifo_status 0 1 }  { ho_read fifo_update 1 1 } } }
	wo { ap_fifo {  { wo_dout fifo_data 0 20 }  { wo_empty_n fifo_status 0 1 }  { wo_read fifo_update 1 1 } } }
	ro { ap_fifo {  { ro_dout fifo_data 0 20 }  { ro_empty_n fifo_status 0 1 }  { ro_read fifo_update 1 1 } } }
	so { ap_fifo {  { so_dout fifo_data 0 20 }  { so_empty_n fifo_status 0 1 }  { so_read fifo_update 1 1 } } }
	empty { ap_fifo {  { empty_dout fifo_data 0 20 }  { empty_empty_n fifo_status 0 1 }  { empty_read fifo_update 1 1 } } }
}
