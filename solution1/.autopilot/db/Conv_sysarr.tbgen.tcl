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
	{ param_in_V int 256 regular {fifo 0 volatile }  }
	{ bias_in_V int 256 regular {fifo 0 volatile }  }
	{ weight_in_V int 256 regular {fifo 0 volatile }  }
	{ data_in_V int 256 regular {fifo 0 volatile }  }
	{ conv_out_V int 256 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "param_in_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "param_in.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "bias_in_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "bias_in.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "weight_in_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "weight_in.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "data_in.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "conv_out_V", "interface" : "fifo", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":255,"cElement": [{"cName": "conv_out.V","cData": "int256","bit_use": { "low": 0,"up": 255},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ param_in_V_dout sc_in sc_lv 256 signal 0 } 
	{ param_in_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ param_in_V_read sc_out sc_logic 1 signal 0 } 
	{ bias_in_V_dout sc_in sc_lv 256 signal 1 } 
	{ bias_in_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ bias_in_V_read sc_out sc_logic 1 signal 1 } 
	{ weight_in_V_dout sc_in sc_lv 256 signal 2 } 
	{ weight_in_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ weight_in_V_read sc_out sc_logic 1 signal 2 } 
	{ data_in_V_dout sc_in sc_lv 256 signal 3 } 
	{ data_in_V_empty_n sc_in sc_logic 1 signal 3 } 
	{ data_in_V_read sc_out sc_logic 1 signal 3 } 
	{ conv_out_V_din sc_out sc_lv 256 signal 4 } 
	{ conv_out_V_full_n sc_in sc_logic 1 signal 4 } 
	{ conv_out_V_write sc_out sc_logic 1 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "param_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "param_in_V", "role": "dout" }} , 
 	{ "name": "param_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "param_in_V", "role": "empty_n" }} , 
 	{ "name": "param_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "param_in_V", "role": "read" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162"],
		"CDFG" : "Conv_sysarr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_dataflow_parent_loop_proc19_fu_530"}],
		"Port" : [
			{"Name" : "param_in_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "param_in_V_blk_n", "Type" : "RtlSignal"}]},
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
					{"ID" : "17", "SubInstance" : "grp_dataflow_parent_loop_proc19_fu_530", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dataflow_parent_loop_proc19_fu_530", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dataflow_parent_loop_proc19_fu_530", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_dataflow_parent_loop_proc19_fu_530", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_l2_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_l2_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_l2_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bias_l2_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_l2_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_l2_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_l2_2_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.weight_l2_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l2_0_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l2_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l2_2_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l2_3_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l2_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l2_1_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l2_2_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l2_3_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "dataflow_parent_loop_proc19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "18", "Name" : "dataflow_parent_loop_proc18_U0"}],
		"OutputProcess" : [
			{"ID" : "18", "Name" : "dataflow_parent_loop_proc18_U0"}],
		"Port" : [
			{"Name" : "div55_cast126", "Type" : "None", "Direction" : "I"},
			{"Name" : "div101_cast127", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_H", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_W", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0", "Parent" : "17", "Child" : ["19"],
		"CDFG" : "dataflow_parent_loop_proc18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "19", "Name" : "dataflow_parent_loop_proc17_U0"}],
		"OutputProcess" : [
			{"ID" : "19", "Name" : "dataflow_parent_loop_proc17_U0"}],
		"Port" : [
			{"Name" : "div101_cast127", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_H", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_W", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0", "Parent" : "18", "Child" : ["20"],
		"CDFG" : "dataflow_parent_loop_proc17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "20", "Name" : "dataflow_parent_loop_proc16_U0"}],
		"OutputProcess" : [
			{"ID" : "20", "Name" : "dataflow_parent_loop_proc16_U0"}],
		"Port" : [
			{"Name" : "TILES_H", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_W", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "20", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0", "Parent" : "19", "Child" : ["21"],
		"CDFG" : "dataflow_parent_loop_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "21", "Name" : "dataflow_parent_loop_proc15_U0"}],
		"OutputProcess" : [
			{"ID" : "21", "Name" : "dataflow_parent_loop_proc15_U0"}],
		"Port" : [
			{"Name" : "TILES_W", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "21", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "21", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0", "Parent" : "20", "Child" : ["22"],
		"CDFG" : "dataflow_parent_loop_proc15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "22", "Name" : "dataflow_parent_loop_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "22", "Name" : "dataflow_parent_loop_proc_U0"}],
		"Port" : [
			{"Name" : "TILES_R", "Type" : "None", "Direction" : "I"},
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "dataflow_parent_loop_proc_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0", "Parent" : "21", "Child" : ["23"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "23", "Name" : "dataflow_in_loop_LOOP_S_OUTER_U0"}],
		"OutputProcess" : [
			{"ID" : "23", "Name" : "dataflow_in_loop_LOOP_S_OUTER_U0"}],
		"Port" : [
			{"Name" : "TILES_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "23", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0", "Parent" : "22", "Child" : ["24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "70", "77", "100", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148"],
		"CDFG" : "dataflow_in_loop_LOOP_S_OUTER",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "32", "Name" : "dataflow_in_loop_LOOP_S_OUTER_entry24_U0"},
			{"ID" : "33", "Name" : "runWeight2Reg_U0"},
			{"ID" : "70", "Name" : "runDataL2toL1_U0"}],
		"OutputProcess" : [
			{"ID" : "100", "Name" : "runOutputL1toL2_U0"}],
		"Port" : [
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "co_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "so", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "70", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_3"}]},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "100", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_3"}]},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_3"}]},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_2"}]},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_1"}]},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "runSysArr_U0", "Port" : "output_l1_local_0"}]}]},
	{"ID" : "24", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_0_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_1_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_2_U", "Parent" : "23"},
	{"ID" : "27", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_3_U", "Parent" : "23"},
	{"ID" : "28", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_0_U", "Parent" : "23"},
	{"ID" : "29", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_1_U", "Parent" : "23"},
	{"ID" : "30", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_2_U", "Parent" : "23"},
	{"ID" : "31", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_3_U", "Parent" : "23"},
	{"ID" : "32", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry24_U0", "Parent" : "23",
		"CDFG" : "dataflow_in_loop_LOOP_S_OUTER_entry24",
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
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "so", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "107", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "108", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "109", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "110", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "111", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "112", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "113", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "33", "DependentChan" : "114", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "115", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "116", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "117", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "118", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "119", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "120", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "121", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_out9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "122", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "123", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_out10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "70", "DependentChan" : "124", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "125", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "126", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "127", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "p_out14_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "33", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0", "Parent" : "23", "Child" : ["34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "runWeight2Reg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
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
			{"Name" : "empty_19", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "107", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_19_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "108", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "109", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "110", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "112", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "114", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "128", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_2_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "129", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "130", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "34", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_20s_20s_20_1_1_U36", "Parent" : "33"},
	{"ID" : "35", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_20s_20s_20_1_1_U37", "Parent" : "33"},
	{"ID" : "36", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_20s_20s_20_1_1_U38", "Parent" : "33"},
	{"ID" : "37", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U39", "Parent" : "33"},
	{"ID" : "38", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U40", "Parent" : "33"},
	{"ID" : "39", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U41", "Parent" : "33"},
	{"ID" : "40", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U42", "Parent" : "33"},
	{"ID" : "41", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U43", "Parent" : "33"},
	{"ID" : "42", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U44", "Parent" : "33"},
	{"ID" : "43", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U45", "Parent" : "33"},
	{"ID" : "44", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U46", "Parent" : "33"},
	{"ID" : "45", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U47", "Parent" : "33"},
	{"ID" : "46", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U48", "Parent" : "33"},
	{"ID" : "47", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U49", "Parent" : "33"},
	{"ID" : "48", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U50", "Parent" : "33"},
	{"ID" : "49", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U51", "Parent" : "33"},
	{"ID" : "50", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U52", "Parent" : "33"},
	{"ID" : "51", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U53", "Parent" : "33"},
	{"ID" : "52", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U54", "Parent" : "33"},
	{"ID" : "53", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U55", "Parent" : "33"},
	{"ID" : "54", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U56", "Parent" : "33"},
	{"ID" : "55", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U57", "Parent" : "33"},
	{"ID" : "56", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U58", "Parent" : "33"},
	{"ID" : "57", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U59", "Parent" : "33"},
	{"ID" : "58", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U60", "Parent" : "33"},
	{"ID" : "59", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U61", "Parent" : "33"},
	{"ID" : "60", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U62", "Parent" : "33"},
	{"ID" : "61", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U63", "Parent" : "33"},
	{"ID" : "62", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U64", "Parent" : "33"},
	{"ID" : "63", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U65", "Parent" : "33"},
	{"ID" : "64", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U66", "Parent" : "33"},
	{"ID" : "65", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U67", "Parent" : "33"},
	{"ID" : "66", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U68", "Parent" : "33"},
	{"ID" : "67", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U69", "Parent" : "33"},
	{"ID" : "68", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U70", "Parent" : "33"},
	{"ID" : "69", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U71", "Parent" : "33"},
	{"ID" : "70", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0", "Parent" : "23", "Child" : ["71", "72", "73", "74", "75", "76"],
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
			{"Name" : "data_l1_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "24"},
			{"Name" : "data_l1_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "25"},
			{"Name" : "data_l1_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "26"},
			{"Name" : "data_l1_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "77", "DependentChan" : "27"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "116", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_25_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_26", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "118", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_26_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "111", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "120", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "122", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "113", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "115", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "124", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "71", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_20s_20s_20_1_1_U91", "Parent" : "70"},
	{"ID" : "72", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_20s_20s_20_1_1_U92", "Parent" : "70"},
	{"ID" : "73", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_20s_20s_20_1_1_U93", "Parent" : "70"},
	{"ID" : "74", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_32ns_32ns_64_1_1_U94", "Parent" : "70"},
	{"ID" : "75", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_20s_20s_20_1_1_U95", "Parent" : "70"},
	{"ID" : "76", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_8s_8s_8ns_8_4_1_U96", "Parent" : "70"},
	{"ID" : "77", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0", "Parent" : "23", "Child" : ["78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99"],
		"CDFG" : "runSysArr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "131", "DependentChanDepth" : "2"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "132", "DependentChanDepth" : "2"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "133", "DependentChanDepth" : "2"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "134", "DependentChanDepth" : "2"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "135", "DependentChanDepth" : "2"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "136", "DependentChanDepth" : "2"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "137", "DependentChanDepth" : "2"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "138", "DependentChanDepth" : "2"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "139", "DependentChanDepth" : "2"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "140", "DependentChanDepth" : "2"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "141", "DependentChanDepth" : "2"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "142", "DependentChanDepth" : "2"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "143", "DependentChanDepth" : "2"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "144", "DependentChanDepth" : "2"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "145", "DependentChanDepth" : "2"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "146", "DependentChanDepth" : "2"},
			{"Name" : "data_l1_017", "Type" : "Memory", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "24"},
			{"Name" : "data_l1_118", "Type" : "Memory", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "25"},
			{"Name" : "data_l1_219", "Type" : "Memory", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "26"},
			{"Name" : "data_l1_320", "Type" : "Memory", "Direction" : "I", "DependentProc" : "70", "DependentChan" : "27"},
			{"Name" : "output_l1_021", "Type" : "Memory", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "28"},
			{"Name" : "output_l1_122", "Type" : "Memory", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "29"},
			{"Name" : "output_l1_223", "Type" : "Memory", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "30"},
			{"Name" : "output_l1_324", "Type" : "Memory", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "31"},
			{"Name" : "empty_20", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "119", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_20_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_21", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "117", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_21_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_22", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "125", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_22_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "126", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "130", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "129", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "147", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "100", "DependentChan" : "148", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "78", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.output_l1_local_3_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.output_l1_local_2_U", "Parent" : "77"},
	{"ID" : "80", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.output_l1_local_1_U", "Parent" : "77"},
	{"ID" : "81", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.output_l1_local_0_U", "Parent" : "77"},
	{"ID" : "82", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_32s_32s_32_1_1_U115", "Parent" : "77"},
	{"ID" : "83", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_32ns_32ns_64_1_1_U116", "Parent" : "77"},
	{"ID" : "84", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U117", "Parent" : "77"},
	{"ID" : "85", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U118", "Parent" : "77"},
	{"ID" : "86", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U119", "Parent" : "77"},
	{"ID" : "87", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U120", "Parent" : "77"},
	{"ID" : "88", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U121", "Parent" : "77"},
	{"ID" : "89", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U122", "Parent" : "77"},
	{"ID" : "90", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U123", "Parent" : "77"},
	{"ID" : "91", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U124", "Parent" : "77"},
	{"ID" : "92", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U125", "Parent" : "77"},
	{"ID" : "93", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U126", "Parent" : "77"},
	{"ID" : "94", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U127", "Parent" : "77"},
	{"ID" : "95", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U128", "Parent" : "77"},
	{"ID" : "96", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U129", "Parent" : "77"},
	{"ID" : "97", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U130", "Parent" : "77"},
	{"ID" : "98", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U131", "Parent" : "77"},
	{"ID" : "99", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U132", "Parent" : "77"},
	{"ID" : "100", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0", "Parent" : "23", "Child" : ["101", "102", "103", "104", "105", "106"],
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
			{"Name" : "output_l1_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "28"},
			{"Name" : "output_l1_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "29"},
			{"Name" : "output_l1_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "30"},
			{"Name" : "output_l1_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "31"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty_23", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "148", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_23_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty_24", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "77", "DependentChan" : "147", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "empty_24_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_2", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "33", "DependentChan" : "128", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "121", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "123", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "32", "DependentChan" : "127", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "101", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_20s_20s_20_1_1_U170", "Parent" : "100"},
	{"ID" : "102", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_20s_20s_20_1_1_U171", "Parent" : "100"},
	{"ID" : "103", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_20s_20s_20_1_1_U172", "Parent" : "100"},
	{"ID" : "104", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_32ns_32ns_64_1_1_U173", "Parent" : "100"},
	{"ID" : "105", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_20s_20s_20_1_1_U174", "Parent" : "100"},
	{"ID" : "106", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mac_muladd_8s_8s_8ns_8_4_1_U175", "Parent" : "100"},
	{"ID" : "107", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c_U", "Parent" : "23"},
	{"ID" : "108", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c1_U", "Parent" : "23"},
	{"ID" : "109", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ko_2_c_U", "Parent" : "23"},
	{"ID" : "110", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_1_c_U", "Parent" : "23"},
	{"ID" : "111", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_1_c2_U", "Parent" : "23"},
	{"ID" : "112", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c_U", "Parent" : "23"},
	{"ID" : "113", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c3_U", "Parent" : "23"},
	{"ID" : "114", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c_U", "Parent" : "23"},
	{"ID" : "115", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c4_U", "Parent" : "23"},
	{"ID" : "116", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c5_U", "Parent" : "23"},
	{"ID" : "117", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c6_U", "Parent" : "23"},
	{"ID" : "118", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c7_U", "Parent" : "23"},
	{"ID" : "119", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c8_U", "Parent" : "23"},
	{"ID" : "120", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ho_c_U", "Parent" : "23"},
	{"ID" : "121", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ho_c9_U", "Parent" : "23"},
	{"ID" : "122", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.wo_c_U", "Parent" : "23"},
	{"ID" : "123", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.wo_c10_U", "Parent" : "23"},
	{"ID" : "124", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c11_U", "Parent" : "23"},
	{"ID" : "125", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c12_U", "Parent" : "23"},
	{"ID" : "126", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c13_U", "Parent" : "23"},
	{"ID" : "127", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c14_U", "Parent" : "23"},
	{"ID" : "128", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ko_2_c15_U", "Parent" : "23"},
	{"ID" : "129", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c16_U", "Parent" : "23"},
	{"ID" : "130", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c17_U", "Parent" : "23"},
	{"ID" : "131", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_0_U", "Parent" : "23"},
	{"ID" : "132", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_1_U", "Parent" : "23"},
	{"ID" : "133", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_2_U", "Parent" : "23"},
	{"ID" : "134", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_3_U", "Parent" : "23"},
	{"ID" : "135", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_0_U", "Parent" : "23"},
	{"ID" : "136", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_1_U", "Parent" : "23"},
	{"ID" : "137", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_2_U", "Parent" : "23"},
	{"ID" : "138", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_3_U", "Parent" : "23"},
	{"ID" : "139", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_0_U", "Parent" : "23"},
	{"ID" : "140", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_1_U", "Parent" : "23"},
	{"ID" : "141", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_2_U", "Parent" : "23"},
	{"ID" : "142", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_3_U", "Parent" : "23"},
	{"ID" : "143", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_0_U", "Parent" : "23"},
	{"ID" : "144", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_1_U", "Parent" : "23"},
	{"ID" : "145", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_2_U", "Parent" : "23"},
	{"ID" : "146", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_3_U", "Parent" : "23"},
	{"ID" : "147", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c18_U", "Parent" : "23"},
	{"ID" : "148", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc19_fu_530.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.p_c19_U", "Parent" : "23"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32s_32ns_32_36_seq_1_U416", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32s_32ns_32_36_seq_1_U417", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32s_32ns_32_36_seq_1_U418", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.udiv_32s_32ns_32_36_seq_1_U419", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U420", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U421", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_32ns_62_1_1_U422", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_20s_20s_20_1_1_U423", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U424", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_32ns_62_1_1_U425", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_20s_20s_20_1_1_U426", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U427", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_30ns_32ns_62_1_1_U428", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_20s_20s_20_1_1_U429", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Conv_sysarr {
		param_in_V {Type I LastRead 8 FirstWrite -1}
		bias_in_V {Type I LastRead 45 FirstWrite -1}
		weight_in_V {Type I LastRead 48 FirstWrite -1}
		data_in_V {Type I LastRead 50 FirstWrite -1}
		conv_out_V {Type O LastRead -1 FirstWrite 53}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc19 {
		div55_cast126 {Type I LastRead 0 FirstWrite -1}
		div101_cast127 {Type I LastRead 0 FirstWrite -1}
		TILES_H {Type I LastRead 0 FirstWrite -1}
		TILES_W {Type I LastRead 0 FirstWrite -1}
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 2 FirstWrite -1}
		weight_l2_1 {Type I LastRead 2 FirstWrite -1}
		weight_l2_2 {Type I LastRead 2 FirstWrite -1}
		weight_l2_3 {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 3 FirstWrite -1}
		data_l2_1 {Type I LastRead 3 FirstWrite -1}
		data_l2_2 {Type I LastRead 3 FirstWrite -1}
		data_l2_3 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc18 {
		div101_cast127 {Type I LastRead 0 FirstWrite -1}
		TILES_H {Type I LastRead 0 FirstWrite -1}
		TILES_W {Type I LastRead 0 FirstWrite -1}
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 2 FirstWrite -1}
		weight_l2_1 {Type I LastRead 2 FirstWrite -1}
		weight_l2_2 {Type I LastRead 2 FirstWrite -1}
		weight_l2_3 {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 3 FirstWrite -1}
		data_l2_1 {Type I LastRead 3 FirstWrite -1}
		data_l2_2 {Type I LastRead 3 FirstWrite -1}
		data_l2_3 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc17 {
		TILES_H {Type I LastRead 0 FirstWrite -1}
		TILES_W {Type I LastRead 0 FirstWrite -1}
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 2 FirstWrite -1}
		weight_l2_1 {Type I LastRead 2 FirstWrite -1}
		weight_l2_2 {Type I LastRead 2 FirstWrite -1}
		weight_l2_3 {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 3 FirstWrite -1}
		data_l2_1 {Type I LastRead 3 FirstWrite -1}
		data_l2_2 {Type I LastRead 3 FirstWrite -1}
		data_l2_3 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc16 {
		TILES_W {Type I LastRead 0 FirstWrite -1}
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 2 FirstWrite -1}
		weight_l2_1 {Type I LastRead 2 FirstWrite -1}
		weight_l2_2 {Type I LastRead 2 FirstWrite -1}
		weight_l2_3 {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 3 FirstWrite -1}
		data_l2_1 {Type I LastRead 3 FirstWrite -1}
		data_l2_2 {Type I LastRead 3 FirstWrite -1}
		data_l2_3 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc15 {
		TILES_R {Type I LastRead 0 FirstWrite -1}
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 2 FirstWrite -1}
		weight_l2_1 {Type I LastRead 2 FirstWrite -1}
		weight_l2_2 {Type I LastRead 2 FirstWrite -1}
		weight_l2_3 {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 3 FirstWrite -1}
		data_l2_1 {Type I LastRead 3 FirstWrite -1}
		data_l2_2 {Type I LastRead 3 FirstWrite -1}
		data_l2_3 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc {
		TILES_S {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 2 FirstWrite -1}
		weight_l2_1 {Type I LastRead 2 FirstWrite -1}
		weight_l2_2 {Type I LastRead 2 FirstWrite -1}
		weight_l2_3 {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 3 FirstWrite -1}
		data_l2_1 {Type I LastRead 3 FirstWrite -1}
		data_l2_2 {Type I LastRead 3 FirstWrite -1}
		data_l2_3 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_OUTER {
		weight_l2_0 {Type I LastRead 2 FirstWrite -1}
		weight_l2_1 {Type I LastRead 2 FirstWrite -1}
		weight_l2_2 {Type I LastRead 2 FirstWrite -1}
		weight_l2_3 {Type I LastRead 2 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 3 FirstWrite -1}
		data_l2_1 {Type I LastRead 3 FirstWrite -1}
		data_l2_2 {Type I LastRead 3 FirstWrite -1}
		data_l2_3 {Type I LastRead 3 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 5}
		output_l2_1 {Type O LastRead -1 FirstWrite 5}
		output_l2_2 {Type O LastRead -1 FirstWrite 5}
		output_l2_3 {Type O LastRead -1 FirstWrite 5}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_OUTER_entry24 {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		ko_2_out {Type O LastRead -1 FirstWrite 0}
		co_1_out {Type O LastRead -1 FirstWrite 0}
		co_1_out2 {Type O LastRead -1 FirstWrite 0}
		ro_out {Type O LastRead -1 FirstWrite 0}
		ro_out3 {Type O LastRead -1 FirstWrite 0}
		so_out {Type O LastRead -1 FirstWrite 0}
		so_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}
		p_out8 {Type O LastRead -1 FirstWrite 0}
		ho_out {Type O LastRead -1 FirstWrite 0}
		ho_out9 {Type O LastRead -1 FirstWrite 0}
		wo_out {Type O LastRead -1 FirstWrite 0}
		wo_out10 {Type O LastRead -1 FirstWrite 0}
		p_out11 {Type O LastRead -1 FirstWrite 0}
		p_out12 {Type O LastRead -1 FirstWrite 0}
		p_out13 {Type O LastRead -1 FirstWrite 0}
		p_out14 {Type O LastRead -1 FirstWrite 0}}
	runWeight2Reg {
		weight_l2_0 {Type I LastRead 2 FirstWrite -1}
		weight_l2_1 {Type I LastRead 2 FirstWrite -1}
		weight_l2_2 {Type I LastRead 2 FirstWrite -1}
		weight_l2_3 {Type I LastRead 2 FirstWrite -1}
		empty_19 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		ko_2 {Type I LastRead 0 FirstWrite -1}
		co_1 {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		ko_2_out {Type O LastRead -1 FirstWrite 0}
		ro_out {Type O LastRead -1 FirstWrite 0}
		so_out {Type O LastRead -1 FirstWrite 0}}
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
		empty {Type I LastRead 0 FirstWrite -1}}
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
		data_l1_017 {Type I LastRead 2 FirstWrite -1}
		data_l1_118 {Type I LastRead 2 FirstWrite -1}
		data_l1_219 {Type I LastRead 2 FirstWrite -1}
		data_l1_320 {Type I LastRead 2 FirstWrite -1}
		output_l1_021 {Type O LastRead -1 FirstWrite 3}
		output_l1_122 {Type O LastRead -1 FirstWrite 3}
		output_l1_223 {Type O LastRead -1 FirstWrite 3}
		output_l1_324 {Type O LastRead -1 FirstWrite 3}
		empty_20 {Type I LastRead 0 FirstWrite -1}
		empty_21 {Type I LastRead 0 FirstWrite -1}
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
]}

set Spec2ImplPortList { 
	param_in_V { ap_fifo {  { param_in_V_dout fifo_data 0 256 }  { param_in_V_empty_n fifo_status 0 1 }  { param_in_V_read fifo_update 1 1 } } }
	bias_in_V { ap_fifo {  { bias_in_V_dout fifo_data 0 256 }  { bias_in_V_empty_n fifo_status 0 1 }  { bias_in_V_read fifo_update 1 1 } } }
	weight_in_V { ap_fifo {  { weight_in_V_dout fifo_data 0 256 }  { weight_in_V_empty_n fifo_status 0 1 }  { weight_in_V_read fifo_update 1 1 } } }
	data_in_V { ap_fifo {  { data_in_V_dout fifo_data 0 256 }  { data_in_V_empty_n fifo_status 0 1 }  { data_in_V_read fifo_update 1 1 } } }
	conv_out_V { ap_fifo {  { conv_out_V_din fifo_data 1 256 }  { conv_out_V_full_n fifo_status 0 1 }  { conv_out_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	param_in_V { fifo_read 9 no_conditional }
	bias_in_V { fifo_read 4 no_conditional }
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
