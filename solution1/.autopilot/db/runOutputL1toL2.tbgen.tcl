set moduleName runOutputL1toL2
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
set C_modelName {runOutputL1toL2}
set C_modelType { void 0 }
set C_modelArgList {
	{ output_l1_0 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ output_l1_1 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ output_l1_2 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ output_l1_3 int 32 regular {array 512 { 1 3 } 1 1 }  }
	{ output_l2_0 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l2_1 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l2_2 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ output_l2_3 int 32 regular {array 512 { 0 3 } 0 1 }  }
	{ empty_23 int 32 regular {fifo 0}  }
	{ empty_24 int 32 regular {fifo 0}  }
	{ ko_2 int 9 regular {fifo 0}  }
	{ ho int 9 regular {fifo 0}  }
	{ wo int 9 regular {fifo 0}  }
	{ empty int 9 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "output_l1_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_l1_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_l1_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_l1_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "output_l2_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l2_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty_23", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_24", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ko_2", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ho", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "wo", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "fifo", "bitwidth" : 9, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 53
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ output_l1_0_address0 sc_out sc_lv 9 signal 0 } 
	{ output_l1_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ output_l1_0_q0 sc_in sc_lv 32 signal 0 } 
	{ output_l1_1_address0 sc_out sc_lv 9 signal 1 } 
	{ output_l1_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ output_l1_1_q0 sc_in sc_lv 32 signal 1 } 
	{ output_l1_2_address0 sc_out sc_lv 9 signal 2 } 
	{ output_l1_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ output_l1_2_q0 sc_in sc_lv 32 signal 2 } 
	{ output_l1_3_address0 sc_out sc_lv 9 signal 3 } 
	{ output_l1_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ output_l1_3_q0 sc_in sc_lv 32 signal 3 } 
	{ output_l2_0_address0 sc_out sc_lv 9 signal 4 } 
	{ output_l2_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ output_l2_0_we0 sc_out sc_logic 1 signal 4 } 
	{ output_l2_0_d0 sc_out sc_lv 32 signal 4 } 
	{ output_l2_1_address0 sc_out sc_lv 9 signal 5 } 
	{ output_l2_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ output_l2_1_we0 sc_out sc_logic 1 signal 5 } 
	{ output_l2_1_d0 sc_out sc_lv 32 signal 5 } 
	{ output_l2_2_address0 sc_out sc_lv 9 signal 6 } 
	{ output_l2_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ output_l2_2_we0 sc_out sc_logic 1 signal 6 } 
	{ output_l2_2_d0 sc_out sc_lv 32 signal 6 } 
	{ output_l2_3_address0 sc_out sc_lv 9 signal 7 } 
	{ output_l2_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ output_l2_3_we0 sc_out sc_logic 1 signal 7 } 
	{ output_l2_3_d0 sc_out sc_lv 32 signal 7 } 
	{ empty_23_dout sc_in sc_lv 32 signal 8 } 
	{ empty_23_empty_n sc_in sc_logic 1 signal 8 } 
	{ empty_23_read sc_out sc_logic 1 signal 8 } 
	{ empty_24_dout sc_in sc_lv 32 signal 9 } 
	{ empty_24_empty_n sc_in sc_logic 1 signal 9 } 
	{ empty_24_read sc_out sc_logic 1 signal 9 } 
	{ ko_2_dout sc_in sc_lv 9 signal 10 } 
	{ ko_2_empty_n sc_in sc_logic 1 signal 10 } 
	{ ko_2_read sc_out sc_logic 1 signal 10 } 
	{ ho_dout sc_in sc_lv 9 signal 11 } 
	{ ho_empty_n sc_in sc_logic 1 signal 11 } 
	{ ho_read sc_out sc_logic 1 signal 11 } 
	{ wo_dout sc_in sc_lv 9 signal 12 } 
	{ wo_empty_n sc_in sc_logic 1 signal 12 } 
	{ wo_read sc_out sc_logic 1 signal 12 } 
	{ empty_dout sc_in sc_lv 9 signal 13 } 
	{ empty_empty_n sc_in sc_logic 1 signal 13 } 
	{ empty_read sc_out sc_logic 1 signal 13 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "output_l1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_0", "role": "address0" }} , 
 	{ "name": "output_l1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_0", "role": "ce0" }} , 
 	{ "name": "output_l1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_0", "role": "q0" }} , 
 	{ "name": "output_l1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_1", "role": "address0" }} , 
 	{ "name": "output_l1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_1", "role": "ce0" }} , 
 	{ "name": "output_l1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_1", "role": "q0" }} , 
 	{ "name": "output_l1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_2", "role": "address0" }} , 
 	{ "name": "output_l1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_2", "role": "ce0" }} , 
 	{ "name": "output_l1_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_2", "role": "q0" }} , 
 	{ "name": "output_l1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l1_3", "role": "address0" }} , 
 	{ "name": "output_l1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_3", "role": "ce0" }} , 
 	{ "name": "output_l1_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_3", "role": "q0" }} , 
 	{ "name": "output_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_0", "role": "address0" }} , 
 	{ "name": "output_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "ce0" }} , 
 	{ "name": "output_l2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_0", "role": "we0" }} , 
 	{ "name": "output_l2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_0", "role": "d0" }} , 
 	{ "name": "output_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_1", "role": "address0" }} , 
 	{ "name": "output_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "ce0" }} , 
 	{ "name": "output_l2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_1", "role": "we0" }} , 
 	{ "name": "output_l2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_1", "role": "d0" }} , 
 	{ "name": "output_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_2", "role": "address0" }} , 
 	{ "name": "output_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "ce0" }} , 
 	{ "name": "output_l2_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_2", "role": "we0" }} , 
 	{ "name": "output_l2_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_2", "role": "d0" }} , 
 	{ "name": "output_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "output_l2_3", "role": "address0" }} , 
 	{ "name": "output_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "ce0" }} , 
 	{ "name": "output_l2_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l2_3", "role": "we0" }} , 
 	{ "name": "output_l2_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l2_3", "role": "d0" }} , 
 	{ "name": "empty_23_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_23", "role": "dout" }} , 
 	{ "name": "empty_23_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_23", "role": "empty_n" }} , 
 	{ "name": "empty_23_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_23", "role": "read" }} , 
 	{ "name": "empty_24_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_24", "role": "dout" }} , 
 	{ "name": "empty_24_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_24", "role": "empty_n" }} , 
 	{ "name": "empty_24_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_24", "role": "read" }} , 
 	{ "name": "ko_2_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ko_2", "role": "dout" }} , 
 	{ "name": "ko_2_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2", "role": "empty_n" }} , 
 	{ "name": "ko_2_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2", "role": "read" }} , 
 	{ "name": "ho_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ho", "role": "dout" }} , 
 	{ "name": "ho_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho", "role": "empty_n" }} , 
 	{ "name": "ho_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho", "role": "read" }} , 
 	{ "name": "wo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "wo", "role": "dout" }} , 
 	{ "name": "wo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo", "role": "empty_n" }} , 
 	{ "name": "wo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo", "role": "read" }} , 
 	{ "name": "empty_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "empty", "role": "dout" }} , 
 	{ "name": "empty_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "empty_n" }} , 
 	{ "name": "empty_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6"],
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
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty_23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_9_1_1_U172", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_9_1_1_U173", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_9s_9s_9_1_1_U174", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U175", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_9ns_9_4_1_U176", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_9ns_9ns_9s_9ns_9_4_1_U177", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "54", "Max" : "54"}
	, {"Name" : "Interval", "Min" : "54", "Max" : "54"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	output_l1_0 { ap_memory {  { output_l1_0_address0 mem_address 1 9 }  { output_l1_0_ce0 mem_ce 1 1 }  { output_l1_0_q0 mem_dout 0 32 } } }
	output_l1_1 { ap_memory {  { output_l1_1_address0 mem_address 1 9 }  { output_l1_1_ce0 mem_ce 1 1 }  { output_l1_1_q0 mem_dout 0 32 } } }
	output_l1_2 { ap_memory {  { output_l1_2_address0 mem_address 1 9 }  { output_l1_2_ce0 mem_ce 1 1 }  { output_l1_2_q0 mem_dout 0 32 } } }
	output_l1_3 { ap_memory {  { output_l1_3_address0 mem_address 1 9 }  { output_l1_3_ce0 mem_ce 1 1 }  { output_l1_3_q0 mem_dout 0 32 } } }
	output_l2_0 { ap_memory {  { output_l2_0_address0 mem_address 1 9 }  { output_l2_0_ce0 mem_ce 1 1 }  { output_l2_0_we0 mem_we 1 1 }  { output_l2_0_d0 mem_din 1 32 } } }
	output_l2_1 { ap_memory {  { output_l2_1_address0 mem_address 1 9 }  { output_l2_1_ce0 mem_ce 1 1 }  { output_l2_1_we0 mem_we 1 1 }  { output_l2_1_d0 mem_din 1 32 } } }
	output_l2_2 { ap_memory {  { output_l2_2_address0 mem_address 1 9 }  { output_l2_2_ce0 mem_ce 1 1 }  { output_l2_2_we0 mem_we 1 1 }  { output_l2_2_d0 mem_din 1 32 } } }
	output_l2_3 { ap_memory {  { output_l2_3_address0 mem_address 1 9 }  { output_l2_3_ce0 mem_ce 1 1 }  { output_l2_3_we0 mem_we 1 1 }  { output_l2_3_d0 mem_din 1 32 } } }
	empty_23 { ap_fifo {  { empty_23_dout fifo_data 0 32 }  { empty_23_empty_n fifo_status 0 1 }  { empty_23_read fifo_update 1 1 } } }
	empty_24 { ap_fifo {  { empty_24_dout fifo_data 0 32 }  { empty_24_empty_n fifo_status 0 1 }  { empty_24_read fifo_update 1 1 } } }
	ko_2 { ap_fifo {  { ko_2_dout fifo_data 0 9 }  { ko_2_empty_n fifo_status 0 1 }  { ko_2_read fifo_update 1 1 } } }
	ho { ap_fifo {  { ho_dout fifo_data 0 9 }  { ho_empty_n fifo_status 0 1 }  { ho_read fifo_update 1 1 } } }
	wo { ap_fifo {  { wo_dout fifo_data 0 9 }  { wo_empty_n fifo_status 0 1 }  { wo_read fifo_update 1 1 } } }
	empty { ap_fifo {  { empty_dout fifo_data 0 9 }  { empty_empty_n fifo_status 0 1 }  { empty_read fifo_update 1 1 } } }
}
