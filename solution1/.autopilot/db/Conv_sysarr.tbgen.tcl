set moduleName Conv_sysarr
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Conv_sysarr}
set C_modelType { void 0 }
set C_modelArgList {
	{ bias_in_V int 256 regular {fifo 0 volatile }  }
	{ weight_in_V int 256 regular {fifo 0 volatile }  }
	{ data_in_V int 256 regular {fifo 0 volatile }  }
	{ conv_out_V int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bias_in_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "bias_in.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "weight_in_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "weight_in.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "data_in.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "conv_out_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "conv_out.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias_in_V_dout sc_in sc_lv 256 signal 0 } 
	{ bias_in_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ bias_in_V_read sc_out sc_logic 1 signal 0 } 
	{ weight_in_V_dout sc_in sc_lv 256 signal 1 } 
	{ weight_in_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ weight_in_V_read sc_out sc_logic 1 signal 1 } 
	{ data_in_V_dout sc_in sc_lv 256 signal 2 } 
	{ data_in_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_in_V_read sc_out sc_logic 1 signal 2 } 
	{ conv_out_V_din sc_out sc_lv 256 signal 3 } 
	{ conv_out_V_full_n sc_in sc_logic 1 signal 3 } 
	{ conv_out_V_write sc_out sc_logic 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bias_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "bias_in_V", "role": "dout" }} , 
 	{ "name": "bias_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_in_V", "role": "empty_n" }} , 
 	{ "name": "bias_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_in_V", "role": "read" }} , 
 	{ "name": "weight_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "weight_in_V", "role": "dout" }} , 
 	{ "name": "weight_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_in_V", "role": "empty_n" }} , 
 	{ "name": "weight_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_in_V", "role": "read" }} , 
 	{ "name": "data_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "data_in_V", "role": "dout" }} , 
 	{ "name": "data_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V", "role": "empty_n" }} , 
 	{ "name": "data_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V", "role": "read" }} , 
 	{ "name": "conv_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "conv_out_V", "role": "din" }} , 
 	{ "name": "conv_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V", "role": "full_n" }} , 
 	{ "name": "conv_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132"],
		"CDFG" : "Conv_sysarr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3247", "EstimateLatencyMax" : "3247",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_522"}],
		"Port" : [
			{"Name" : "bias_in_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "bias_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_in_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "weight_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "data_in_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_out_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "conv_out_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_522", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_522", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_522", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dataflow_parent_loop_proc16_fu_522", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_l2_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_l2_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_l2_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_l2_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l2_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l2_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l2_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l2_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_l1_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_l1_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_l1_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_l1_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "dataflow_parent_loop_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2801", "EstimateLatencyMax" : "2801",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "18", "Name" : "dataflow_parent_loop_proc15_U0"}],
		"OutputProcess" : [
			{"ID" : "18", "Name" : "dataflow_parent_loop_proc15_U0"}],
		"Port" : [
			{"Name" : "div30_cast124", "Type" : "None", "Direction" : "I"},
			{"Name" : "div76_cast125", "Type" : "None", "Direction" : "I"},
			{"Name" : "RS", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_0"}]},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_1"}]},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_2"}]},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_3"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0", "Parent" : "17", "Child" : ["19"],
		"CDFG" : "dataflow_parent_loop_proc15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "699", "EstimateLatencyMax" : "699",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "19", "Name" : "dataflow_parent_loop_proc14_U0"}],
		"OutputProcess" : [
			{"ID" : "19", "Name" : "dataflow_parent_loop_proc14_U0"}],
		"Port" : [
			{"Name" : "div76_cast125", "Type" : "None", "Direction" : "I"},
			{"Name" : "RS", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "output_l1_0"}]},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "output_l1_1"}]},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "output_l1_2"}]},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "output_l1_3"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc14_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0", "Parent" : "18", "Child" : ["20"],
		"CDFG" : "dataflow_parent_loop_proc14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "697", "EstimateLatencyMax" : "697",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "20", "Name" : "dataflow_parent_loop_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "dataflow_parent_loop_proc_U0"}],
		"Port" : [
			{"Name" : "RS", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_0"}]},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_1"}]},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_2"}]},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_3"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0", "Parent" : "19", "Child" : ["21"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "231", "EstimateLatencyMax" : "231",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "21", "Name" : "dataflow_in_loop_LOOP_S_U0"}],
		"OutputProcess" : [
			{"ID" : "21", "Name" : "dataflow_in_loop_LOOP_S_U0"}],
		"Port" : [
			{"Name" : "RS", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "r", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "output_l1_0"}]},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "output_l1_1"}]},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "output_l1_2"}]},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "output_l1_3"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_in_loop_LOOP_S_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0", "Parent" : "20", "Child" : ["22", "23", "24", "25", "26", "27", "64", "69", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122"],
		"CDFG" : "dataflow_in_loop_LOOP_S",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "113", "EstimateLatencyMax" : "113",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "26", "Name" : "dataflow_in_loop_LOOP_S_entry20_U0"},
			{"ID" : "27", "Name" : "runWeight2Reg_U0"},
			{"ID" : "64", "Name" : "runL2toL1_U0"}],
		"OutputProcess" : [
			{"ID" : "69", "Name" : "runSysArr_U0"}],
		"Port" : [
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "r", "Type" : "None", "Direction" : "I"},
			{"Name" : "s", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "runL2toL1_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "runL2toL1_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "runL2toL1_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "64", "SubInstance" : "runL2toL1_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_pass_0"}]},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_pass_1"}]},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_pass_2"}]},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_pass_3"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "69", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_0_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_1_U", "Parent" : "21"},
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_2_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_3_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry20_U0", "Parent" : "21",
		"CDFG" : "dataflow_in_loop_LOOP_S_entry20",
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
			{"Name" : "p_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "92", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "93", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "94", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "95", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "96", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "97", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "98", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "27", "DependentChan" : "99", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "100", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "101", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "102", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "64", "DependentChan" : "103", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out7_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0", "Parent" : "21", "Child" : ["28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63"],
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
			{"Name" : "empty_15", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "92", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_15_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "93", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "94", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "95", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "97", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "99", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "104", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "105", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "106", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "28", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mul_9s_9s_9_1_1_U21", "Parent" : "27"},
	{"ID" : "29", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mul_9s_9s_9_1_1_U22", "Parent" : "27"},
	{"ID" : "30", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U23", "Parent" : "27"},
	{"ID" : "31", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U24", "Parent" : "27"},
	{"ID" : "32", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U25", "Parent" : "27"},
	{"ID" : "33", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U26", "Parent" : "27"},
	{"ID" : "34", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U27", "Parent" : "27"},
	{"ID" : "35", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U28", "Parent" : "27"},
	{"ID" : "36", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U29", "Parent" : "27"},
	{"ID" : "37", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U30", "Parent" : "27"},
	{"ID" : "38", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U31", "Parent" : "27"},
	{"ID" : "39", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U32", "Parent" : "27"},
	{"ID" : "40", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U33", "Parent" : "27"},
	{"ID" : "41", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U34", "Parent" : "27"},
	{"ID" : "42", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U35", "Parent" : "27"},
	{"ID" : "43", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U36", "Parent" : "27"},
	{"ID" : "44", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U37", "Parent" : "27"},
	{"ID" : "45", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U38", "Parent" : "27"},
	{"ID" : "46", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U39", "Parent" : "27"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U40", "Parent" : "27"},
	{"ID" : "48", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U41", "Parent" : "27"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U42", "Parent" : "27"},
	{"ID" : "50", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U43", "Parent" : "27"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U44", "Parent" : "27"},
	{"ID" : "52", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U45", "Parent" : "27"},
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U46", "Parent" : "27"},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U47", "Parent" : "27"},
	{"ID" : "55", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U48", "Parent" : "27"},
	{"ID" : "56", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U49", "Parent" : "27"},
	{"ID" : "57", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U50", "Parent" : "27"},
	{"ID" : "58", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U51", "Parent" : "27"},
	{"ID" : "59", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U52", "Parent" : "27"},
	{"ID" : "60", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U53", "Parent" : "27"},
	{"ID" : "61", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_8_1_1_U54", "Parent" : "27"},
	{"ID" : "62", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.mux_42_1_1_1_U55", "Parent" : "27"},
	{"ID" : "63", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.ama_addmuladd_9ns_9ns_9s_9ns_9_4_1_U56", "Parent" : "27"},
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0", "Parent" : "21", "Child" : ["65", "66", "67", "68"],
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
			{"Name" : "data_l1buf_017", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "22"},
			{"Name" : "data_l1buf_118", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "23"},
			{"Name" : "data_l1buf_219", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "24"},
			{"Name" : "data_l1buf_320", "Type" : "Memory", "Direction" : "O", "DependentProc" : "69", "DependentChan" : "25"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_16", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "101", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_16_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "96", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "98", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "100", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "103", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "65", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.mul_10s_10s_10_1_1_U77", "Parent" : "64"},
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.mul_32ns_32ns_64_1_1_U78", "Parent" : "64"},
	{"ID" : "67", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.ama_addmuladd_10ns_10ns_10s_10ns_10_4_1_U79", "Parent" : "64"},
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.mac_muladd_9s_9s_9ns_9_4_1_U80", "Parent" : "64"},
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0", "Parent" : "21", "Child" : ["70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91"],
		"CDFG" : "runSysArr",
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
			{"Name" : "weight_regfile_0_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "107", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "108", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "109", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_0_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "110", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "111", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "112", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "113", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_1_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "114", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "115", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "116", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "117", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_2_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "118", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_0_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "119", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_1_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "120", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_2_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "121", "DependentChanDepth" : "2"},
			{"Name" : "weight_regfile_3_3_read", "Type" : "None", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "122", "DependentChanDepth" : "2"},
			{"Name" : "data_l1buf_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "22"},
			{"Name" : "data_l1buf_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "23"},
			{"Name" : "data_l1buf_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "24"},
			{"Name" : "data_l1buf_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "64", "DependentChan" : "25"},
			{"Name" : "output_l1_pass_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "102", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "104", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "106", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "27", "DependentChan" : "105", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.output_l1_local_3_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.output_l1_local_2_U", "Parent" : "69"},
	{"ID" : "72", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.output_l1_local_1_U", "Parent" : "69"},
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.output_l1_local_0_U", "Parent" : "69"},
	{"ID" : "74", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mul_32s_32s_32_1_1_U98", "Parent" : "69"},
	{"ID" : "75", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mul_9s_9s_9_1_1_U99", "Parent" : "69"},
	{"ID" : "76", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mul_8s_8s_16_1_1_U100", "Parent" : "69"},
	{"ID" : "77", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mul_8s_8s_16_1_1_U101", "Parent" : "69"},
	{"ID" : "78", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mul_8s_8s_16_1_1_U102", "Parent" : "69"},
	{"ID" : "79", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mul_8s_8s_16_1_1_U103", "Parent" : "69"},
	{"ID" : "80", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_18s_19_2_1_U104", "Parent" : "69"},
	{"ID" : "81", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_17s_18_2_1_U105", "Parent" : "69"},
	{"ID" : "82", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_16s_17_2_1_U106", "Parent" : "69"},
	{"ID" : "83", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_18s_19_2_1_U107", "Parent" : "69"},
	{"ID" : "84", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_17s_18_2_1_U108", "Parent" : "69"},
	{"ID" : "85", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_16s_17_2_1_U109", "Parent" : "69"},
	{"ID" : "86", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_18s_19_2_1_U110", "Parent" : "69"},
	{"ID" : "87", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_17s_18_2_1_U111", "Parent" : "69"},
	{"ID" : "88", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_16s_17_2_1_U112", "Parent" : "69"},
	{"ID" : "89", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_18s_19_1_1_U113", "Parent" : "69"},
	{"ID" : "90", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_17s_18_1_1_U114", "Parent" : "69"},
	{"ID" : "91", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.mac_muladd_8s_8s_16s_17_1_1_U115", "Parent" : "69"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.p_c_U", "Parent" : "21"},
	{"ID" : "93", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.p_c1_U", "Parent" : "21"},
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.ko_2_c_U", "Parent" : "21"},
	{"ID" : "95", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.co_1_c_U", "Parent" : "21"},
	{"ID" : "96", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.co_1_c2_U", "Parent" : "21"},
	{"ID" : "97", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.r_c_U", "Parent" : "21"},
	{"ID" : "98", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.r_c3_U", "Parent" : "21"},
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.s_c_U", "Parent" : "21"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.s_c4_U", "Parent" : "21"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.p_c5_U", "Parent" : "21"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.p_c6_U", "Parent" : "21"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.p_c7_U", "Parent" : "21"},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.ko_2_c8_U", "Parent" : "21"},
	{"ID" : "105", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.r_c9_U", "Parent" : "21"},
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.s_c10_U", "Parent" : "21"},
	{"ID" : "107", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_0_U", "Parent" : "21"},
	{"ID" : "108", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_1_U", "Parent" : "21"},
	{"ID" : "109", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_2_U", "Parent" : "21"},
	{"ID" : "110", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_3_U", "Parent" : "21"},
	{"ID" : "111", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_0_U", "Parent" : "21"},
	{"ID" : "112", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_1_U", "Parent" : "21"},
	{"ID" : "113", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_2_U", "Parent" : "21"},
	{"ID" : "114", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_3_U", "Parent" : "21"},
	{"ID" : "115", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_0_U", "Parent" : "21"},
	{"ID" : "116", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_1_U", "Parent" : "21"},
	{"ID" : "117", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_2_U", "Parent" : "21"},
	{"ID" : "118", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_3_U", "Parent" : "21"},
	{"ID" : "119", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_0_U", "Parent" : "21"},
	{"ID" : "120", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_1_U", "Parent" : "21"},
	{"ID" : "121", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_2_U", "Parent" : "21"},
	{"ID" : "122", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc16_fu_522.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc14_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_3_U", "Parent" : "21"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U282", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U283", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U284", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_32ns_62_1_1_U285", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U286", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_32ns_62_1_1_U287", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_32ns_62_1_1_U288", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_9ns_9_4_1_U289", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10s_10s_10ns_10_4_1_U290", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_9s_9s_9ns_9_4_1_U291", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Conv_sysarr {
		bias_in_V {Type I LastRead 6 FirstWrite -1}
		weight_in_V {Type I LastRead 11 FirstWrite -1}
		data_in_V {Type I LastRead 13 FirstWrite -1}
		conv_out_V {Type O LastRead -1 FirstWrite 17}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc16 {
		div30_cast124 {Type I LastRead 0 FirstWrite -1}
		div76_cast125 {Type I LastRead 0 FirstWrite -1}
		RS {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		output_l1_0 {Type O LastRead -1 FirstWrite 2}
		output_l1_1 {Type O LastRead -1 FirstWrite 2}
		output_l1_2 {Type O LastRead -1 FirstWrite 2}
		output_l1_3 {Type O LastRead -1 FirstWrite 2}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc15 {
		div76_cast125 {Type I LastRead 0 FirstWrite -1}
		RS {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		output_l1_0 {Type O LastRead -1 FirstWrite 2}
		output_l1_1 {Type O LastRead -1 FirstWrite 2}
		output_l1_2 {Type O LastRead -1 FirstWrite 2}
		output_l1_3 {Type O LastRead -1 FirstWrite 2}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc14 {
		RS {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		output_l1_0 {Type O LastRead -1 FirstWrite 2}
		output_l1_1 {Type O LastRead -1 FirstWrite 2}
		output_l1_2 {Type O LastRead -1 FirstWrite 2}
		output_l1_3 {Type O LastRead -1 FirstWrite 2}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc {
		RS {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		output_l1_0 {Type O LastRead -1 FirstWrite 2}
		output_l1_1 {Type O LastRead -1 FirstWrite 2}
		output_l1_2 {Type O LastRead -1 FirstWrite 2}
		output_l1_3 {Type O LastRead -1 FirstWrite 2}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S {
		weight_l2_0 {Type I LastRead 4 FirstWrite -1}
		weight_l2_1 {Type I LastRead 4 FirstWrite -1}
		weight_l2_2 {Type I LastRead 4 FirstWrite -1}
		weight_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		output_l1_0 {Type O LastRead -1 FirstWrite 2}
		output_l1_1 {Type O LastRead -1 FirstWrite 2}
		output_l1_2 {Type O LastRead -1 FirstWrite 2}
		output_l1_3 {Type O LastRead -1 FirstWrite 2}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_entry20 {
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
		p_out7 {Type O LastRead -1 FirstWrite 0}}
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
		ko_2_out {Type O LastRead -1 FirstWrite 0}
		r_out {Type O LastRead -1 FirstWrite 0}
		s_out {Type O LastRead -1 FirstWrite 0}}
	runL2toL1 {
		data_l1buf_017 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_118 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_219 {Type O LastRead -1 FirstWrite 5}
		data_l1buf_320 {Type O LastRead -1 FirstWrite 5}
		data_l2_0 {Type I LastRead 4 FirstWrite -1}
		data_l2_1 {Type I LastRead 4 FirstWrite -1}
		data_l2_2 {Type I LastRead 4 FirstWrite -1}
		data_l2_3 {Type I LastRead 4 FirstWrite -1}
		empty_16 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}}
	runSysArr {
		weight_regfile_0_0_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_0_1_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_0_2_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_0_3_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_1_0_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_1_1_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_1_2_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_1_3_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_2_0_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_2_1_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_2_2_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_2_3_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_3_0_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_3_1_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_3_2_read {Type I LastRead 0 FirstWrite -1}
		weight_regfile_3_3_read {Type I LastRead 0 FirstWrite -1}
		data_l1buf_0 {Type I LastRead 1 FirstWrite -1}
		data_l1buf_1 {Type I LastRead 1 FirstWrite -1}
		data_l1buf_2 {Type I LastRead 1 FirstWrite -1}
		data_l1buf_3 {Type I LastRead 1 FirstWrite -1}
		output_l1_pass_0 {Type O LastRead -1 FirstWrite 2}
		output_l1_pass_1 {Type O LastRead -1 FirstWrite 2}
		output_l1_pass_2 {Type O LastRead -1 FirstWrite 2}
		output_l1_pass_3 {Type O LastRead -1 FirstWrite 2}
		empty {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3247", "Max" : "3247"}
	, {"Name" : "Interval", "Min" : "3248", "Max" : "3248"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	bias_in_V { ap_fifo {  { bias_in_V_dout fifo_data 0 256 }  { bias_in_V_empty_n fifo_status 0 1 }  { bias_in_V_read fifo_update 1 1 } } }
	weight_in_V { ap_fifo {  { weight_in_V_dout fifo_data 0 256 }  { weight_in_V_empty_n fifo_status 0 1 }  { weight_in_V_read fifo_update 1 1 } } }
	data_in_V { ap_fifo {  { data_in_V_dout fifo_data 0 256 }  { data_in_V_empty_n fifo_status 0 1 }  { data_in_V_read fifo_update 1 1 } } }
	conv_out_V { ap_fifo {  { conv_out_V_din fifo_data 1 256 }  { conv_out_V_full_n fifo_status 0 1 }  { conv_out_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	bias_in_V { fifo_read 9 no_conditional }
	weight_in_V { fifo_read 144 no_conditional }
	data_in_V { fifo_read 81 no_conditional }
	conv_out_V { fifo_write 196 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
