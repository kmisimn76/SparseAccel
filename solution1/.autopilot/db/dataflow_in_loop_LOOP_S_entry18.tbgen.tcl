set moduleName dataflow_in_loop_LOOP_S_entry18
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
set C_modelName {dataflow_in_loop_LOOP_S.entry18}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 9 regular  }
	{ p_read1 int 9 regular  }
	{ ko_2 int 9 regular  }
	{ co_1 int 10 regular  }
	{ r int 32 regular  }
	{ s int 32 regular  }
	{ p_read2 int 32 regular  }
	{ p_read3 int 10 regular  }
	{ p_out int 9 regular {fifo 1}  }
	{ p_out1 int 9 regular {fifo 1}  }
	{ ko_2_out int 9 regular {fifo 1}  }
	{ co_1_out int 7 regular {fifo 1}  }
	{ co_1_out2 int 10 regular {fifo 1}  }
	{ r_out int 32 regular {fifo 1}  }
	{ r_out3 int 10 regular {fifo 1}  }
	{ s_out int 32 regular {fifo 1}  }
	{ s_out4 int 10 regular {fifo 1}  }
	{ p_out5 int 32 regular {fifo 1}  }
	{ p_out6 int 32 regular {fifo 1}  }
	{ p_out7 int 10 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "ko_2", "interface" : "wire", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "co_1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "fifo", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "fifo", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ko_2_out", "interface" : "fifo", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "co_1_out", "interface" : "fifo", "bitwidth" : 7, "direction" : "WRITEONLY"} , 
 	{ "Name" : "co_1_out2", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "r_out3", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s_out4", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out7", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
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
	{ p_read sc_in sc_lv 9 signal 0 } 
	{ p_read1 sc_in sc_lv 9 signal 1 } 
	{ ko_2 sc_in sc_lv 9 signal 2 } 
	{ co_1 sc_in sc_lv 10 signal 3 } 
	{ r sc_in sc_lv 32 signal 4 } 
	{ s sc_in sc_lv 32 signal 5 } 
	{ p_read2 sc_in sc_lv 32 signal 6 } 
	{ p_read3 sc_in sc_lv 10 signal 7 } 
	{ p_out_din sc_out sc_lv 9 signal 8 } 
	{ p_out_full_n sc_in sc_logic 1 signal 8 } 
	{ p_out_write sc_out sc_logic 1 signal 8 } 
	{ p_out1_din sc_out sc_lv 9 signal 9 } 
	{ p_out1_full_n sc_in sc_logic 1 signal 9 } 
	{ p_out1_write sc_out sc_logic 1 signal 9 } 
	{ ko_2_out_din sc_out sc_lv 9 signal 10 } 
	{ ko_2_out_full_n sc_in sc_logic 1 signal 10 } 
	{ ko_2_out_write sc_out sc_logic 1 signal 10 } 
	{ co_1_out_din sc_out sc_lv 7 signal 11 } 
	{ co_1_out_full_n sc_in sc_logic 1 signal 11 } 
	{ co_1_out_write sc_out sc_logic 1 signal 11 } 
	{ co_1_out2_din sc_out sc_lv 10 signal 12 } 
	{ co_1_out2_full_n sc_in sc_logic 1 signal 12 } 
	{ co_1_out2_write sc_out sc_logic 1 signal 12 } 
	{ r_out_din sc_out sc_lv 32 signal 13 } 
	{ r_out_full_n sc_in sc_logic 1 signal 13 } 
	{ r_out_write sc_out sc_logic 1 signal 13 } 
	{ r_out3_din sc_out sc_lv 10 signal 14 } 
	{ r_out3_full_n sc_in sc_logic 1 signal 14 } 
	{ r_out3_write sc_out sc_logic 1 signal 14 } 
	{ s_out_din sc_out sc_lv 32 signal 15 } 
	{ s_out_full_n sc_in sc_logic 1 signal 15 } 
	{ s_out_write sc_out sc_logic 1 signal 15 } 
	{ s_out4_din sc_out sc_lv 10 signal 16 } 
	{ s_out4_full_n sc_in sc_logic 1 signal 16 } 
	{ s_out4_write sc_out sc_logic 1 signal 16 } 
	{ p_out5_din sc_out sc_lv 32 signal 17 } 
	{ p_out5_full_n sc_in sc_logic 1 signal 17 } 
	{ p_out5_write sc_out sc_logic 1 signal 17 } 
	{ p_out6_din sc_out sc_lv 32 signal 18 } 
	{ p_out6_full_n sc_in sc_logic 1 signal 18 } 
	{ p_out6_write sc_out sc_logic 1 signal 18 } 
	{ p_out7_din sc_out sc_lv 10 signal 19 } 
	{ p_out7_full_n sc_in sc_logic 1 signal 19 } 
	{ p_out7_write sc_out sc_logic 1 signal 19 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "ko_2", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ko_2", "role": "default" }} , 
 	{ "name": "co_1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "co_1", "role": "default" }} , 
 	{ "name": "r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "default" }} , 
 	{ "name": "s", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_out", "role": "din" }} , 
 	{ "name": "p_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out", "role": "full_n" }} , 
 	{ "name": "p_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out", "role": "write" }} , 
 	{ "name": "p_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "p_out1", "role": "din" }} , 
 	{ "name": "p_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out1", "role": "full_n" }} , 
 	{ "name": "p_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out1", "role": "write" }} , 
 	{ "name": "ko_2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ko_2_out", "role": "din" }} , 
 	{ "name": "ko_2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2_out", "role": "full_n" }} , 
 	{ "name": "ko_2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2_out", "role": "write" }} , 
 	{ "name": "co_1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "co_1_out", "role": "din" }} , 
 	{ "name": "co_1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1_out", "role": "full_n" }} , 
 	{ "name": "co_1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1_out", "role": "write" }} , 
 	{ "name": "co_1_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "co_1_out2", "role": "din" }} , 
 	{ "name": "co_1_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1_out2", "role": "full_n" }} , 
 	{ "name": "co_1_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1_out2", "role": "write" }} , 
 	{ "name": "r_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r_out", "role": "din" }} , 
 	{ "name": "r_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_out", "role": "full_n" }} , 
 	{ "name": "r_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_out", "role": "write" }} , 
 	{ "name": "r_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "r_out3", "role": "din" }} , 
 	{ "name": "r_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_out3", "role": "full_n" }} , 
 	{ "name": "r_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r_out3", "role": "write" }} , 
 	{ "name": "s_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s_out", "role": "din" }} , 
 	{ "name": "s_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out", "role": "full_n" }} , 
 	{ "name": "s_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out", "role": "write" }} , 
 	{ "name": "s_out4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s_out4", "role": "din" }} , 
 	{ "name": "s_out4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out4", "role": "full_n" }} , 
 	{ "name": "s_out4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s_out4", "role": "write" }} , 
 	{ "name": "p_out5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out5", "role": "din" }} , 
 	{ "name": "p_out5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out5", "role": "full_n" }} , 
 	{ "name": "p_out5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out5", "role": "write" }} , 
 	{ "name": "p_out6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out6", "role": "din" }} , 
 	{ "name": "p_out6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out6", "role": "full_n" }} , 
 	{ "name": "p_out6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out6", "role": "write" }} , 
 	{ "name": "p_out7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_out7", "role": "din" }} , 
 	{ "name": "p_out7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out7", "role": "full_n" }} , 
 	{ "name": "p_out7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out7", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "dataflow_in_loop_LOOP_S_entry18",
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
			{"Name" : "p_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out7_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	dataflow_in_loop_LOOP_S_entry18 {
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
		p_out7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 9 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 9 } } }
	ko_2 { ap_none {  { ko_2 in_data 0 9 } } }
	co_1 { ap_none {  { co_1 in_data 0 10 } } }
	r { ap_none {  { r in_data 0 32 } } }
	s { ap_none {  { s in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 10 } } }
	p_out { ap_fifo {  { p_out_din fifo_data 1 9 }  { p_out_full_n fifo_status 0 1 }  { p_out_write fifo_update 1 1 } } }
	p_out1 { ap_fifo {  { p_out1_din fifo_data 1 9 }  { p_out1_full_n fifo_status 0 1 }  { p_out1_write fifo_update 1 1 } } }
	ko_2_out { ap_fifo {  { ko_2_out_din fifo_data 1 9 }  { ko_2_out_full_n fifo_status 0 1 }  { ko_2_out_write fifo_update 1 1 } } }
	co_1_out { ap_fifo {  { co_1_out_din fifo_data 1 7 }  { co_1_out_full_n fifo_status 0 1 }  { co_1_out_write fifo_update 1 1 } } }
	co_1_out2 { ap_fifo {  { co_1_out2_din fifo_data 1 10 }  { co_1_out2_full_n fifo_status 0 1 }  { co_1_out2_write fifo_update 1 1 } } }
	r_out { ap_fifo {  { r_out_din fifo_data 1 32 }  { r_out_full_n fifo_status 0 1 }  { r_out_write fifo_update 1 1 } } }
	r_out3 { ap_fifo {  { r_out3_din fifo_data 1 10 }  { r_out3_full_n fifo_status 0 1 }  { r_out3_write fifo_update 1 1 } } }
	s_out { ap_fifo {  { s_out_din fifo_data 1 32 }  { s_out_full_n fifo_status 0 1 }  { s_out_write fifo_update 1 1 } } }
	s_out4 { ap_fifo {  { s_out4_din fifo_data 1 10 }  { s_out4_full_n fifo_status 0 1 }  { s_out4_write fifo_update 1 1 } } }
	p_out5 { ap_fifo {  { p_out5_din fifo_data 1 32 }  { p_out5_full_n fifo_status 0 1 }  { p_out5_write fifo_update 1 1 } } }
	p_out6 { ap_fifo {  { p_out6_din fifo_data 1 32 }  { p_out6_full_n fifo_status 0 1 }  { p_out6_write fifo_update 1 1 } } }
	p_out7 { ap_fifo {  { p_out7_din fifo_data 1 10 }  { p_out7_full_n fifo_status 0 1 }  { p_out7_write fifo_update 1 1 } } }
}
