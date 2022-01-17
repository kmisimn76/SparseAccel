set moduleName runSysArr
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
set C_modelName {runSysArr}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 8 regular  }
	{ p_read1 int 8 regular  }
	{ p_read2 int 8 regular  }
	{ p_read3 int 8 regular  }
	{ p_read4 int 8 regular  }
	{ p_read5 int 8 regular  }
	{ p_read6 int 8 regular  }
	{ p_read7 int 8 regular  }
	{ p_read8 int 8 regular  }
	{ p_read9 int 8 regular  }
	{ p_read10 int 8 regular  }
	{ p_read11 int 8 regular  }
	{ p_read12 int 8 regular  }
	{ p_read13 int 8 regular  }
	{ p_read14 int 8 regular  }
	{ p_read15 int 8 regular  }
	{ data_l1buf_018 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l1buf_119 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l1buf_220 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ data_l1buf_321 int 8 regular {array 512 { 1 3 } 1 1 }  }
	{ output_l1_pass_0 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ output_l1_pass_1 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ output_l1_pass_2 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ output_l1_pass_3 int 32 regular {array 1024 { 0 3 } 0 1 }  }
	{ empty int 32 regular {fifo 0}  }
	{ s int 32 regular {fifo 0}  }
	{ r int 32 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l1buf_018", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l1buf_119", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l1buf_220", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_l1buf_321", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "output_l1_pass_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_pass_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_pass_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "output_l1_pass_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "empty", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "s", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "r", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 8 signal 0 } 
	{ p_read1 sc_in sc_lv 8 signal 1 } 
	{ p_read2 sc_in sc_lv 8 signal 2 } 
	{ p_read3 sc_in sc_lv 8 signal 3 } 
	{ p_read4 sc_in sc_lv 8 signal 4 } 
	{ p_read5 sc_in sc_lv 8 signal 5 } 
	{ p_read6 sc_in sc_lv 8 signal 6 } 
	{ p_read7 sc_in sc_lv 8 signal 7 } 
	{ p_read8 sc_in sc_lv 8 signal 8 } 
	{ p_read9 sc_in sc_lv 8 signal 9 } 
	{ p_read10 sc_in sc_lv 8 signal 10 } 
	{ p_read11 sc_in sc_lv 8 signal 11 } 
	{ p_read12 sc_in sc_lv 8 signal 12 } 
	{ p_read13 sc_in sc_lv 8 signal 13 } 
	{ p_read14 sc_in sc_lv 8 signal 14 } 
	{ p_read15 sc_in sc_lv 8 signal 15 } 
	{ data_l1buf_018_address0 sc_out sc_lv 9 signal 16 } 
	{ data_l1buf_018_ce0 sc_out sc_logic 1 signal 16 } 
	{ data_l1buf_018_q0 sc_in sc_lv 8 signal 16 } 
	{ data_l1buf_119_address0 sc_out sc_lv 9 signal 17 } 
	{ data_l1buf_119_ce0 sc_out sc_logic 1 signal 17 } 
	{ data_l1buf_119_q0 sc_in sc_lv 8 signal 17 } 
	{ data_l1buf_220_address0 sc_out sc_lv 9 signal 18 } 
	{ data_l1buf_220_ce0 sc_out sc_logic 1 signal 18 } 
	{ data_l1buf_220_q0 sc_in sc_lv 8 signal 18 } 
	{ data_l1buf_321_address0 sc_out sc_lv 9 signal 19 } 
	{ data_l1buf_321_ce0 sc_out sc_logic 1 signal 19 } 
	{ data_l1buf_321_q0 sc_in sc_lv 8 signal 19 } 
	{ output_l1_pass_0_address0 sc_out sc_lv 10 signal 20 } 
	{ output_l1_pass_0_ce0 sc_out sc_logic 1 signal 20 } 
	{ output_l1_pass_0_we0 sc_out sc_logic 1 signal 20 } 
	{ output_l1_pass_0_d0 sc_out sc_lv 32 signal 20 } 
	{ output_l1_pass_1_address0 sc_out sc_lv 10 signal 21 } 
	{ output_l1_pass_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ output_l1_pass_1_we0 sc_out sc_logic 1 signal 21 } 
	{ output_l1_pass_1_d0 sc_out sc_lv 32 signal 21 } 
	{ output_l1_pass_2_address0 sc_out sc_lv 10 signal 22 } 
	{ output_l1_pass_2_ce0 sc_out sc_logic 1 signal 22 } 
	{ output_l1_pass_2_we0 sc_out sc_logic 1 signal 22 } 
	{ output_l1_pass_2_d0 sc_out sc_lv 32 signal 22 } 
	{ output_l1_pass_3_address0 sc_out sc_lv 10 signal 23 } 
	{ output_l1_pass_3_ce0 sc_out sc_logic 1 signal 23 } 
	{ output_l1_pass_3_we0 sc_out sc_logic 1 signal 23 } 
	{ output_l1_pass_3_d0 sc_out sc_lv 32 signal 23 } 
	{ empty_dout sc_in sc_lv 32 signal 24 } 
	{ empty_empty_n sc_in sc_logic 1 signal 24 } 
	{ empty_read sc_out sc_logic 1 signal 24 } 
	{ s_dout sc_in sc_lv 32 signal 25 } 
	{ s_empty_n sc_in sc_logic 1 signal 25 } 
	{ s_read sc_out sc_logic 1 signal 25 } 
	{ r_dout sc_in sc_lv 32 signal 26 } 
	{ r_empty_n sc_in sc_logic 1 signal 26 } 
	{ r_read sc_out sc_logic 1 signal 26 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "data_l1buf_018_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_018", "role": "address0" }} , 
 	{ "name": "data_l1buf_018_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_018", "role": "ce0" }} , 
 	{ "name": "data_l1buf_018_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_018", "role": "q0" }} , 
 	{ "name": "data_l1buf_119_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_119", "role": "address0" }} , 
 	{ "name": "data_l1buf_119_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_119", "role": "ce0" }} , 
 	{ "name": "data_l1buf_119_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_119", "role": "q0" }} , 
 	{ "name": "data_l1buf_220_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_220", "role": "address0" }} , 
 	{ "name": "data_l1buf_220_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_220", "role": "ce0" }} , 
 	{ "name": "data_l1buf_220_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_220", "role": "q0" }} , 
 	{ "name": "data_l1buf_321_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data_l1buf_321", "role": "address0" }} , 
 	{ "name": "data_l1buf_321_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_l1buf_321", "role": "ce0" }} , 
 	{ "name": "data_l1buf_321_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_l1buf_321", "role": "q0" }} , 
 	{ "name": "output_l1_pass_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_l1_pass_0", "role": "address0" }} , 
 	{ "name": "output_l1_pass_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_0", "role": "ce0" }} , 
 	{ "name": "output_l1_pass_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_0", "role": "we0" }} , 
 	{ "name": "output_l1_pass_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_pass_0", "role": "d0" }} , 
 	{ "name": "output_l1_pass_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_l1_pass_1", "role": "address0" }} , 
 	{ "name": "output_l1_pass_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_1", "role": "ce0" }} , 
 	{ "name": "output_l1_pass_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_1", "role": "we0" }} , 
 	{ "name": "output_l1_pass_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_pass_1", "role": "d0" }} , 
 	{ "name": "output_l1_pass_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_l1_pass_2", "role": "address0" }} , 
 	{ "name": "output_l1_pass_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_2", "role": "ce0" }} , 
 	{ "name": "output_l1_pass_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_2", "role": "we0" }} , 
 	{ "name": "output_l1_pass_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_pass_2", "role": "d0" }} , 
 	{ "name": "output_l1_pass_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "output_l1_pass_3", "role": "address0" }} , 
 	{ "name": "output_l1_pass_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_3", "role": "ce0" }} , 
 	{ "name": "output_l1_pass_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "output_l1_pass_3", "role": "we0" }} , 
 	{ "name": "output_l1_pass_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "output_l1_pass_3", "role": "d0" }} , 
 	{ "name": "empty_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "empty", "role": "dout" }} , 
 	{ "name": "empty_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "empty_n" }} , 
 	{ "name": "empty_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "empty", "role": "read" }} , 
 	{ "name": "s_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "dout" }} , 
 	{ "name": "s_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "empty_n" }} , 
 	{ "name": "s_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "read" }} , 
 	{ "name": "r_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "r", "role": "dout" }} , 
 	{ "name": "r_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "empty_n" }} , 
 	{ "name": "r_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "r", "role": "read" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21"],
		"CDFG" : "runSysArr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "63",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2"},
			{"Name" : "data_l1buf_018", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_119", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_220", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "data_l1buf_321", "Type" : "Memory", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0"},
			{"Name" : "output_l1_pass_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l1_pass_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "empty_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "s", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "s_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "r", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "r_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l1_local_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l1_local_0", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_local_3_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_local_2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_local_1_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_l1_local_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U97", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U98", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U99", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U100", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U101", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U102", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U103", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U104", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U105", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U106", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U107", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U108", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U109", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U110", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U111", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U112", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_8s_8s_32ns_32_4_1_U113", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		data_l1buf_018 {Type I LastRead 1 FirstWrite -1}
		data_l1buf_119 {Type I LastRead 2 FirstWrite -1}
		data_l1buf_220 {Type I LastRead 3 FirstWrite -1}
		data_l1buf_321 {Type I LastRead 4 FirstWrite -1}
		output_l1_pass_0 {Type O LastRead -1 FirstWrite 8}
		output_l1_pass_1 {Type O LastRead -1 FirstWrite 8}
		output_l1_pass_2 {Type O LastRead -1 FirstWrite 8}
		output_l1_pass_3 {Type O LastRead -1 FirstWrite 8}
		empty {Type I LastRead 0 FirstWrite -1}
		s {Type I LastRead 0 FirstWrite -1}
		r {Type I LastRead 0 FirstWrite -1}
		output_l1_local_3 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_2 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_1 {Type IO LastRead -1 FirstWrite -1}
		output_l1_local_0 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "63"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 8 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 8 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 8 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 8 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 8 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 8 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 8 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 8 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 8 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 8 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 8 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 8 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 8 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 8 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 8 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 8 } } }
	data_l1buf_018 { ap_memory {  { data_l1buf_018_address0 mem_address 1 9 }  { data_l1buf_018_ce0 mem_ce 1 1 }  { data_l1buf_018_q0 mem_dout 0 8 } } }
	data_l1buf_119 { ap_memory {  { data_l1buf_119_address0 mem_address 1 9 }  { data_l1buf_119_ce0 mem_ce 1 1 }  { data_l1buf_119_q0 mem_dout 0 8 } } }
	data_l1buf_220 { ap_memory {  { data_l1buf_220_address0 mem_address 1 9 }  { data_l1buf_220_ce0 mem_ce 1 1 }  { data_l1buf_220_q0 mem_dout 0 8 } } }
	data_l1buf_321 { ap_memory {  { data_l1buf_321_address0 mem_address 1 9 }  { data_l1buf_321_ce0 mem_ce 1 1 }  { data_l1buf_321_q0 mem_dout 0 8 } } }
	output_l1_pass_0 { ap_memory {  { output_l1_pass_0_address0 mem_address 1 10 }  { output_l1_pass_0_ce0 mem_ce 1 1 }  { output_l1_pass_0_we0 mem_we 1 1 }  { output_l1_pass_0_d0 mem_din 1 32 } } }
	output_l1_pass_1 { ap_memory {  { output_l1_pass_1_address0 mem_address 1 10 }  { output_l1_pass_1_ce0 mem_ce 1 1 }  { output_l1_pass_1_we0 mem_we 1 1 }  { output_l1_pass_1_d0 mem_din 1 32 } } }
	output_l1_pass_2 { ap_memory {  { output_l1_pass_2_address0 mem_address 1 10 }  { output_l1_pass_2_ce0 mem_ce 1 1 }  { output_l1_pass_2_we0 mem_we 1 1 }  { output_l1_pass_2_d0 mem_din 1 32 } } }
	output_l1_pass_3 { ap_memory {  { output_l1_pass_3_address0 mem_address 1 10 }  { output_l1_pass_3_ce0 mem_ce 1 1 }  { output_l1_pass_3_we0 mem_we 1 1 }  { output_l1_pass_3_d0 mem_din 1 32 } } }
	empty { ap_fifo {  { empty_dout fifo_data 0 32 }  { empty_empty_n fifo_status 0 1 }  { empty_read fifo_update 1 1 } } }
	s { ap_fifo {  { s_dout fifo_data 0 32 }  { s_empty_n fifo_status 0 1 }  { s_read fifo_update 1 1 } } }
	r { ap_fifo {  { r_dout fifo_data 0 32 }  { r_empty_n fifo_status 0 1 }  { r_read fifo_update 1 1 } } }
}
