set moduleName dataflow_in_loop_LOOP_S_entry17
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dataflow_in_loop_LOOP_S.entry17}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 11 regular  }
	{ p_read1 int 11 regular  }
	{ ko_1 int 9 regular  }
	{ co_2 int 10 regular  }
	{ r int 11 regular  }
	{ s int 32 regular  }
	{ p_read2 int 32 regular  }
	{ p_read3 int 10 regular  }
	{ p_c int 11 regular {fifo 1}  }
	{ p_c1 int 11 regular {fifo 1}  }
	{ ko_1_c int 9 regular {fifo 1}  }
	{ co_2_c int 9 regular {fifo 1}  }
	{ co_2_c2 int 10 regular {fifo 1}  }
	{ r_c int 11 regular {fifo 1}  }
	{ r_c3 int 10 regular {fifo 1}  }
	{ s_c int 11 regular {fifo 1}  }
	{ s_c4 int 10 regular {fifo 1}  }
	{ p_c5 int 32 regular {fifo 1}  }
	{ p_c6 int 32 regular {fifo 1}  }
	{ p_c7 int 10 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "ko_1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "co_2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "wire", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c1", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ko_1_c", "interface" : "fifo", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "co_2_c", "interface" : "fifo", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "co_2_c2", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_c3", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_c", "interface" : "fifo", "bitwidth" : 11, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_c4", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_c7", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 51
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 11 signal 0 } 
	{ p_read1 sc_in sc_lv 11 signal 1 } 
	{ ko_1 sc_in sc_lv 9 signal 2 } 
	{ co_2 sc_in sc_lv 10 signal 3 } 
	{ r sc_in sc_lv 11 signal 4 } 
	{ s sc_in sc_lv 32 signal 5 } 
	{ p_read2 sc_in sc_lv 32 signal 6 } 
	{ p_read3 sc_in sc_lv 10 signal 7 } 
	{ p_c_din sc_out sc_lv 11 signal 8 } 
	{ p_c_full_n sc_in sc_logic 1 signal 8 } 
	{ p_c_write sc_out sc_logic 1 signal 8 } 
	{ p_c1_din sc_out sc_lv 11 signal 9 } 
	{ p_c1_full_n sc_in sc_logic 1 signal 9 } 
	{ p_c1_write sc_out sc_logic 1 signal 9 } 
	{ ko_1_c_din sc_out sc_lv 9 signal 10 } 
	{ ko_1_c_full_n sc_in sc_logic 1 signal 10 } 
	{ ko_1_c_write sc_out sc_logic 1 signal 10 } 
	{ co_2_c_din sc_out sc_lv 9 signal 11 } 
	{ co_2_c_full_n sc_in sc_logic 1 signal 11 } 
	{ co_2_c_write sc_out sc_logic 1 signal 11 } 
	{ co_2_c2_din sc_out sc_lv 10 signal 12 } 
	{ co_2_c2_full_n sc_in sc_logic 1 signal 12 } 
	{ co_2_c2_write sc_out sc_logic 1 signal 12 } 
	{ r_c_din sc_out sc_lv 11 signal 13 } 
	{ r_c_full_n sc_in sc_logic 1 signal 13 } 
	{ r_c_write sc_out sc_logic 1 signal 13 } 
	{ r_c3_din sc_out sc_lv 10 signal 14 } 
	{ r_c3_full_n sc_in sc_logic 1 signal 14 } 
	{ r_c3_write sc_out sc_logic 1 signal 14 } 
	{ s_c_din sc_out sc_lv 11 signal 15 } 
	{ s_c_full_n sc_in sc_logic 1 signal 15 } 
	{ s_c_write sc_out sc_logic 1 signal 15 } 
	{ s_c4_din sc_out sc_lv 10 signal 16 } 
	{ s_c4_full_n sc_in sc_logic 1 signal 16 } 
	{ s_c4_write sc_out sc_logic 1 signal 16 } 
	{ p_c5_din sc_out sc_lv 32 signal 17 } 
	{ p_c5_full_n sc_in sc_logic 1 signal 17 } 
	{ p_c5_write sc_out sc_logic 1 signal 17 } 
	{ p_c6_din sc_out sc_lv 32 signal 18 } 
	{ p_c6_full_n sc_in sc_logic 1 signal 18 } 
	{ p_c6_write sc_out sc_logic 1 signal 18 } 
	{ p_c7_din sc_out sc_lv 10 signal 19 } 
	{ p_c7_full_n sc_in sc_logic 1 signal 19 } 
	{ p_c7_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "ko_1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ko_1", "role": "default" }} , 
 	{ "name": "co_2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "co_2", "role": "default" }} , 
 	{ "name": "r", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "r", "role": "default" }} , 
 	{ "name": "s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_c", "role": "din" }} , 
 	{ "name": "p_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c", "role": "full_n" }} , 
 	{ "name": "p_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c", "role": "write" }} , 
 	{ "name": "p_c1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "p_c1", "role": "din" }} , 
 	{ "name": "p_c1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c1", "role": "full_n" }} , 
 	{ "name": "p_c1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c1", "role": "write" }} , 
 	{ "name": "ko_1_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ko_1_c", "role": "din" }} , 
 	{ "name": "ko_1_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_1_c", "role": "full_n" }} , 
 	{ "name": "ko_1_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_1_c", "role": "write" }} , 
 	{ "name": "co_2_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "co_2_c", "role": "din" }} , 
 	{ "name": "co_2_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_2_c", "role": "full_n" }} , 
 	{ "name": "co_2_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_2_c", "role": "write" }} , 
 	{ "name": "co_2_c2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "co_2_c2", "role": "din" }} , 
 	{ "name": "co_2_c2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_2_c2", "role": "full_n" }} , 
 	{ "name": "co_2_c2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_2_c2", "role": "write" }} , 
 	{ "name": "r_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "r_c", "role": "din" }} , 
 	{ "name": "r_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_c", "role": "full_n" }} , 
 	{ "name": "r_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_c", "role": "write" }} , 
 	{ "name": "r_c3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "r_c3", "role": "din" }} , 
 	{ "name": "r_c3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_c3", "role": "full_n" }} , 
 	{ "name": "r_c3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_c3", "role": "write" }} , 
 	{ "name": "s_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s_c", "role": "din" }} , 
 	{ "name": "s_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_c", "role": "full_n" }} , 
 	{ "name": "s_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_c", "role": "write" }} , 
 	{ "name": "s_c4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_c4", "role": "din" }} , 
 	{ "name": "s_c4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_c4", "role": "full_n" }} , 
 	{ "name": "s_c4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_c4", "role": "write" }} , 
 	{ "name": "p_c5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c5", "role": "din" }} , 
 	{ "name": "p_c5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c5", "role": "full_n" }} , 
 	{ "name": "p_c5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c5", "role": "write" }} , 
 	{ "name": "p_c6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_c6", "role": "din" }} , 
 	{ "name": "p_c6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c6", "role": "full_n" }} , 
 	{ "name": "p_c6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c6", "role": "write" }} , 
 	{ "name": "p_c7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_c7", "role": "din" }} , 
 	{ "name": "p_c7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c7", "role": "full_n" }} , 
 	{ "name": "p_c7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_c7", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "dataflow_in_loop_LOOP_S_entry17",
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
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "r", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_c1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_1_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_2_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_2_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_2_c2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_2_c2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_c3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_c3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_c4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_c4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_c5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_c6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_c7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_c7_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_LOOP_S_entry17 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co_2 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_c {Type O LastRead -1 FirstWrite 0}
		p_c1 {Type O LastRead -1 FirstWrite 0}
		ko_1_c {Type O LastRead -1 FirstWrite 0}
		co_2_c {Type O LastRead -1 FirstWrite 0}
		co_2_c2 {Type O LastRead -1 FirstWrite 0}
		r_c {Type O LastRead -1 FirstWrite 0}
		r_c3 {Type O LastRead -1 FirstWrite 0}
		s_c {Type O LastRead -1 FirstWrite 0}
		s_c4 {Type O LastRead -1 FirstWrite 0}
		p_c5 {Type O LastRead -1 FirstWrite 0}
		p_c6 {Type O LastRead -1 FirstWrite 0}
		p_c7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 11 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 11 } } }
	ko_1 { ap_none {  { ko_1 in_data 0 9 } } }
	co_2 { ap_none {  { co_2 in_data 0 10 } } }
	r { ap_none {  { r in_data 0 11 } } }
	s { ap_none {  { s in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 10 } } }
	p_c { ap_fifo {  { p_c_din fifo_data 1 11 }  { p_c_full_n fifo_status 0 1 }  { p_c_write fifo_update 1 1 } } }
	p_c1 { ap_fifo {  { p_c1_din fifo_data 1 11 }  { p_c1_full_n fifo_status 0 1 }  { p_c1_write fifo_update 1 1 } } }
	ko_1_c { ap_fifo {  { ko_1_c_din fifo_data 1 9 }  { ko_1_c_full_n fifo_status 0 1 }  { ko_1_c_write fifo_update 1 1 } } }
	co_2_c { ap_fifo {  { co_2_c_din fifo_data 1 9 }  { co_2_c_full_n fifo_status 0 1 }  { co_2_c_write fifo_update 1 1 } } }
	co_2_c2 { ap_fifo {  { co_2_c2_din fifo_data 1 10 }  { co_2_c2_full_n fifo_status 0 1 }  { co_2_c2_write fifo_update 1 1 } } }
	r_c { ap_fifo {  { r_c_din fifo_data 1 11 }  { r_c_full_n fifo_status 0 1 }  { r_c_write fifo_update 1 1 } } }
	r_c3 { ap_fifo {  { r_c3_din fifo_data 1 10 }  { r_c3_full_n fifo_status 0 1 }  { r_c3_write fifo_update 1 1 } } }
	s_c { ap_fifo {  { s_c_din fifo_data 1 11 }  { s_c_full_n fifo_status 0 1 }  { s_c_write fifo_update 1 1 } } }
	s_c4 { ap_fifo {  { s_c4_din fifo_data 1 10 }  { s_c4_full_n fifo_status 0 1 }  { s_c4_write fifo_update 1 1 } } }
	p_c5 { ap_fifo {  { p_c5_din fifo_data 1 32 }  { p_c5_full_n fifo_status 0 1 }  { p_c5_write fifo_update 1 1 } } }
	p_c6 { ap_fifo {  { p_c6_din fifo_data 1 32 }  { p_c6_full_n fifo_status 0 1 }  { p_c6_write fifo_update 1 1 } } }
	p_c7 { ap_fifo {  { p_c7_din fifo_data 1 10 }  { p_c7_full_n fifo_status 0 1 }  { p_c7_write fifo_update 1 1 } } }
}
