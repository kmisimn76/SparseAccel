set moduleName Conv_sysarr_dbbuf
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
set C_modelName {Conv_sysarr_dbbuf}
set C_modelType { void 0 }
set C_modelArgList {
	{ bias_in_V int 64 regular {fifo 0 volatile }  }
	{ weight_in_V int 64 regular {fifo 0 volatile }  }
	{ data_in_V int 64 regular {fifo 0 volatile }  }
	{ conv_out_V int 64 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "bias_in_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "bias_in.V","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "weight_in_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "weight_in.V","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "data_in_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "data_in.V","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} , 
 	{ "Name" : "conv_out_V", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "conv_out.V","cData": "long","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 1,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bias_in_V_dout sc_in sc_lv 64 signal 0 } 
	{ bias_in_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ bias_in_V_read sc_out sc_logic 1 signal 0 } 
	{ weight_in_V_dout sc_in sc_lv 64 signal 1 } 
	{ weight_in_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ weight_in_V_read sc_out sc_logic 1 signal 1 } 
	{ data_in_V_dout sc_in sc_lv 64 signal 2 } 
	{ data_in_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ data_in_V_read sc_out sc_logic 1 signal 2 } 
	{ conv_out_V_din sc_out sc_lv 64 signal 3 } 
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
 	{ "name": "bias_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bias_in_V", "role": "dout" }} , 
 	{ "name": "bias_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_in_V", "role": "empty_n" }} , 
 	{ "name": "bias_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bias_in_V", "role": "read" }} , 
 	{ "name": "weight_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weight_in_V", "role": "dout" }} , 
 	{ "name": "weight_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_in_V", "role": "empty_n" }} , 
 	{ "name": "weight_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "weight_in_V", "role": "read" }} , 
 	{ "name": "data_in_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in_V", "role": "dout" }} , 
 	{ "name": "data_in_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V", "role": "empty_n" }} , 
 	{ "name": "data_in_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_in_V", "role": "read" }} , 
 	{ "name": "conv_out_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv_out_V", "role": "din" }} , 
 	{ "name": "conv_out_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V", "role": "full_n" }} , 
 	{ "name": "conv_out_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv_out_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53"],
		"CDFG" : "Conv_sysarr_dbbuf",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12104", "EstimateLatencyMax" : "12104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state60_pp5_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter2", "FromInitialOperation" : "ap_enable_operation_1303", "FromInitialSV" : "30", "FromFinalState" : "ap_enable_state61_pp5_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter3", "FromFinalOperation" : "ap_enable_operation_1340", "FromFinalSV" : "31", "FromAddress" : "output_l1_3_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state65_pp5_iter7_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter7", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1490", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state65_pp5_iter7_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter7", "ToFinalOperation" : "ap_enable_operation_1490", "ToFinalSV" : "35", "ToAddress" : "output_l1_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "9", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:151:56)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state60_pp5_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter2", "FromInitialOperation" : "ap_enable_operation_1307", "FromInitialSV" : "30", "FromFinalState" : "ap_enable_state61_pp5_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter3", "FromFinalOperation" : "ap_enable_operation_1342", "FromFinalSV" : "31", "FromAddress" : "output_l1_2_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state65_pp5_iter7_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter7", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1499", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state65_pp5_iter7_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter7", "ToFinalOperation" : "ap_enable_operation_1499", "ToFinalSV" : "35", "ToAddress" : "output_l1_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "9", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:151:56)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state60_pp5_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter2", "FromInitialOperation" : "ap_enable_operation_1311", "FromInitialSV" : "30", "FromFinalState" : "ap_enable_state61_pp5_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter3", "FromFinalOperation" : "ap_enable_operation_1344", "FromFinalSV" : "31", "FromAddress" : "output_l1_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state65_pp5_iter7_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter7", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1508", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state65_pp5_iter7_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter7", "ToFinalOperation" : "ap_enable_operation_1508", "ToFinalSV" : "35", "ToAddress" : "output_l1_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "9", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:151:56)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state60_pp5_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter2", "FromInitialOperation" : "ap_enable_operation_1314", "FromInitialSV" : "30", "FromFinalState" : "ap_enable_state61_pp5_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter3", "FromFinalOperation" : "ap_enable_operation_1346", "FromFinalSV" : "31", "FromAddress" : "output_l1_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state65_pp5_iter7_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter7", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_1511", "ToInitialSV" : "35", "ToFinalState" : "ap_enable_state65_pp5_iter7_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter7", "ToFinalOperation" : "ap_enable_operation_1511", "ToFinalSV" : "35", "ToAddress" : "output_l1_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "9", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:151:56)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state65_pp5_iter7_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter7", "FromInitialOperation" : "ap_enable_operation_1490", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state65_pp5_iter7_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter7", "FromFinalOperation" : "ap_enable_operation_1490", "FromFinalSV" : "35", "FromAddress" : "output_l1_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state60_pp5_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp5_iter3", "ToInitialOperation" : "ap_enable_operation_1303", "ToInitialSV" : "30", "ToFinalState" : "ap_enable_state61_pp5_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter3", "ToFinalOperation" : "ap_enable_operation_1340", "ToFinalSV" : "31", "ToAddress" : "output_l1_3_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "9", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:151:56)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state60_pp5_iter2_stage0", "ap_enable_state61_pp5_iter3_stage0", "ap_enable_state65_pp5_iter7_stage0"]},
			{"FromInitialState" : "ap_enable_state65_pp5_iter7_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter7", "FromInitialOperation" : "ap_enable_operation_1499", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state65_pp5_iter7_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter7", "FromFinalOperation" : "ap_enable_operation_1499", "FromFinalSV" : "35", "FromAddress" : "output_l1_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state60_pp5_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp5_iter3", "ToInitialOperation" : "ap_enable_operation_1307", "ToInitialSV" : "30", "ToFinalState" : "ap_enable_state61_pp5_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter3", "ToFinalOperation" : "ap_enable_operation_1342", "ToFinalSV" : "31", "ToAddress" : "output_l1_2_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "9", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:151:56)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state60_pp5_iter2_stage0", "ap_enable_state61_pp5_iter3_stage0", "ap_enable_state65_pp5_iter7_stage0"]},
			{"FromInitialState" : "ap_enable_state65_pp5_iter7_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter7", "FromInitialOperation" : "ap_enable_operation_1508", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state65_pp5_iter7_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter7", "FromFinalOperation" : "ap_enable_operation_1508", "FromFinalSV" : "35", "FromAddress" : "output_l1_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state60_pp5_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp5_iter3", "ToInitialOperation" : "ap_enable_operation_1311", "ToInitialSV" : "30", "ToFinalState" : "ap_enable_state61_pp5_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter3", "ToFinalOperation" : "ap_enable_operation_1344", "ToFinalSV" : "31", "ToAddress" : "output_l1_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "9", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:151:56)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state60_pp5_iter2_stage0", "ap_enable_state61_pp5_iter3_stage0", "ap_enable_state65_pp5_iter7_stage0"]},
			{"FromInitialState" : "ap_enable_state65_pp5_iter7_stage0", "FromInitialIteration" : "ap_enable_reg_pp5_iter7", "FromInitialOperation" : "ap_enable_operation_1511", "FromInitialSV" : "35", "FromFinalState" : "ap_enable_state65_pp5_iter7_stage0", "FromFinalIteration" : "ap_enable_reg_pp5_iter7", "FromFinalOperation" : "ap_enable_operation_1511", "FromFinalSV" : "35", "FromAddress" : "output_l1_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state60_pp5_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp5_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp5_iter3", "ToInitialOperation" : "ap_enable_operation_1314", "ToInitialSV" : "30", "ToFinalState" : "ap_enable_state61_pp5_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp5_iter3", "ToFinalOperation" : "ap_enable_operation_1346", "ToFinalSV" : "31", "ToAddress" : "output_l1_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp5", "AddressWidth" : "9", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:151:56)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state60_pp5_iter2_stage0", "ap_enable_state61_pp5_iter3_stage0", "ap_enable_state65_pp5_iter7_stage0"]}],
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
					{"Name" : "conv_out_V_blk_n", "Type" : "RtlSignal"}]}]},
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
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l1_0_0_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l1_1_0_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l1_2_0_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.data_l1_3_0_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_0_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U1", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U2", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U3", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U4", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U5", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U6", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U7", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U8", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U9", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U10", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U11", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U12", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U13", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_464_8_1_1_U14", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_42_32_1_1_U15", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8ns_3ns_2ns_8_4_1_U16", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U17", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U18", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U19", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U20", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U21", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U22", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U23", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U24", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U25", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U26", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U27", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U28", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U29", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U30", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U31", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U32", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_7ns_3ns_6ns_8_4_1_U33", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Conv_sysarr_dbbuf {
		bias_in_V {Type I LastRead 6 FirstWrite -1}
		weight_in_V {Type I LastRead 8 FirstWrite -1}
		data_in_V {Type I LastRead 10 FirstWrite -1}
		conv_out_V {Type O LastRead -1 FirstWrite 16}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12104", "Max" : "12104"}
	, {"Name" : "Interval", "Min" : "12105", "Max" : "12105"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
	{"Pipeline" : "3", "EnableSignal" : "ap_enable_pp3"}
	{"Pipeline" : "4", "EnableSignal" : "ap_enable_pp4"}
	{"Pipeline" : "5", "EnableSignal" : "ap_enable_pp5"}
	{"Pipeline" : "6", "EnableSignal" : "ap_enable_pp6"}
]}

set Spec2ImplPortList { 
	bias_in_V { ap_fifo {  { bias_in_V_dout fifo_data 0 64 }  { bias_in_V_empty_n fifo_status 0 1 }  { bias_in_V_read fifo_update 1 1 } } }
	weight_in_V { ap_fifo {  { weight_in_V_dout fifo_data 0 64 }  { weight_in_V_empty_n fifo_status 0 1 }  { weight_in_V_read fifo_update 1 1 } } }
	data_in_V { ap_fifo {  { data_in_V_dout fifo_data 0 64 }  { data_in_V_empty_n fifo_status 0 1 }  { data_in_V_read fifo_update 1 1 } } }
	conv_out_V { ap_fifo {  { conv_out_V_din fifo_data 1 64 }  { conv_out_V_full_n fifo_status 0 1 }  { conv_out_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	bias_in_V { fifo_read 21 no_conditional }
	weight_in_V { fifo_read 576 no_conditional }
	data_in_V { fifo_read 324 no_conditional }
	conv_out_V { fifo_write 784 no_conditional }
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
