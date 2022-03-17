set moduleName adder_tree_large
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
set C_modelName {adder_tree_large}
set C_modelType { void 0 }
set C_modelArgList {
	{ a_0 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ a_1 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ a_2 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ a_3 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ a_4 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ a_5 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ a_6 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ a_7 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_0 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_1 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_2 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_3 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_4 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_5 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_6 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ b_7 int 32 regular {array 64 { 1 3 } 1 1 }  }
	{ c_0 int 32 regular {array 64 { 0 3 } 0 1 }  }
	{ c_1 int 32 unused {array 64 { } 0 1 }  }
	{ c_2 int 32 unused {array 64 { } 0 1 }  }
	{ c_3 int 32 unused {array 64 { } 0 1 }  }
	{ c_4 int 32 unused {array 64 { } 0 1 }  }
	{ c_5 int 32 unused {array 64 { } 0 1 }  }
	{ c_6 int 32 unused {array 64 { } 0 1 }  }
	{ c_7 int 32 unused {array 64 { } 0 1 }  }
	{ n int 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "a_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "a_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "a_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "a_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "a_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "a_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "a_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "a_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "a","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "b_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "b_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "b_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "b_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "b_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "b_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "b_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "b_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "b","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "c_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "c_1", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 1,"up" : 1,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "c_2", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 2,"up" : 2,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "c_3", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 3,"up" : 3,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "c_4", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 4,"up" : 4,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "c_5", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 5,"up" : 5,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "c_6", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 6,"up" : 6,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "c_7", "interface" : "memory", "bitwidth" : 32, "direction" : "NONE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "c","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 7,"up" : 7,"step" : 2},{"low" : 0,"up" : 63,"step" : 1}]}]}]} , 
 	{ "Name" : "n", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "n","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} ]}
# RTL Port declarations: 
set portNum 142
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ a_0_address0 sc_out sc_lv 6 signal 0 } 
	{ a_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ a_0_q0 sc_in sc_lv 32 signal 0 } 
	{ a_1_address0 sc_out sc_lv 6 signal 1 } 
	{ a_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ a_1_q0 sc_in sc_lv 32 signal 1 } 
	{ a_2_address0 sc_out sc_lv 6 signal 2 } 
	{ a_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ a_2_q0 sc_in sc_lv 32 signal 2 } 
	{ a_3_address0 sc_out sc_lv 6 signal 3 } 
	{ a_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ a_3_q0 sc_in sc_lv 32 signal 3 } 
	{ a_4_address0 sc_out sc_lv 6 signal 4 } 
	{ a_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ a_4_q0 sc_in sc_lv 32 signal 4 } 
	{ a_5_address0 sc_out sc_lv 6 signal 5 } 
	{ a_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ a_5_q0 sc_in sc_lv 32 signal 5 } 
	{ a_6_address0 sc_out sc_lv 6 signal 6 } 
	{ a_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ a_6_q0 sc_in sc_lv 32 signal 6 } 
	{ a_7_address0 sc_out sc_lv 6 signal 7 } 
	{ a_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ a_7_q0 sc_in sc_lv 32 signal 7 } 
	{ b_0_address0 sc_out sc_lv 6 signal 8 } 
	{ b_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ b_0_q0 sc_in sc_lv 32 signal 8 } 
	{ b_1_address0 sc_out sc_lv 6 signal 9 } 
	{ b_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ b_1_q0 sc_in sc_lv 32 signal 9 } 
	{ b_2_address0 sc_out sc_lv 6 signal 10 } 
	{ b_2_ce0 sc_out sc_logic 1 signal 10 } 
	{ b_2_q0 sc_in sc_lv 32 signal 10 } 
	{ b_3_address0 sc_out sc_lv 6 signal 11 } 
	{ b_3_ce0 sc_out sc_logic 1 signal 11 } 
	{ b_3_q0 sc_in sc_lv 32 signal 11 } 
	{ b_4_address0 sc_out sc_lv 6 signal 12 } 
	{ b_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ b_4_q0 sc_in sc_lv 32 signal 12 } 
	{ b_5_address0 sc_out sc_lv 6 signal 13 } 
	{ b_5_ce0 sc_out sc_logic 1 signal 13 } 
	{ b_5_q0 sc_in sc_lv 32 signal 13 } 
	{ b_6_address0 sc_out sc_lv 6 signal 14 } 
	{ b_6_ce0 sc_out sc_logic 1 signal 14 } 
	{ b_6_q0 sc_in sc_lv 32 signal 14 } 
	{ b_7_address0 sc_out sc_lv 6 signal 15 } 
	{ b_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ b_7_q0 sc_in sc_lv 32 signal 15 } 
	{ c_0_address0 sc_out sc_lv 6 signal 16 } 
	{ c_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ c_0_we0 sc_out sc_logic 1 signal 16 } 
	{ c_0_d0 sc_out sc_lv 32 signal 16 } 
	{ c_1_address0 sc_out sc_lv 6 signal 17 } 
	{ c_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ c_1_we0 sc_out sc_logic 1 signal 17 } 
	{ c_1_d0 sc_out sc_lv 32 signal 17 } 
	{ c_1_q0 sc_in sc_lv 32 signal 17 } 
	{ c_1_address1 sc_out sc_lv 6 signal 17 } 
	{ c_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ c_1_we1 sc_out sc_logic 1 signal 17 } 
	{ c_1_d1 sc_out sc_lv 32 signal 17 } 
	{ c_1_q1 sc_in sc_lv 32 signal 17 } 
	{ c_2_address0 sc_out sc_lv 6 signal 18 } 
	{ c_2_ce0 sc_out sc_logic 1 signal 18 } 
	{ c_2_we0 sc_out sc_logic 1 signal 18 } 
	{ c_2_d0 sc_out sc_lv 32 signal 18 } 
	{ c_2_q0 sc_in sc_lv 32 signal 18 } 
	{ c_2_address1 sc_out sc_lv 6 signal 18 } 
	{ c_2_ce1 sc_out sc_logic 1 signal 18 } 
	{ c_2_we1 sc_out sc_logic 1 signal 18 } 
	{ c_2_d1 sc_out sc_lv 32 signal 18 } 
	{ c_2_q1 sc_in sc_lv 32 signal 18 } 
	{ c_3_address0 sc_out sc_lv 6 signal 19 } 
	{ c_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ c_3_we0 sc_out sc_logic 1 signal 19 } 
	{ c_3_d0 sc_out sc_lv 32 signal 19 } 
	{ c_3_q0 sc_in sc_lv 32 signal 19 } 
	{ c_3_address1 sc_out sc_lv 6 signal 19 } 
	{ c_3_ce1 sc_out sc_logic 1 signal 19 } 
	{ c_3_we1 sc_out sc_logic 1 signal 19 } 
	{ c_3_d1 sc_out sc_lv 32 signal 19 } 
	{ c_3_q1 sc_in sc_lv 32 signal 19 } 
	{ c_4_address0 sc_out sc_lv 6 signal 20 } 
	{ c_4_ce0 sc_out sc_logic 1 signal 20 } 
	{ c_4_we0 sc_out sc_logic 1 signal 20 } 
	{ c_4_d0 sc_out sc_lv 32 signal 20 } 
	{ c_4_q0 sc_in sc_lv 32 signal 20 } 
	{ c_4_address1 sc_out sc_lv 6 signal 20 } 
	{ c_4_ce1 sc_out sc_logic 1 signal 20 } 
	{ c_4_we1 sc_out sc_logic 1 signal 20 } 
	{ c_4_d1 sc_out sc_lv 32 signal 20 } 
	{ c_4_q1 sc_in sc_lv 32 signal 20 } 
	{ c_5_address0 sc_out sc_lv 6 signal 21 } 
	{ c_5_ce0 sc_out sc_logic 1 signal 21 } 
	{ c_5_we0 sc_out sc_logic 1 signal 21 } 
	{ c_5_d0 sc_out sc_lv 32 signal 21 } 
	{ c_5_q0 sc_in sc_lv 32 signal 21 } 
	{ c_5_address1 sc_out sc_lv 6 signal 21 } 
	{ c_5_ce1 sc_out sc_logic 1 signal 21 } 
	{ c_5_we1 sc_out sc_logic 1 signal 21 } 
	{ c_5_d1 sc_out sc_lv 32 signal 21 } 
	{ c_5_q1 sc_in sc_lv 32 signal 21 } 
	{ c_6_address0 sc_out sc_lv 6 signal 22 } 
	{ c_6_ce0 sc_out sc_logic 1 signal 22 } 
	{ c_6_we0 sc_out sc_logic 1 signal 22 } 
	{ c_6_d0 sc_out sc_lv 32 signal 22 } 
	{ c_6_q0 sc_in sc_lv 32 signal 22 } 
	{ c_6_address1 sc_out sc_lv 6 signal 22 } 
	{ c_6_ce1 sc_out sc_logic 1 signal 22 } 
	{ c_6_we1 sc_out sc_logic 1 signal 22 } 
	{ c_6_d1 sc_out sc_lv 32 signal 22 } 
	{ c_6_q1 sc_in sc_lv 32 signal 22 } 
	{ c_7_address0 sc_out sc_lv 6 signal 23 } 
	{ c_7_ce0 sc_out sc_logic 1 signal 23 } 
	{ c_7_we0 sc_out sc_logic 1 signal 23 } 
	{ c_7_d0 sc_out sc_lv 32 signal 23 } 
	{ c_7_q0 sc_in sc_lv 32 signal 23 } 
	{ c_7_address1 sc_out sc_lv 6 signal 23 } 
	{ c_7_ce1 sc_out sc_logic 1 signal 23 } 
	{ c_7_we1 sc_out sc_logic 1 signal 23 } 
	{ c_7_d1 sc_out sc_lv 32 signal 23 } 
	{ c_7_q1 sc_in sc_lv 32 signal 23 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"adder_tree_large","role":"start","value":"0","valid_bit":"0"},{"name":"adder_tree_large","role":"continue","value":"0","valid_bit":"4"},{"name":"adder_tree_large","role":"auto_start","value":"0","valid_bit":"7"},{"name":"n","role":"data","value":"16"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"adder_tree_large","role":"start","value":"0","valid_bit":"0"},{"name":"adder_tree_large","role":"done","value":"0","valid_bit":"1"},{"name":"adder_tree_large","role":"idle","value":"0","valid_bit":"2"},{"name":"adder_tree_large","role":"ready","value":"0","valid_bit":"3"},{"name":"adder_tree_large","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "a_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_0", "role": "address0" }} , 
 	{ "name": "a_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_0", "role": "ce0" }} , 
 	{ "name": "a_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_0", "role": "q0" }} , 
 	{ "name": "a_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_1", "role": "address0" }} , 
 	{ "name": "a_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_1", "role": "ce0" }} , 
 	{ "name": "a_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_1", "role": "q0" }} , 
 	{ "name": "a_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_2", "role": "address0" }} , 
 	{ "name": "a_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_2", "role": "ce0" }} , 
 	{ "name": "a_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_2", "role": "q0" }} , 
 	{ "name": "a_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_3", "role": "address0" }} , 
 	{ "name": "a_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_3", "role": "ce0" }} , 
 	{ "name": "a_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_3", "role": "q0" }} , 
 	{ "name": "a_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_4", "role": "address0" }} , 
 	{ "name": "a_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_4", "role": "ce0" }} , 
 	{ "name": "a_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_4", "role": "q0" }} , 
 	{ "name": "a_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_5", "role": "address0" }} , 
 	{ "name": "a_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_5", "role": "ce0" }} , 
 	{ "name": "a_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_5", "role": "q0" }} , 
 	{ "name": "a_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_6", "role": "address0" }} , 
 	{ "name": "a_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_6", "role": "ce0" }} , 
 	{ "name": "a_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_6", "role": "q0" }} , 
 	{ "name": "a_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "a_7", "role": "address0" }} , 
 	{ "name": "a_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "a_7", "role": "ce0" }} , 
 	{ "name": "a_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "a_7", "role": "q0" }} , 
 	{ "name": "b_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_0", "role": "address0" }} , 
 	{ "name": "b_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_0", "role": "ce0" }} , 
 	{ "name": "b_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_0", "role": "q0" }} , 
 	{ "name": "b_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_1", "role": "address0" }} , 
 	{ "name": "b_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_1", "role": "ce0" }} , 
 	{ "name": "b_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "q0" }} , 
 	{ "name": "b_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_2", "role": "address0" }} , 
 	{ "name": "b_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_2", "role": "ce0" }} , 
 	{ "name": "b_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_2", "role": "q0" }} , 
 	{ "name": "b_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_3", "role": "address0" }} , 
 	{ "name": "b_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_3", "role": "ce0" }} , 
 	{ "name": "b_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_3", "role": "q0" }} , 
 	{ "name": "b_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_4", "role": "address0" }} , 
 	{ "name": "b_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_4", "role": "ce0" }} , 
 	{ "name": "b_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_4", "role": "q0" }} , 
 	{ "name": "b_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_5", "role": "address0" }} , 
 	{ "name": "b_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_5", "role": "ce0" }} , 
 	{ "name": "b_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_5", "role": "q0" }} , 
 	{ "name": "b_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_6", "role": "address0" }} , 
 	{ "name": "b_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_6", "role": "ce0" }} , 
 	{ "name": "b_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_6", "role": "q0" }} , 
 	{ "name": "b_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "b_7", "role": "address0" }} , 
 	{ "name": "b_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "b_7", "role": "ce0" }} , 
 	{ "name": "b_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_7", "role": "q0" }} , 
 	{ "name": "c_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_0", "role": "address0" }} , 
 	{ "name": "c_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "ce0" }} , 
 	{ "name": "c_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_0", "role": "we0" }} , 
 	{ "name": "c_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_0", "role": "d0" }} , 
 	{ "name": "c_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_1", "role": "address0" }} , 
 	{ "name": "c_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce0" }} , 
 	{ "name": "c_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "we0" }} , 
 	{ "name": "c_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "d0" }} , 
 	{ "name": "c_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "q0" }} , 
 	{ "name": "c_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_1", "role": "address1" }} , 
 	{ "name": "c_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "ce1" }} , 
 	{ "name": "c_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_1", "role": "we1" }} , 
 	{ "name": "c_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "d1" }} , 
 	{ "name": "c_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_1", "role": "q1" }} , 
 	{ "name": "c_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_2", "role": "address0" }} , 
 	{ "name": "c_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "ce0" }} , 
 	{ "name": "c_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "we0" }} , 
 	{ "name": "c_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_2", "role": "d0" }} , 
 	{ "name": "c_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_2", "role": "q0" }} , 
 	{ "name": "c_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_2", "role": "address1" }} , 
 	{ "name": "c_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "ce1" }} , 
 	{ "name": "c_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_2", "role": "we1" }} , 
 	{ "name": "c_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_2", "role": "d1" }} , 
 	{ "name": "c_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_2", "role": "q1" }} , 
 	{ "name": "c_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_3", "role": "address0" }} , 
 	{ "name": "c_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "ce0" }} , 
 	{ "name": "c_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "we0" }} , 
 	{ "name": "c_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3", "role": "d0" }} , 
 	{ "name": "c_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3", "role": "q0" }} , 
 	{ "name": "c_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_3", "role": "address1" }} , 
 	{ "name": "c_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "ce1" }} , 
 	{ "name": "c_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_3", "role": "we1" }} , 
 	{ "name": "c_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3", "role": "d1" }} , 
 	{ "name": "c_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_3", "role": "q1" }} , 
 	{ "name": "c_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_4", "role": "address0" }} , 
 	{ "name": "c_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_4", "role": "ce0" }} , 
 	{ "name": "c_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_4", "role": "we0" }} , 
 	{ "name": "c_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_4", "role": "d0" }} , 
 	{ "name": "c_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_4", "role": "q0" }} , 
 	{ "name": "c_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_4", "role": "address1" }} , 
 	{ "name": "c_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_4", "role": "ce1" }} , 
 	{ "name": "c_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_4", "role": "we1" }} , 
 	{ "name": "c_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_4", "role": "d1" }} , 
 	{ "name": "c_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_4", "role": "q1" }} , 
 	{ "name": "c_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_5", "role": "address0" }} , 
 	{ "name": "c_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_5", "role": "ce0" }} , 
 	{ "name": "c_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_5", "role": "we0" }} , 
 	{ "name": "c_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_5", "role": "d0" }} , 
 	{ "name": "c_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_5", "role": "q0" }} , 
 	{ "name": "c_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_5", "role": "address1" }} , 
 	{ "name": "c_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_5", "role": "ce1" }} , 
 	{ "name": "c_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_5", "role": "we1" }} , 
 	{ "name": "c_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_5", "role": "d1" }} , 
 	{ "name": "c_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_5", "role": "q1" }} , 
 	{ "name": "c_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_6", "role": "address0" }} , 
 	{ "name": "c_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_6", "role": "ce0" }} , 
 	{ "name": "c_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_6", "role": "we0" }} , 
 	{ "name": "c_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_6", "role": "d0" }} , 
 	{ "name": "c_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_6", "role": "q0" }} , 
 	{ "name": "c_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_6", "role": "address1" }} , 
 	{ "name": "c_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_6", "role": "ce1" }} , 
 	{ "name": "c_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_6", "role": "we1" }} , 
 	{ "name": "c_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_6", "role": "d1" }} , 
 	{ "name": "c_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_6", "role": "q1" }} , 
 	{ "name": "c_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_7", "role": "address0" }} , 
 	{ "name": "c_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_7", "role": "ce0" }} , 
 	{ "name": "c_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_7", "role": "we0" }} , 
 	{ "name": "c_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_7", "role": "d0" }} , 
 	{ "name": "c_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_7", "role": "q0" }} , 
 	{ "name": "c_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "c_7", "role": "address1" }} , 
 	{ "name": "c_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_7", "role": "ce1" }} , 
 	{ "name": "c_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "c_7", "role": "we1" }} , 
 	{ "name": "c_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_7", "role": "d1" }} , 
 	{ "name": "c_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_7", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "adder_tree_large",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "a_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "a_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "b_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "c_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "c_1", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c_2", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c_3", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c_4", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c_5", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c_6", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "c_7", "Type" : "Memory", "Direction" : "X"},
			{"Name" : "n", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U1", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U2", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U3", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U4", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U5", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U6", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U7", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U8", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	adder_tree_large {
		a_0 {Type I LastRead 1 FirstWrite -1}
		a_1 {Type I LastRead 1 FirstWrite -1}
		a_2 {Type I LastRead 1 FirstWrite -1}
		a_3 {Type I LastRead 1 FirstWrite -1}
		a_4 {Type I LastRead 1 FirstWrite -1}
		a_5 {Type I LastRead 1 FirstWrite -1}
		a_6 {Type I LastRead 1 FirstWrite -1}
		a_7 {Type I LastRead 1 FirstWrite -1}
		b_0 {Type I LastRead 1 FirstWrite -1}
		b_1 {Type I LastRead 1 FirstWrite -1}
		b_2 {Type I LastRead 1 FirstWrite -1}
		b_3 {Type I LastRead 1 FirstWrite -1}
		b_4 {Type I LastRead 1 FirstWrite -1}
		b_5 {Type I LastRead 1 FirstWrite -1}
		b_6 {Type I LastRead 1 FirstWrite -1}
		b_7 {Type I LastRead 1 FirstWrite -1}
		c_0 {Type O LastRead -1 FirstWrite 2}
		c_1 {Type X LastRead -1 FirstWrite -1}
		c_2 {Type X LastRead -1 FirstWrite -1}
		c_3 {Type X LastRead -1 FirstWrite -1}
		c_4 {Type X LastRead -1 FirstWrite -1}
		c_5 {Type X LastRead -1 FirstWrite -1}
		c_6 {Type X LastRead -1 FirstWrite -1}
		c_7 {Type X LastRead -1 FirstWrite -1}
		n {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "35", "Max" : "35"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	a_0 { ap_memory {  { a_0_address0 mem_address 1 6 }  { a_0_ce0 mem_ce 1 1 }  { a_0_q0 mem_dout 0 32 } } }
	a_1 { ap_memory {  { a_1_address0 mem_address 1 6 }  { a_1_ce0 mem_ce 1 1 }  { a_1_q0 mem_dout 0 32 } } }
	a_2 { ap_memory {  { a_2_address0 mem_address 1 6 }  { a_2_ce0 mem_ce 1 1 }  { a_2_q0 mem_dout 0 32 } } }
	a_3 { ap_memory {  { a_3_address0 mem_address 1 6 }  { a_3_ce0 mem_ce 1 1 }  { a_3_q0 mem_dout 0 32 } } }
	a_4 { ap_memory {  { a_4_address0 mem_address 1 6 }  { a_4_ce0 mem_ce 1 1 }  { a_4_q0 mem_dout 0 32 } } }
	a_5 { ap_memory {  { a_5_address0 mem_address 1 6 }  { a_5_ce0 mem_ce 1 1 }  { a_5_q0 mem_dout 0 32 } } }
	a_6 { ap_memory {  { a_6_address0 mem_address 1 6 }  { a_6_ce0 mem_ce 1 1 }  { a_6_q0 mem_dout 0 32 } } }
	a_7 { ap_memory {  { a_7_address0 mem_address 1 6 }  { a_7_ce0 mem_ce 1 1 }  { a_7_q0 mem_dout 0 32 } } }
	b_0 { ap_memory {  { b_0_address0 mem_address 1 6 }  { b_0_ce0 mem_ce 1 1 }  { b_0_q0 mem_dout 0 32 } } }
	b_1 { ap_memory {  { b_1_address0 mem_address 1 6 }  { b_1_ce0 mem_ce 1 1 }  { b_1_q0 mem_dout 0 32 } } }
	b_2 { ap_memory {  { b_2_address0 mem_address 1 6 }  { b_2_ce0 mem_ce 1 1 }  { b_2_q0 mem_dout 0 32 } } }
	b_3 { ap_memory {  { b_3_address0 mem_address 1 6 }  { b_3_ce0 mem_ce 1 1 }  { b_3_q0 mem_dout 0 32 } } }
	b_4 { ap_memory {  { b_4_address0 mem_address 1 6 }  { b_4_ce0 mem_ce 1 1 }  { b_4_q0 mem_dout 0 32 } } }
	b_5 { ap_memory {  { b_5_address0 mem_address 1 6 }  { b_5_ce0 mem_ce 1 1 }  { b_5_q0 mem_dout 0 32 } } }
	b_6 { ap_memory {  { b_6_address0 mem_address 1 6 }  { b_6_ce0 mem_ce 1 1 }  { b_6_q0 mem_dout 0 32 } } }
	b_7 { ap_memory {  { b_7_address0 mem_address 1 6 }  { b_7_ce0 mem_ce 1 1 }  { b_7_q0 mem_dout 0 32 } } }
	c_0 { ap_memory {  { c_0_address0 mem_address 1 6 }  { c_0_ce0 mem_ce 1 1 }  { c_0_we0 mem_we 1 1 }  { c_0_d0 mem_din 1 32 } } }
	c_1 { ap_memory {  { c_1_address0 mem_address 1 6 }  { c_1_ce0 mem_ce 1 1 }  { c_1_we0 mem_we 1 1 }  { c_1_d0 mem_din 1 32 }  { c_1_q0 mem_dout 0 32 }  { c_1_address1 MemPortADDR2 1 6 }  { c_1_ce1 MemPortCE2 1 1 }  { c_1_we1 MemPortWE2 1 1 }  { c_1_d1 MemPortDIN2 1 32 }  { c_1_q1 MemPortDOUT2 0 32 } } }
	c_2 { ap_memory {  { c_2_address0 mem_address 1 6 }  { c_2_ce0 mem_ce 1 1 }  { c_2_we0 mem_we 1 1 }  { c_2_d0 mem_din 1 32 }  { c_2_q0 mem_dout 0 32 }  { c_2_address1 MemPortADDR2 1 6 }  { c_2_ce1 MemPortCE2 1 1 }  { c_2_we1 MemPortWE2 1 1 }  { c_2_d1 MemPortDIN2 1 32 }  { c_2_q1 MemPortDOUT2 0 32 } } }
	c_3 { ap_memory {  { c_3_address0 mem_address 1 6 }  { c_3_ce0 mem_ce 1 1 }  { c_3_we0 mem_we 1 1 }  { c_3_d0 mem_din 1 32 }  { c_3_q0 mem_dout 0 32 }  { c_3_address1 MemPortADDR2 1 6 }  { c_3_ce1 MemPortCE2 1 1 }  { c_3_we1 MemPortWE2 1 1 }  { c_3_d1 MemPortDIN2 1 32 }  { c_3_q1 MemPortDOUT2 0 32 } } }
	c_4 { ap_memory {  { c_4_address0 mem_address 1 6 }  { c_4_ce0 mem_ce 1 1 }  { c_4_we0 mem_we 1 1 }  { c_4_d0 mem_din 1 32 }  { c_4_q0 mem_dout 0 32 }  { c_4_address1 MemPortADDR2 1 6 }  { c_4_ce1 MemPortCE2 1 1 }  { c_4_we1 MemPortWE2 1 1 }  { c_4_d1 MemPortDIN2 1 32 }  { c_4_q1 MemPortDOUT2 0 32 } } }
	c_5 { ap_memory {  { c_5_address0 mem_address 1 6 }  { c_5_ce0 mem_ce 1 1 }  { c_5_we0 mem_we 1 1 }  { c_5_d0 mem_din 1 32 }  { c_5_q0 mem_dout 0 32 }  { c_5_address1 MemPortADDR2 1 6 }  { c_5_ce1 MemPortCE2 1 1 }  { c_5_we1 MemPortWE2 1 1 }  { c_5_d1 MemPortDIN2 1 32 }  { c_5_q1 MemPortDOUT2 0 32 } } }
	c_6 { ap_memory {  { c_6_address0 mem_address 1 6 }  { c_6_ce0 mem_ce 1 1 }  { c_6_we0 mem_we 1 1 }  { c_6_d0 mem_din 1 32 }  { c_6_q0 mem_dout 0 32 }  { c_6_address1 MemPortADDR2 1 6 }  { c_6_ce1 MemPortCE2 1 1 }  { c_6_we1 MemPortWE2 1 1 }  { c_6_d1 MemPortDIN2 1 32 }  { c_6_q1 MemPortDOUT2 0 32 } } }
	c_7 { ap_memory {  { c_7_address0 mem_address 1 6 }  { c_7_ce0 mem_ce 1 1 }  { c_7_we0 mem_we 1 1 }  { c_7_d0 mem_din 1 32 }  { c_7_q0 mem_dout 0 32 }  { c_7_address1 MemPortADDR2 1 6 }  { c_7_ce1 MemPortCE2 1 1 }  { c_7_we1 MemPortWE2 1 1 }  { c_7_d1 MemPortDIN2 1 32 }  { c_7_q1 MemPortDOUT2 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
