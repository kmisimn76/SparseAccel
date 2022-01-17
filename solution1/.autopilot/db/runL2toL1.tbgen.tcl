set moduleName runL2toL1
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
set C_modelName {runL2toL1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_l1buf_018 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ data_l1buf_119 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ data_l1buf_220 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ data_l1buf_321 int 8 regular {array 512 { 0 3 } 0 1 }  }
	{ data_l2_0 int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_l2_1 int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_l2_2 int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ data_l2_3 int 8 regular {array 1024 { 1 3 } 1 1 }  }
	{ empty_15 int 32 regular {fifo 0}  }
	{ co_1 int 10 regular {fifo 0}  }
	{ r int 10 regular {fifo 0}  }
	{ s int 10 regular {fifo 0}  }
	{ empty int 10 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_l1buf_018", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1buf_119", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1buf_220", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l1buf_321", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_l2_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l2_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "empty_15", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "co_1", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 50
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_l1buf_018_address0 sc_out sc_lv 9 signal 0 } 
	{ data_l1buf_018_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_l1buf_018_we0 sc_out sc_logic 1 signal 0 } 
	{ data_l1buf_018_d0 sc_out sc_lv 8 signal 0 } 
	{ data_l1buf_119_address0 sc_out sc_lv 9 signal 1 } 
	{ data_l1buf_119_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_l1buf_119_we0 sc_out sc_logic 1 signal 1 } 
	{ data_l1buf_119_d0 sc_out sc_lv 8 signal 1 } 
	{ data_l1buf_220_address0 sc_out sc_lv 9 signal 2 } 
	{ data_l1buf_220_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_l1buf_220_we0 sc_out sc_logic 1 signal 2 } 
	{ data_l1buf_220_d0 sc_out sc_lv 8 signal 2 } 
	{ data_l1buf_321_address0 sc_out sc_lv 9 signal 3 } 
	{ data_l1buf_321_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_l1buf_321_we0 sc_out sc_logic 1 signal 3 } 
	{ data_l1buf_321_d0 sc_out sc_lv 8 signal 3 } 
	{ data_l2_0_address0 sc_out sc_lv 10 signal 4 } 
	{ data_l2_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_l2_0_q0 sc_in sc_lv 8 signal 4 } 
	{ data_l2_1_address0 sc_out sc_lv 10 signal 5 } 
	{ data_l2_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ data_l2_1_q0 sc_in sc_lv 8 signal 5 } 
	{ data_l2_2_address0 sc_out sc_lv 10 signal 6 } 
	{ data_l2_2_ce0 sc_out sc_logic 1 signal 6 } 
	{ data_l2_2_q0 sc_in sc_lv 8 signal 6 } 
	{ data_l2_3_address0 sc_out sc_lv 10 signal 7 } 
	{ data_l2_3_ce0 sc_out sc_logic 1 signal 7 } 
	{ data_l2_3_q0 sc_in sc_lv 8 signal 7 } 
	{ empty_15_dout sc_in sc_lv 32 signal 8 } 
	{ empty_15_empty_n sc_in sc_logic 1 signal 8 } 
	{ empty_15_read sc_out sc_logic 1 signal 8 } 
	{ co_1_dout sc_in sc_lv 10 signal 9 } 
	{ co_1_empty_n sc_in sc_logic 1 signal 9 } 
	{ co_1_read sc_out sc_logic 1 signal 9 } 
	{ r_dout sc_in sc_lv 10 signal 10 } 
	{ r_empty_n sc_in sc_logic 1 signal 10 } 
	{ r_read sc_out sc_logic 1 signal 10 } 
	{ s_dout sc_in sc_lv 10 signal 11 } 
	{ s_empty_n sc_in sc_logic 1 signal 11 } 
	{ s_read sc_out sc_logic 1 signal 11 } 
	{ empty_dout sc_in sc_lv 10 signal 12 } 
	{ empty_empty_n sc_in sc_logic 1 signal 12 } 
	{ empty_read sc_out sc_logic 1 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_l1buf_018_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_018", "role": "address0" }} , 
 	{ "name": "data_l1buf_018_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_018", "role": "ce0" }} , 
 	{ "name": "data_l1buf_018_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_018", "role": "we0" }} , 
 	{ "name": "data_l1buf_018_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_018", "role": "d0" }} , 
 	{ "name": "data_l1buf_119_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_119", "role": "address0" }} , 
 	{ "name": "data_l1buf_119_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_119", "role": "ce0" }} , 
 	{ "name": "data_l1buf_119_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_119", "role": "we0" }} , 
 	{ "name": "data_l1buf_119_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_119", "role": "d0" }} , 
 	{ "name": "data_l1buf_220_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_220", "role": "address0" }} , 
 	{ "name": "data_l1buf_220_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_220", "role": "ce0" }} , 
 	{ "name": "data_l1buf_220_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_220", "role": "we0" }} , 
 	{ "name": "data_l1buf_220_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_220", "role": "d0" }} , 
 	{ "name": "data_l1buf_321_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_321", "role": "address0" }} , 
 	{ "name": "data_l1buf_321_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_321", "role": "ce0" }} , 
 	{ "name": "data_l1buf_321_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_321", "role": "we0" }} , 
 	{ "name": "data_l1buf_321_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_321", "role": "d0" }} , 
 	{ "name": "data_l2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_0", "role": "address0" }} , 
 	{ "name": "data_l2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_0", "role": "ce0" }} , 
 	{ "name": "data_l2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_0", "role": "q0" }} , 
 	{ "name": "data_l2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_1", "role": "address0" }} , 
 	{ "name": "data_l2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_1", "role": "ce0" }} , 
 	{ "name": "data_l2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_1", "role": "q0" }} , 
 	{ "name": "data_l2_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_2", "role": "address0" }} , 
 	{ "name": "data_l2_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_2", "role": "ce0" }} , 
 	{ "name": "data_l2_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_2", "role": "q0" }} , 
 	{ "name": "data_l2_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "data_l2_3", "role": "address0" }} , 
 	{ "name": "data_l2_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l2_3", "role": "ce0" }} , 
 	{ "name": "data_l2_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l2_3", "role": "q0" }} , 
 	{ "name": "empty_15_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty_15", "role": "dout" }} , 
 	{ "name": "empty_15_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_15", "role": "empty_n" }} , 
 	{ "name": "empty_15_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty_15", "role": "read" }} , 
 	{ "name": "co_1_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "co_1", "role": "dout" }} , 
 	{ "name": "co_1_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1", "role": "empty_n" }} , 
 	{ "name": "co_1_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1", "role": "read" }} , 
 	{ "name": "r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "r", "role": "dout" }} , 
 	{ "name": "r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "empty_n" }} , 
 	{ "name": "r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "read" }} , 
 	{ "name": "s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "dout" }} , 
 	{ "name": "s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "empty_n" }} , 
 	{ "name": "s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "read" }} , 
 	{ "name": "empty_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "empty", "role": "dout" }} , 
 	{ "name": "empty_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "empty_n" }} , 
 	{ "name": "empty_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
			{"Name" : "data_l1buf_018", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_119", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_220", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_321", "Type" : "Memory", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_10s_10s_10_1_1_U76", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32ns_64_1_1_U77", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ama_addmuladd_10ns_10ns_10s_10ns_10_4_1_U78", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_9ns_9_4_1_U79", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	runL2toL1 {
		data_l1buf_018 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_119 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_220 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_321 {Type O LastRead -1 FirstWrite 5}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		empty_15 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
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
	data_l1buf_018 { ap_memory {  { data_l1buf_018_address0 mem_address 1 9 }  { data_l1buf_018_ce0 mem_ce 1 1 }  { data_l1buf_018_we0 mem_we 1 1 }  { data_l1buf_018_d0 mem_din 1 8 } } }
	data_l1buf_119 { ap_memory {  { data_l1buf_119_address0 mem_address 1 9 }  { data_l1buf_119_ce0 mem_ce 1 1 }  { data_l1buf_119_we0 mem_we 1 1 }  { data_l1buf_119_d0 mem_din 1 8 } } }
	data_l1buf_220 { ap_memory {  { data_l1buf_220_address0 mem_address 1 9 }  { data_l1buf_220_ce0 mem_ce 1 1 }  { data_l1buf_220_we0 mem_we 1 1 }  { data_l1buf_220_d0 mem_din 1 8 } } }
	data_l1buf_321 { ap_memory {  { data_l1buf_321_address0 mem_address 1 9 }  { data_l1buf_321_ce0 mem_ce 1 1 }  { data_l1buf_321_we0 mem_we 1 1 }  { data_l1buf_321_d0 mem_din 1 8 } } }
	data_l2_0 { ap_memory {  { data_l2_0_address0 mem_address 1 10 }  { data_l2_0_ce0 mem_ce 1 1 }  { data_l2_0_q0 mem_dout 0 8 } } }
	data_l2_1 { ap_memory {  { data_l2_1_address0 mem_address 1 10 }  { data_l2_1_ce0 mem_ce 1 1 }  { data_l2_1_q0 mem_dout 0 8 } } }
	data_l2_2 { ap_memory {  { data_l2_2_address0 mem_address 1 10 }  { data_l2_2_ce0 mem_ce 1 1 }  { data_l2_2_q0 mem_dout 0 8 } } }
	data_l2_3 { ap_memory {  { data_l2_3_address0 mem_address 1 10 }  { data_l2_3_ce0 mem_ce 1 1 }  { data_l2_3_q0 mem_dout 0 8 } } }
	empty_15 { ap_fifo {  { empty_15_dout fifo_data 0 32 }  { empty_15_empty_n fifo_status 0 1 }  { empty_15_read fifo_update 1 1 } } }
	co_1 { ap_fifo {  { co_1_dout fifo_data 0 10 }  { co_1_empty_n fifo_status 0 1 }  { co_1_read fifo_update 1 1 } } }
	r { ap_fifo {  { r_dout fifo_data 0 10 }  { r_empty_n fifo_status 0 1 }  { r_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_dout fifo_data 0 10 }  { s_empty_n fifo_status 0 1 }  { s_read fifo_update 1 1 } } }
	empty { ap_fifo {  { empty_dout fifo_data 0 10 }  { empty_empty_n fifo_status 0 1 }  { empty_read fifo_update 1 1 } } }
}
