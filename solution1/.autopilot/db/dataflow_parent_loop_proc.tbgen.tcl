set moduleName dataflow_parent_loop_proc
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {dataflow_parent_loop_proc}
set C_modelType { void 0 }
set C_modelArgList {
	{ param_L2_TILENUM_S int 32 regular  }
	{ param int 1184 regular  }
	{ kmo int 30 regular  }
	{ bias_in int 64 regular  }
	{ gmem0 int 8 regular {axi_master 0}  }
	{ cmo int 32 regular  }
	{ rmo int 32 regular  }
	{ weight_in int 64 regular  }
	{ gmem1 int 8 regular {axi_master 0}  }
	{ hmo int 30 regular  }
	{ wmo int 30 regular  }
	{ data_in int 64 regular  }
	{ gmem2 int 8 regular {axi_master 0}  }
	{ gmem3 int 32 regular {axi_master 2}  }
	{ conv_out int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "param_L2_TILENUM_S", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "param", "interface" : "wire", "bitwidth" : 1184, "direction" : "READONLY"} , 
 	{ "Name" : "kmo", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "bias_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "cmo", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rmo", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "weight_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "hmo", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "wmo", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "data_in", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gmem3", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "conv_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 208
set portList { 
	{ param_L2_TILENUM_S sc_in sc_lv 32 signal 0 } 
	{ param sc_in sc_lv 1184 signal 1 } 
	{ kmo sc_in sc_lv 30 signal 2 } 
	{ bias_in sc_in sc_lv 64 signal 3 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 8 signal 4 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 4 } 
	{ cmo sc_in sc_lv 32 signal 5 } 
	{ rmo sc_in sc_lv 32 signal 6 } 
	{ weight_in sc_in sc_lv 64 signal 7 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 8 signal 8 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 8 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 8 signal 8 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 8 } 
	{ hmo sc_in sc_lv 30 signal 9 } 
	{ wmo sc_in sc_lv 30 signal 10 } 
	{ data_in sc_in sc_lv 64 signal 11 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 8 signal 12 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 32 signal 12 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 8 signal 12 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem3_AWVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem3_AWREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem3_AWADDR sc_out sc_lv 64 signal 13 } 
	{ m_axi_gmem3_AWID sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem3_AWLEN sc_out sc_lv 32 signal 13 } 
	{ m_axi_gmem3_AWSIZE sc_out sc_lv 3 signal 13 } 
	{ m_axi_gmem3_AWBURST sc_out sc_lv 2 signal 13 } 
	{ m_axi_gmem3_AWLOCK sc_out sc_lv 2 signal 13 } 
	{ m_axi_gmem3_AWCACHE sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem3_AWPROT sc_out sc_lv 3 signal 13 } 
	{ m_axi_gmem3_AWQOS sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem3_AWREGION sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem3_AWUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem3_WVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem3_WREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem3_WDATA sc_out sc_lv 32 signal 13 } 
	{ m_axi_gmem3_WSTRB sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem3_WLAST sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem3_WID sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem3_WUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem3_ARVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem3_ARREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem3_ARADDR sc_out sc_lv 64 signal 13 } 
	{ m_axi_gmem3_ARID sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem3_ARLEN sc_out sc_lv 32 signal 13 } 
	{ m_axi_gmem3_ARSIZE sc_out sc_lv 3 signal 13 } 
	{ m_axi_gmem3_ARBURST sc_out sc_lv 2 signal 13 } 
	{ m_axi_gmem3_ARLOCK sc_out sc_lv 2 signal 13 } 
	{ m_axi_gmem3_ARCACHE sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem3_ARPROT sc_out sc_lv 3 signal 13 } 
	{ m_axi_gmem3_ARQOS sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem3_ARREGION sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem3_ARUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem3_RVALID sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem3_RREADY sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem3_RDATA sc_in sc_lv 32 signal 13 } 
	{ m_axi_gmem3_RLAST sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem3_RID sc_in sc_lv 1 signal 13 } 
	{ m_axi_gmem3_RUSER sc_in sc_lv 1 signal 13 } 
	{ m_axi_gmem3_RRESP sc_in sc_lv 2 signal 13 } 
	{ m_axi_gmem3_BVALID sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem3_BREADY sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem3_BRESP sc_in sc_lv 2 signal 13 } 
	{ m_axi_gmem3_BID sc_in sc_lv 1 signal 13 } 
	{ m_axi_gmem3_BUSER sc_in sc_lv 1 signal 13 } 
	{ conv_out sc_in sc_lv 64 signal 14 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ param_ap_vld sc_in sc_logic 1 invld 1 } 
	{ kmo_ap_vld sc_in sc_logic 1 invld 2 } 
	{ bias_in_ap_vld sc_in sc_logic 1 invld 3 } 
	{ cmo_ap_vld sc_in sc_logic 1 invld 5 } 
	{ rmo_ap_vld sc_in sc_logic 1 invld 6 } 
	{ weight_in_ap_vld sc_in sc_logic 1 invld 7 } 
	{ hmo_ap_vld sc_in sc_logic 1 invld 9 } 
	{ wmo_ap_vld sc_in sc_logic 1 invld 10 } 
	{ data_in_ap_vld sc_in sc_logic 1 invld 11 } 
	{ conv_out_ap_vld sc_in sc_logic 1 invld 14 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "param_L2_TILENUM_S", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "param_L2_TILENUM_S", "role": "default" }} , 
 	{ "name": "param", "direction": "in", "datatype": "sc_lv", "bitwidth":1184, "type": "signal", "bundle":{"name": "param", "role": "default" }} , 
 	{ "name": "kmo", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "kmo", "role": "default" }} , 
 	{ "name": "bias_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "bias_in", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "cmo", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "cmo", "role": "default" }} , 
 	{ "name": "rmo", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rmo", "role": "default" }} , 
 	{ "name": "weight_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "weight_in", "role": "default" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "hmo", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "hmo", "role": "default" }} , 
 	{ "name": "wmo", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "wmo", "role": "default" }} , 
 	{ "name": "data_in", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_in", "role": "default" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem3", "role": "BUSER" }} , 
 	{ "name": "conv_out", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "conv_out", "role": "default" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "param_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "param", "role": "ap_vld" }} , 
 	{ "name": "kmo_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "kmo", "role": "ap_vld" }} , 
 	{ "name": "bias_in_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "bias_in", "role": "ap_vld" }} , 
 	{ "name": "cmo_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "cmo", "role": "ap_vld" }} , 
 	{ "name": "rmo_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rmo", "role": "ap_vld" }} , 
 	{ "name": "weight_in_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "weight_in", "role": "ap_vld" }} , 
 	{ "name": "hmo_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "hmo", "role": "ap_vld" }} , 
 	{ "name": "wmo_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "wmo", "role": "ap_vld" }} , 
 	{ "name": "data_in_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "data_in", "role": "ap_vld" }} , 
 	{ "name": "conv_out_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "conv_out", "role": "ap_vld" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3124", "EstimateLatencyMax" : "5476",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0"}],
		"Port" : [
			{"Name" : "param_L2_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "kmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "gmem0"}]},
			{"Name" : "cmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "rmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "gmem1"}]},
			{"Name" : "hmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "wmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "gmem2"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "gmem3"}]},
			{"Name" : "conv_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_l2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "bias_l2_0"}]},
			{"Name" : "bias_l2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "bias_l2_1"}]},
			{"Name" : "bias_l2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "bias_l2_2"}]},
			{"Name" : "bias_l2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "bias_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "output_l2_reduction_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Port" : "output_l2_3"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0", "Parent" : "0", "Child" : ["2", "3", "5", "15", "22", "148", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202"],
		"CDFG" : "dataflow_in_loop_LOOP_S_MOST_OUTER",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3122", "EstimateLatencyMax" : "5474",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_LOOP_S_MOST_OUTER_entry34_U0"}],
		"OutputProcess" : [
			{"ID" : "148", "Name" : "OUTPUT_DRAM_WRITE_proc_U0"}],
		"Port" : [
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "kmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "BIAS_DRAM_READ_proc_U0", "Port" : "gmem0"}]},
			{"Name" : "cmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "rmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "smo", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "WEIGHT_DRAM_READ_proc_U0", "Port" : "gmem1"}]},
			{"Name" : "hmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "wmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "INPUT_DRAM_READ_proc_U0", "Port" : "gmem2"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "gmem3"}]},
			{"Name" : "conv_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_l2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "bias_l2_0"},
					{"ID" : "3", "SubInstance" : "BIAS_DRAM_READ_proc_U0", "Port" : "bias_l2_0"}]},
			{"Name" : "bias_l2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "bias_l2_1"},
					{"ID" : "3", "SubInstance" : "BIAS_DRAM_READ_proc_U0", "Port" : "bias_l2_1"}]},
			{"Name" : "bias_l2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "bias_l2_2"},
					{"ID" : "3", "SubInstance" : "BIAS_DRAM_READ_proc_U0", "Port" : "bias_l2_2"}]},
			{"Name" : "bias_l2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "bias_l2_3"},
					{"ID" : "3", "SubInstance" : "BIAS_DRAM_READ_proc_U0", "Port" : "bias_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "weight_l2_0"},
					{"ID" : "5", "SubInstance" : "WEIGHT_DRAM_READ_proc_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "weight_l2_1"},
					{"ID" : "5", "SubInstance" : "WEIGHT_DRAM_READ_proc_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "weight_l2_2"},
					{"ID" : "5", "SubInstance" : "WEIGHT_DRAM_READ_proc_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "weight_l2_3"},
					{"ID" : "5", "SubInstance" : "WEIGHT_DRAM_READ_proc_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "data_l2_0"},
					{"ID" : "15", "SubInstance" : "INPUT_DRAM_READ_proc_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "data_l2_1"},
					{"ID" : "15", "SubInstance" : "INPUT_DRAM_READ_proc_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "data_l2_2"},
					{"ID" : "15", "SubInstance" : "INPUT_DRAM_READ_proc_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "data_l2_3"},
					{"ID" : "15", "SubInstance" : "INPUT_DRAM_READ_proc_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "output_l2_reduction_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "output_l2_0"},
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "output_l2_1"},
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "output_l2_2"},
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "LOOP_K_OUTER_proc_U0", "Port" : "output_l2_3"},
					{"ID" : "148", "SubInstance" : "OUTPUT_DRAM_WRITE_proc_U0", "Port" : "output_l2_3"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.dataflow_in_loop_LOOP_S_MOST_OUTER_entry34_U0", "Parent" : "1",
		"CDFG" : "dataflow_in_loop_LOOP_S_MOST_OUTER_entry34",
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
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "kmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "rmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "smo", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "hmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "wmo", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "conv_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "171", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_c1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "172", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_c1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_c2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "173", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_c2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kmo_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "174", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "kmo_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kmo_c3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "175", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "kmo_c3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_in_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "176", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "bias_in_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmo_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "177", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "cmo_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmo_c4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "178", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "cmo_c4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rmo_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "179", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "rmo_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "smo_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "180", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "smo_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_in_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "5", "DependentChan" : "181", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "weight_in_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hmo_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "182", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "hmo_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hmo_c5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "183", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "hmo_c5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wmo_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "184", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wmo_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wmo_c6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "185", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wmo_c6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "15", "DependentChan" : "186", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "data_in_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "conv_out_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "187", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "conv_out_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_L1_TILENUM_S_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "188", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "param_L1_TILENUM_S_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lshr_ln282_cast_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "189", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "lshr_ln282_cast_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lshr_ln282_1_cast_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "190", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "lshr_ln282_1_cast_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lshr_ln282_2_cast_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "191", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "lshr_ln282_2_cast_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lshr_ln282_3_cast_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "192", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "lshr_ln282_3_cast_c_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_L1_TILENUM_K_c", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "193", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "param_L1_TILENUM_K_c_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.BIAS_DRAM_READ_proc_U0", "Parent" : "1", "Child" : ["4"],
		"CDFG" : "BIAS_DRAM_READ_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_BIAS_DRAM_READ_proc_U0_U",
		"Port" : [
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "171", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "174", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "kmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "bias_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "176", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "bias_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "bias_l2_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "155"},
			{"Name" : "bias_l2_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "156"},
			{"Name" : "bias_l2_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "157"},
			{"Name" : "bias_l2_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "158"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.BIAS_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U35", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0", "Parent" : "1", "Child" : ["6", "7", "8", "9", "10", "11", "12", "13", "14"],
		"CDFG" : "WEIGHT_DRAM_READ_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "645", "EstimateLatencyMax" : "645",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_WEIGHT_DRAM_READ_proc_U0_U",
		"Port" : [
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "172", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "175", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "kmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "177", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "cmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "179", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "rmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "smo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "180", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "smo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "181", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "weight_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "194", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kmo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "195", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "kmo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "196", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "cmo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rmo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "197", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "rmo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "smo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "198", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "smo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "159"},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "160"},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "161"},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "162"}]},
	{"ID" : "6", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U45", "Parent" : "5"},
	{"ID" : "7", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U46", "Parent" : "5"},
	{"ID" : "8", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U47", "Parent" : "5"},
	{"ID" : "9", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U48", "Parent" : "5"},
	{"ID" : "10", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U49", "Parent" : "5"},
	{"ID" : "11", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U50", "Parent" : "5"},
	{"ID" : "12", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U51", "Parent" : "5"},
	{"ID" : "13", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.mul_mul_12s_12s_12_4_1_U52", "Parent" : "5"},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.WEIGHT_DRAM_READ_proc_U0.ama_addmuladd_12s_12ns_12s_12ns_12_4_1_U53", "Parent" : "5"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.INPUT_DRAM_READ_proc_U0", "Parent" : "1", "Child" : ["16", "17", "18", "19", "20", "21"],
		"CDFG" : "INPUT_DRAM_READ_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1315", "EstimateLatencyMax" : "1315",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"StartSource" : "2",
		"StartFifo" : "start_for_INPUT_DRAM_READ_proc_U0_U",
		"Port" : [
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "173", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "178", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "cmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "182", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "hmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "184", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_in", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "186", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "data_in_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "163"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "164"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "165"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "166"}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.INPUT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U72", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.INPUT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U73", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.INPUT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U74", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.INPUT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U75", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.INPUT_DRAM_READ_proc_U0.mul_30s_30s_30_1_1_U76", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.INPUT_DRAM_READ_proc_U0.ama_addmuladd_11ns_11ns_11s_11ns_11_4_1_U77", "Parent" : "15"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0", "Parent" : "1", "Child" : ["23"],
		"CDFG" : "LOOP_K_OUTER_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "907", "EstimateLatencyMax" : "907",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119"}],
		"Port" : [
			{"Name" : "param_L1_TILENUM_K", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "193", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "param_L1_TILENUM_K_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lshr_ln282_3_cast", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "192", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "lshr_ln282_3_cast_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lshr_ln282_2_cast", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "191", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "lshr_ln282_2_cast_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lshr_ln282_1_cast", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "190", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "lshr_ln282_1_cast_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "lshr_ln282_cast", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "189", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "lshr_ln282_cast_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_L1_TILENUM_S", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "188", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "param_L1_TILENUM_S_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "194", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "167",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "168",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "169",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "170",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "159",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "160",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "161",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "162",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "weight_l2_3"}]},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "148", "DependentChan" : "199", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "output_l2_reduction_3"}]},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "163",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "164",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "165",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "15", "DependentChan" : "166",
				"SubConnect" : [
					{"ID" : "23", "SubInstance" : "grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Port" : "data_l2_3"}]}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119", "Parent" : "22", "Child" : ["24"],
		"CDFG" : "LOOP_K_OUTER_proc_wrapper",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "906", "EstimateLatencyMax" : "906",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "24", "Name" : "dataflow_parent_loop_proc19_U0"}],
		"OutputProcess" : [
			{"ID" : "24", "Name" : "dataflow_parent_loop_proc19_U0"}],
		"Port" : [
			{"Name" : "param_L1_TILENUM_K", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "dataflow_parent_loop_proc19_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "24", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0", "Parent" : "23", "Child" : ["25"],
		"CDFG" : "dataflow_parent_loop_proc19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "904", "EstimateLatencyMax" : "904",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "25", "Name" : "dataflow_parent_loop_proc18_U0"}],
		"OutputProcess" : [
			{"ID" : "25", "Name" : "dataflow_parent_loop_proc18_U0"}],
		"Port" : [
			{"Name" : "lshr_ln282_3_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "25", "SubInstance" : "dataflow_parent_loop_proc18_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "25", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0", "Parent" : "24", "Child" : ["26"],
		"CDFG" : "dataflow_parent_loop_proc18",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "902", "EstimateLatencyMax" : "902",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "26", "Name" : "dataflow_parent_loop_proc17_U0"}],
		"OutputProcess" : [
			{"ID" : "26", "Name" : "dataflow_parent_loop_proc17_U0"}],
		"Port" : [
			{"Name" : "lshr_ln282_2_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "26", "SubInstance" : "dataflow_parent_loop_proc17_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "26", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0", "Parent" : "25", "Child" : ["27"],
		"CDFG" : "dataflow_parent_loop_proc17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "900", "EstimateLatencyMax" : "900",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "27", "Name" : "dataflow_parent_loop_proc16_U0"}],
		"OutputProcess" : [
			{"ID" : "27", "Name" : "dataflow_parent_loop_proc16_U0"}],
		"Port" : [
			{"Name" : "lshr_ln282_1_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "dataflow_parent_loop_proc16_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "27", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0", "Parent" : "26", "Child" : ["28"],
		"CDFG" : "dataflow_parent_loop_proc16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "898", "EstimateLatencyMax" : "898",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "28", "Name" : "dataflow_parent_loop_proc15_U0"}],
		"OutputProcess" : [
			{"ID" : "28", "Name" : "dataflow_parent_loop_proc15_U0"}],
		"Port" : [
			{"Name" : "lshr_ln282_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "dataflow_parent_loop_proc15_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "28", "Level" : "8", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0", "Parent" : "27", "Child" : ["29"],
		"CDFG" : "dataflow_parent_loop_proc15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "298", "EstimateLatencyMax" : "298",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "29", "Name" : "dataflow_in_loop_LOOP_S_OUTER_U0"}],
		"OutputProcess" : [
			{"ID" : "29", "Name" : "dataflow_in_loop_LOOP_S_OUTER_U0"}],
		"Port" : [
			{"Name" : "param_L1_TILENUM_S", "Type" : "None", "Direction" : "I"},
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "dataflow_in_loop_LOOP_S_OUTER_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "29", "Level" : "9", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0", "Parent" : "28", "Child" : ["30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "76", "83", "102", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147"],
		"CDFG" : "dataflow_in_loop_LOOP_S_OUTER",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "176", "EstimateLatencyMax" : "176",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "38", "Name" : "dataflow_in_loop_LOOP_S_OUTER_entry28_U0"},
			{"ID" : "39", "Name" : "runWeight2Reg_U0"},
			{"ID" : "76", "Name" : "runDataL2toL1_U0"}],
		"OutputProcess" : [
			{"ID" : "102", "Name" : "runOutputL1toL2_U0"}],
		"Port" : [
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "so", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_0"}]},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_1"}]},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_2"}]},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "runDataL2toL1_U0", "Port" : "data_l2_3"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_0"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_1"}]},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_2"}]},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_3"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_0"}]},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_1"}]},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_2"}]},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "runWeight2Reg_U0", "Port" : "weight_l2_3"}]},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_reduction_0"}]},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_reduction_1"}]},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_reduction_2"}]},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "102", "SubInstance" : "runOutputL1toL2_U0", "Port" : "output_l2_reduction_3"}]}]},
	{"ID" : "30", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_0_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_1_U", "Parent" : "29"},
	{"ID" : "32", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_2_U", "Parent" : "29"},
	{"ID" : "33", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_3_U", "Parent" : "29"},
	{"ID" : "34", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_0_U", "Parent" : "29"},
	{"ID" : "35", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_1_U", "Parent" : "29"},
	{"ID" : "36", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_2_U", "Parent" : "29"},
	{"ID" : "37", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_3_U", "Parent" : "29"},
	{"ID" : "38", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry28_U0", "Parent" : "29",
		"CDFG" : "dataflow_in_loop_LOOP_S_OUTER_entry28",
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
			{"Name" : "param", "Type" : "None", "Direction" : "I"},
			{"Name" : "ko_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "co", "Type" : "None", "Direction" : "I"},
			{"Name" : "ro", "Type" : "None", "Direction" : "I"},
			{"Name" : "so", "Type" : "None", "Direction" : "I"},
			{"Name" : "ho", "Type" : "None", "Direction" : "I"},
			{"Name" : "wo", "Type" : "None", "Direction" : "I"},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "113", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "114", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "115", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "116", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out2", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "117", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_out2_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "118", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "119", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "39", "DependentChan" : "120", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "121", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "122", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "123", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "76", "DependentChan" : "124", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "125", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_out6_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "39", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0", "Parent" : "29", "Child" : ["40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75"],
		"CDFG" : "runWeight2Reg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "56", "EstimateLatencyMax" : "56",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "113", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "115", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ko_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "116", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "118", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "120", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "weight_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "weight_l2_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "126", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "127", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_1_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "128", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "co_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "129", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "130", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "40", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U109", "Parent" : "39"},
	{"ID" : "41", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U110", "Parent" : "39"},
	{"ID" : "42", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U111", "Parent" : "39"},
	{"ID" : "43", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U112", "Parent" : "39"},
	{"ID" : "44", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U113", "Parent" : "39"},
	{"ID" : "45", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U114", "Parent" : "39"},
	{"ID" : "46", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U115", "Parent" : "39"},
	{"ID" : "47", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U116", "Parent" : "39"},
	{"ID" : "48", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U117", "Parent" : "39"},
	{"ID" : "49", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U118", "Parent" : "39"},
	{"ID" : "50", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U119", "Parent" : "39"},
	{"ID" : "51", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U120", "Parent" : "39"},
	{"ID" : "52", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U121", "Parent" : "39"},
	{"ID" : "53", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U122", "Parent" : "39"},
	{"ID" : "54", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U123", "Parent" : "39"},
	{"ID" : "55", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U124", "Parent" : "39"},
	{"ID" : "56", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U125", "Parent" : "39"},
	{"ID" : "57", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U126", "Parent" : "39"},
	{"ID" : "58", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U127", "Parent" : "39"},
	{"ID" : "59", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U128", "Parent" : "39"},
	{"ID" : "60", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U129", "Parent" : "39"},
	{"ID" : "61", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U130", "Parent" : "39"},
	{"ID" : "62", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U131", "Parent" : "39"},
	{"ID" : "63", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U132", "Parent" : "39"},
	{"ID" : "64", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U133", "Parent" : "39"},
	{"ID" : "65", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U134", "Parent" : "39"},
	{"ID" : "66", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U135", "Parent" : "39"},
	{"ID" : "67", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U136", "Parent" : "39"},
	{"ID" : "68", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U137", "Parent" : "39"},
	{"ID" : "69", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U138", "Parent" : "39"},
	{"ID" : "70", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U139", "Parent" : "39"},
	{"ID" : "71", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_8_1_1_U140", "Parent" : "39"},
	{"ID" : "72", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mux_42_1_1_1_U141", "Parent" : "39"},
	{"ID" : "73", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_mul_12s_12s_12_4_1_U142", "Parent" : "39"},
	{"ID" : "74", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.mul_mul_12s_12s_12_4_1_U143", "Parent" : "39"},
	{"ID" : "75", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.ama_addmuladd_12ns_12s_12s_12ns_12_4_1_U144", "Parent" : "39"},
	{"ID" : "76", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0", "Parent" : "29", "Child" : ["77", "78", "79", "80", "81", "82"],
		"CDFG" : "runDataL2toL1",
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
			{"Name" : "data_l1_017_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "30"},
			{"Name" : "data_l1_118_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "31"},
			{"Name" : "data_l1_219_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "32"},
			{"Name" : "data_l1_320_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "83", "DependentChan" : "33"},
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "114", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "117", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "122", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "124", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "119", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "121", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "data_l2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_l2_3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "77", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_32ns_32ns_64_1_1_U165", "Parent" : "76"},
	{"ID" : "78", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_11s_11s_11ns_11_4_1_U166", "Parent" : "76"},
	{"ID" : "79", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_11s_11s_11ns_11_4_1_U167", "Parent" : "76"},
	{"ID" : "80", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mul_mul_11s_11s_11_4_1_U168", "Parent" : "76"},
	{"ID" : "81", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ama_addmuladd_11ns_11s_11s_11ns_11_4_1_U169", "Parent" : "76"},
	{"ID" : "82", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.mac_muladd_6s_6s_6ns_6_4_1_U170", "Parent" : "76"},
	{"ID" : "83", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0", "Parent" : "29", "Child" : ["84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101"],
		"CDFG" : "runSysArr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "59", "EstimateLatencyMax" : "59",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "131", "DependentChanDepth" : "2"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "132", "DependentChanDepth" : "2"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "133", "DependentChanDepth" : "2"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "134", "DependentChanDepth" : "2"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "135", "DependentChanDepth" : "2"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "136", "DependentChanDepth" : "2"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "137", "DependentChanDepth" : "2"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "138", "DependentChanDepth" : "2"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "139", "DependentChanDepth" : "2"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "140", "DependentChanDepth" : "2"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "141", "DependentChanDepth" : "2"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "142", "DependentChanDepth" : "2"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "143", "DependentChanDepth" : "2"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "144", "DependentChanDepth" : "2"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "145", "DependentChanDepth" : "2"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "146", "DependentChanDepth" : "2"},
			{"Name" : "data_l1_017_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "30"},
			{"Name" : "data_l1_118_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "31"},
			{"Name" : "data_l1_219_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "32"},
			{"Name" : "data_l1_320_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "76", "DependentChan" : "33"},
			{"Name" : "output_l1_021_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "34"},
			{"Name" : "output_l1_122_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "35"},
			{"Name" : "output_l1_223_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "36"},
			{"Name" : "output_l1_324_i", "Type" : "Memory", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "37"},
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "126", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "param_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "102", "DependentChan" : "147", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "84", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_32s_32s_32_1_1_U190", "Parent" : "83"},
	{"ID" : "85", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_32ns_32ns_64_1_1_U191", "Parent" : "83"},
	{"ID" : "86", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U192", "Parent" : "83"},
	{"ID" : "87", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U193", "Parent" : "83"},
	{"ID" : "88", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U194", "Parent" : "83"},
	{"ID" : "89", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mul_8s_8s_16_1_1_U195", "Parent" : "83"},
	{"ID" : "90", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U196", "Parent" : "83"},
	{"ID" : "91", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U197", "Parent" : "83"},
	{"ID" : "92", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U198", "Parent" : "83"},
	{"ID" : "93", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U199", "Parent" : "83"},
	{"ID" : "94", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U200", "Parent" : "83"},
	{"ID" : "95", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U201", "Parent" : "83"},
	{"ID" : "96", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U202", "Parent" : "83"},
	{"ID" : "97", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U203", "Parent" : "83"},
	{"ID" : "98", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_2_1_U204", "Parent" : "83"},
	{"ID" : "99", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U205", "Parent" : "83"},
	{"ID" : "100", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U206", "Parent" : "83"},
	{"ID" : "101", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.mac_muladd_8s_8s_32ns_32_1_1_U207", "Parent" : "83"},
	{"ID" : "102", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0", "Parent" : "29", "Child" : ["103", "104", "105", "106", "107", "108", "109", "110", "111", "112"],
		"CDFG" : "runOutputL1toL2",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_86", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_86", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_110", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_132", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_132", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_86", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_112", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_132", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_132", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_114", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "8", "FromAddress" : "output_l2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_134", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_134", "ToFinalSV" : "8", "ToAddress" : "output_l2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_116", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_118", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_118", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_90", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_116", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_137", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_137", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_118", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_118", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_116", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_118", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_118", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_137", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_137", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_120", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_120", "FromFinalSV" : "8", "FromAddress" : "output_l2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_139", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_139", "ToFinalSV" : "8", "ToAddress" : "output_l2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_122", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_124", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_124", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_94", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_122", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_142", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_142", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_124", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_124", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_122", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_124", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_124", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_142", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_142", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_126", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_126", "FromFinalSV" : "8", "FromAddress" : "output_l2_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_144", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_144", "ToFinalSV" : "8", "ToAddress" : "output_l2_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_98", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_128", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_130", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_130", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state8_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_98", "FromInitialSV" : "7", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_128", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_147", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_147", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_130", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_130", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_98", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_128", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_130", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_130", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_147", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_147", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_132", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_132", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_86", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_110", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_132", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_132", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_112", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_134", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_134", "FromFinalSV" : "8", "FromAddress" : "output_l2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_114", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "8", "ToAddress" : "output_l2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_137", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_137", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_90", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_116", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_137", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_137", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_118", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_118", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_139", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_139", "FromFinalSV" : "8", "FromAddress" : "output_l2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_120", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_120", "ToFinalSV" : "8", "ToAddress" : "output_l2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_142", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_142", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_94", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_122", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_142", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_142", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_124", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_124", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_144", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_144", "FromFinalSV" : "8", "FromAddress" : "output_l2_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_126", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_126", "ToFinalSV" : "8", "ToAddress" : "output_l2_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:100:94)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_147", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_147", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state8_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_98", "ToInitialSV" : "7", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_128", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state8_pp0_iter3_stage0", "ap_enable_state9_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state9_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_147", "FromInitialSV" : "8", "FromFinalState" : "ap_enable_state9_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_147", "FromFinalSV" : "8", "FromAddress" : "output_l2_reduction_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state9_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_130", "ToInitialSV" : "8", "ToFinalState" : "ap_enable_state9_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_130", "ToFinalSV" : "8", "ToAddress" : "output_l2_reduction_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:101:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "output_l1_021_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "34"},
			{"Name" : "output_l1_122_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "35"},
			{"Name" : "output_l1_223_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "36"},
			{"Name" : "output_l1_324_i", "Type" : "Memory", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "37"},
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "83", "DependentChan" : "147", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ko_1", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "127", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ko_1_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "123", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "38", "DependentChan" : "125", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "129", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "ro_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "co", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "128", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "co_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "39", "DependentChan" : "130", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "so_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_l2_reduction_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l2_reduction_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l2_reduction_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "output_l2_reduction_3", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "103", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.output_l2_reduction_0_U", "Parent" : "102"},
	{"ID" : "104", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.output_l2_reduction_1_U", "Parent" : "102"},
	{"ID" : "105", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.output_l2_reduction_2_U", "Parent" : "102"},
	{"ID" : "106", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.output_l2_reduction_3_U", "Parent" : "102"},
	{"ID" : "107", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_32ns_32ns_64_1_1_U238", "Parent" : "102"},
	{"ID" : "108", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_mul_11s_11s_11_4_1_U239", "Parent" : "102"},
	{"ID" : "109", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_mul_11s_11s_11_4_1_U240", "Parent" : "102"},
	{"ID" : "110", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mul_mul_11s_11s_11_4_1_U241", "Parent" : "102"},
	{"ID" : "111", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.mac_muladd_6s_6s_6ns_6_4_1_U242", "Parent" : "102"},
	{"ID" : "112", "Level" : "11", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ama_addmuladd_11ns_11s_11s_11ns_11_4_1_U243", "Parent" : "102"},
	{"ID" : "113", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.param_c_U", "Parent" : "29"},
	{"ID" : "114", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.param_c1_U", "Parent" : "29"},
	{"ID" : "115", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ko_1_c_U", "Parent" : "29"},
	{"ID" : "116", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_c_U", "Parent" : "29"},
	{"ID" : "117", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_c2_U", "Parent" : "29"},
	{"ID" : "118", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c_U", "Parent" : "29"},
	{"ID" : "119", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c3_U", "Parent" : "29"},
	{"ID" : "120", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c_U", "Parent" : "29"},
	{"ID" : "121", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c4_U", "Parent" : "29"},
	{"ID" : "122", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ho_c_U", "Parent" : "29"},
	{"ID" : "123", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ho_c5_U", "Parent" : "29"},
	{"ID" : "124", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.wo_c_U", "Parent" : "29"},
	{"ID" : "125", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.wo_c6_U", "Parent" : "29"},
	{"ID" : "126", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.param_c7_U", "Parent" : "29"},
	{"ID" : "127", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ko_1_c8_U", "Parent" : "29"},
	{"ID" : "128", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.co_c9_U", "Parent" : "29"},
	{"ID" : "129", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.ro_c10_U", "Parent" : "29"},
	{"ID" : "130", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.so_c11_U", "Parent" : "29"},
	{"ID" : "131", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_0_U", "Parent" : "29"},
	{"ID" : "132", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_1_U", "Parent" : "29"},
	{"ID" : "133", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_2_U", "Parent" : "29"},
	{"ID" : "134", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_3_U", "Parent" : "29"},
	{"ID" : "135", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_0_U", "Parent" : "29"},
	{"ID" : "136", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_1_U", "Parent" : "29"},
	{"ID" : "137", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_2_U", "Parent" : "29"},
	{"ID" : "138", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_3_U", "Parent" : "29"},
	{"ID" : "139", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_0_U", "Parent" : "29"},
	{"ID" : "140", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_1_U", "Parent" : "29"},
	{"ID" : "141", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_2_U", "Parent" : "29"},
	{"ID" : "142", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_3_U", "Parent" : "29"},
	{"ID" : "143", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_0_U", "Parent" : "29"},
	{"ID" : "144", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_1_U", "Parent" : "29"},
	{"ID" : "145", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_2_U", "Parent" : "29"},
	{"ID" : "146", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_3_U", "Parent" : "29"},
	{"ID" : "147", "Level" : "10", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.LOOP_K_OUTER_proc_U0.grp_LOOP_K_OUTER_proc_wrapper_fu_119.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc15_U0.dataflow_in_loop_LOOP_S_OUTER_U0.param_c12_U", "Parent" : "29"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.OUTPUT_DRAM_WRITE_proc_U0", "Parent" : "1", "Child" : ["149", "150", "151", "152", "153", "154"],
		"CDFG" : "OUTPUT_DRAM_WRITE_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "897", "EstimateLatencyMax" : "3249",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "param", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "199", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "param_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "gmem3", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem3_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_R", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem3_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "conv_out", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "187", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "conv_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "kmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "195", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "kmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "hmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "183", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "hmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "2", "DependentChan" : "185", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "197", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "rmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "cmo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "196", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "cmo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "smo", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "5", "DependentChan" : "198", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "smo_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "output_l2_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "168"},
			{"Name" : "output_l2_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "169"},
			{"Name" : "output_l2_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "170"},
			{"Name" : "output_l2_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "167"},
			{"Name" : "bias_l2_0", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "155"},
			{"Name" : "bias_l2_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "156"},
			{"Name" : "bias_l2_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "157"},
			{"Name" : "bias_l2_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "158"}]},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.OUTPUT_DRAM_WRITE_proc_U0.mul_30s_30s_30_1_1_U450", "Parent" : "148"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.OUTPUT_DRAM_WRITE_proc_U0.mul_30s_30s_30_1_1_U451", "Parent" : "148"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.OUTPUT_DRAM_WRITE_proc_U0.mul_30s_30s_30_1_1_U452", "Parent" : "148"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.OUTPUT_DRAM_WRITE_proc_U0.mul_30s_30s_30_1_1_U453", "Parent" : "148"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.OUTPUT_DRAM_WRITE_proc_U0.mul_30s_30s_30_1_1_U454", "Parent" : "148"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.OUTPUT_DRAM_WRITE_proc_U0.ama_addmuladd_11ns_11ns_11s_11ns_11_4_1_U455", "Parent" : "148"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.bias_l2_0_U", "Parent" : "1"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.bias_l2_1_U", "Parent" : "1"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.bias_l2_2_U", "Parent" : "1"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.bias_l2_3_U", "Parent" : "1"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.weight_l2_0_U", "Parent" : "1"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.weight_l2_1_U", "Parent" : "1"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.weight_l2_2_U", "Parent" : "1"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.weight_l2_3_U", "Parent" : "1"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.data_l2_0_U", "Parent" : "1"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.data_l2_1_U", "Parent" : "1"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.data_l2_2_U", "Parent" : "1"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.data_l2_3_U", "Parent" : "1"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.output_l2_0_U", "Parent" : "1"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.output_l2_1_U", "Parent" : "1"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.output_l2_2_U", "Parent" : "1"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.output_l2_3_U", "Parent" : "1"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.param_c_U", "Parent" : "1"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.param_c1_U", "Parent" : "1"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.param_c2_U", "Parent" : "1"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.kmo_c_U", "Parent" : "1"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.kmo_c3_U", "Parent" : "1"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.bias_in_c_U", "Parent" : "1"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.cmo_c_U", "Parent" : "1"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.cmo_c4_U", "Parent" : "1"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.rmo_c_U", "Parent" : "1"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.smo_c_U", "Parent" : "1"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.weight_in_c_U", "Parent" : "1"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.hmo_c_U", "Parent" : "1"},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.hmo_c5_U", "Parent" : "1"},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.wmo_c_U", "Parent" : "1"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.wmo_c6_U", "Parent" : "1"},
	{"ID" : "186", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.data_in_c_U", "Parent" : "1"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.conv_out_c_U", "Parent" : "1"},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.param_L1_TILENUM_S_c_U", "Parent" : "1"},
	{"ID" : "189", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.lshr_ln282_cast_c_U", "Parent" : "1"},
	{"ID" : "190", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.lshr_ln282_1_cast_c_U", "Parent" : "1"},
	{"ID" : "191", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.lshr_ln282_2_cast_c_U", "Parent" : "1"},
	{"ID" : "192", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.lshr_ln282_3_cast_c_U", "Parent" : "1"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.param_L1_TILENUM_K_c_U", "Parent" : "1"},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.param_c7_U", "Parent" : "1"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.kmo_c8_U", "Parent" : "1"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.cmo_c9_U", "Parent" : "1"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.rmo_c10_U", "Parent" : "1"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.smo_c11_U", "Parent" : "1"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.param_c12_U", "Parent" : "1"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.start_for_BIAS_DRAM_READ_proc_U0_U", "Parent" : "1"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.start_for_WEIGHT_DRAM_READ_proc_U0_U", "Parent" : "1"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.dataflow_in_loop_LOOP_S_MOST_OUTER_U0.start_for_INPUT_DRAM_READ_proc_U0_U", "Parent" : "1"}]}


set ArgLastReadFirstWriteLatency {
	dataflow_parent_loop_proc {
		param_L2_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		kmo {Type I LastRead 0 FirstWrite -1}
		bias_in {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type I LastRead 12 FirstWrite -1}
		cmo {Type I LastRead 0 FirstWrite -1}
		rmo {Type I LastRead 0 FirstWrite -1}
		weight_in {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 17 FirstWrite -1}
		hmo {Type I LastRead 0 FirstWrite -1}
		wmo {Type I LastRead 0 FirstWrite -1}
		data_in {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type I LastRead 15 FirstWrite -1}
		gmem3 {Type IO LastRead 62 FirstWrite 9}
		conv_out {Type I LastRead 0 FirstWrite -1}
		bias_l2_0 {Type IO LastRead -1 FirstWrite -1}
		bias_l2_1 {Type IO LastRead -1 FirstWrite -1}
		bias_l2_2 {Type IO LastRead -1 FirstWrite -1}
		bias_l2_3 {Type IO LastRead -1 FirstWrite -1}
		weight_l2_0 {Type IO LastRead -1 FirstWrite -1}
		weight_l2_1 {Type IO LastRead -1 FirstWrite -1}
		weight_l2_2 {Type IO LastRead -1 FirstWrite -1}
		weight_l2_3 {Type IO LastRead -1 FirstWrite -1}
		data_l2_0 {Type IO LastRead -1 FirstWrite -1}
		data_l2_1 {Type IO LastRead -1 FirstWrite -1}
		data_l2_2 {Type IO LastRead -1 FirstWrite -1}
		data_l2_3 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}
		output_l2_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_MOST_OUTER {
		param {Type I LastRead 0 FirstWrite -1}
		kmo {Type I LastRead 0 FirstWrite -1}
		bias_in {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type I LastRead 12 FirstWrite -1}
		cmo {Type I LastRead 0 FirstWrite -1}
		rmo {Type I LastRead 0 FirstWrite -1}
		smo {Type I LastRead 0 FirstWrite -1}
		weight_in {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 17 FirstWrite -1}
		hmo {Type I LastRead 0 FirstWrite -1}
		wmo {Type I LastRead 0 FirstWrite -1}
		data_in {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type I LastRead 15 FirstWrite -1}
		gmem3 {Type IO LastRead 62 FirstWrite 9}
		conv_out {Type I LastRead 0 FirstWrite -1}
		bias_l2_0 {Type IO LastRead -1 FirstWrite -1}
		bias_l2_1 {Type IO LastRead -1 FirstWrite -1}
		bias_l2_2 {Type IO LastRead -1 FirstWrite -1}
		bias_l2_3 {Type IO LastRead -1 FirstWrite -1}
		weight_l2_0 {Type IO LastRead -1 FirstWrite -1}
		weight_l2_1 {Type IO LastRead -1 FirstWrite -1}
		weight_l2_2 {Type IO LastRead -1 FirstWrite -1}
		weight_l2_3 {Type IO LastRead -1 FirstWrite -1}
		data_l2_0 {Type IO LastRead -1 FirstWrite -1}
		data_l2_1 {Type IO LastRead -1 FirstWrite -1}
		data_l2_2 {Type IO LastRead -1 FirstWrite -1}
		data_l2_3 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}
		output_l2_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_MOST_OUTER_entry34 {
		param {Type I LastRead 0 FirstWrite -1}
		kmo {Type I LastRead 0 FirstWrite -1}
		bias_in {Type I LastRead 0 FirstWrite -1}
		cmo {Type I LastRead 0 FirstWrite -1}
		rmo {Type I LastRead 0 FirstWrite -1}
		smo {Type I LastRead 0 FirstWrite -1}
		weight_in {Type I LastRead 0 FirstWrite -1}
		hmo {Type I LastRead 0 FirstWrite -1}
		wmo {Type I LastRead 0 FirstWrite -1}
		data_in {Type I LastRead 0 FirstWrite -1}
		conv_out {Type I LastRead 0 FirstWrite -1}
		param_c {Type O LastRead -1 FirstWrite 0}
		param_c1 {Type O LastRead -1 FirstWrite 0}
		param_c2 {Type O LastRead -1 FirstWrite 0}
		kmo_c {Type O LastRead -1 FirstWrite 0}
		kmo_c3 {Type O LastRead -1 FirstWrite 0}
		bias_in_c {Type O LastRead -1 FirstWrite 0}
		cmo_c {Type O LastRead -1 FirstWrite 0}
		cmo_c4 {Type O LastRead -1 FirstWrite 0}
		rmo_c {Type O LastRead -1 FirstWrite 0}
		smo_c {Type O LastRead -1 FirstWrite 0}
		weight_in_c {Type O LastRead -1 FirstWrite 0}
		hmo_c {Type O LastRead -1 FirstWrite 0}
		hmo_c5 {Type O LastRead -1 FirstWrite 0}
		wmo_c {Type O LastRead -1 FirstWrite 0}
		wmo_c6 {Type O LastRead -1 FirstWrite 0}
		data_in_c {Type O LastRead -1 FirstWrite 0}
		conv_out_c {Type O LastRead -1 FirstWrite 0}
		param_L1_TILENUM_S_c {Type O LastRead -1 FirstWrite 0}
		lshr_ln282_cast_c {Type O LastRead -1 FirstWrite 0}
		lshr_ln282_1_cast_c {Type O LastRead -1 FirstWrite 0}
		lshr_ln282_2_cast_c {Type O LastRead -1 FirstWrite 0}
		lshr_ln282_3_cast_c {Type O LastRead -1 FirstWrite 0}
		param_L1_TILENUM_K_c {Type O LastRead -1 FirstWrite 0}}
	BIAS_DRAM_READ_proc {
		param {Type I LastRead 0 FirstWrite -1}
		kmo {Type I LastRead 0 FirstWrite -1}
		bias_in {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type I LastRead 12 FirstWrite -1}
		bias_l2_0 {Type O LastRead -1 FirstWrite 10}
		bias_l2_1 {Type O LastRead -1 FirstWrite 11}
		bias_l2_2 {Type O LastRead -1 FirstWrite 12}
		bias_l2_3 {Type O LastRead -1 FirstWrite 13}}
	WEIGHT_DRAM_READ_proc {
		param {Type I LastRead 0 FirstWrite -1}
		kmo {Type I LastRead 0 FirstWrite -1}
		cmo {Type I LastRead 0 FirstWrite -1}
		rmo {Type I LastRead 0 FirstWrite -1}
		smo {Type I LastRead 0 FirstWrite -1}
		weight_in {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 17 FirstWrite -1}
		param_out {Type O LastRead -1 FirstWrite 0}
		kmo_out {Type O LastRead -1 FirstWrite 0}
		cmo_out {Type O LastRead -1 FirstWrite 0}
		rmo_out {Type O LastRead -1 FirstWrite 0}
		smo_out {Type O LastRead -1 FirstWrite 0}
		weight_l2_0 {Type O LastRead -1 FirstWrite 18}
		weight_l2_1 {Type O LastRead -1 FirstWrite 18}
		weight_l2_2 {Type O LastRead -1 FirstWrite 18}
		weight_l2_3 {Type O LastRead -1 FirstWrite 18}}
	INPUT_DRAM_READ_proc {
		param {Type I LastRead 0 FirstWrite -1}
		cmo {Type I LastRead 0 FirstWrite -1}
		hmo {Type I LastRead 0 FirstWrite -1}
		wmo {Type I LastRead 0 FirstWrite -1}
		data_in {Type I LastRead 0 FirstWrite -1}
		gmem2 {Type I LastRead 15 FirstWrite -1}
		data_l2_0 {Type O LastRead -1 FirstWrite 16}
		data_l2_1 {Type O LastRead -1 FirstWrite 16}
		data_l2_2 {Type O LastRead -1 FirstWrite 16}
		data_l2_3 {Type O LastRead -1 FirstWrite 16}}
	LOOP_K_OUTER_proc {
		param_L1_TILENUM_K {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_3_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_2_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_1_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		param_out {Type O LastRead -1 FirstWrite 0}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}}
	LOOP_K_OUTER_proc_wrapper {
		param_L1_TILENUM_K {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_3_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_2_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_1_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc19 {
		lshr_ln282_3_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_2_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_1_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc18 {
		lshr_ln282_2_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_1_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc17 {
		lshr_ln282_1_cast {Type I LastRead 0 FirstWrite -1}
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc16 {
		lshr_ln282_cast {Type I LastRead 0 FirstWrite -1}
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc15 {
		param_L1_TILENUM_S {Type I LastRead 0 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_OUTER {
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_LOOP_S_OUTER_entry28 {
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		param_out {Type O LastRead -1 FirstWrite 0}
		param_out1 {Type O LastRead -1 FirstWrite 0}
		ko_1_out {Type O LastRead -1 FirstWrite 0}
		co_out {Type O LastRead -1 FirstWrite 0}
		co_out2 {Type O LastRead -1 FirstWrite 0}
		ro_out {Type O LastRead -1 FirstWrite 0}
		ro_out3 {Type O LastRead -1 FirstWrite 0}
		so_out {Type O LastRead -1 FirstWrite 0}
		so_out4 {Type O LastRead -1 FirstWrite 0}
		ho_out {Type O LastRead -1 FirstWrite 0}
		ho_out5 {Type O LastRead -1 FirstWrite 0}
		wo_out {Type O LastRead -1 FirstWrite 0}
		wo_out6 {Type O LastRead -1 FirstWrite 0}}
	runWeight2Reg {
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		weight_l2_0 {Type I LastRead 10 FirstWrite -1}
		weight_l2_1 {Type I LastRead 10 FirstWrite -1}
		weight_l2_2 {Type I LastRead 10 FirstWrite -1}
		weight_l2_3 {Type I LastRead 10 FirstWrite -1}
		param_out {Type O LastRead -1 FirstWrite 0}
		ko_1_out {Type O LastRead -1 FirstWrite 0}
		co_out {Type O LastRead -1 FirstWrite 0}
		ro_out {Type O LastRead -1 FirstWrite 0}
		so_out {Type O LastRead -1 FirstWrite 0}}
	runDataL2toL1 {
		data_l1_017_i {Type O LastRead -1 FirstWrite 8}
		data_l1_118_i {Type O LastRead -1 FirstWrite 8}
		data_l1_219_i {Type O LastRead -1 FirstWrite 8}
		data_l1_320_i {Type O LastRead -1 FirstWrite 8}
		param {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		data_l2_0 {Type I LastRead 7 FirstWrite -1}
		data_l2_1 {Type I LastRead 7 FirstWrite -1}
		data_l2_2 {Type I LastRead 7 FirstWrite -1}
		data_l2_3 {Type I LastRead 7 FirstWrite -1}}
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
		data_l1_017_i {Type I LastRead 2 FirstWrite -1}
		data_l1_118_i {Type I LastRead 2 FirstWrite -1}
		data_l1_219_i {Type I LastRead 2 FirstWrite -1}
		data_l1_320_i {Type I LastRead 2 FirstWrite -1}
		output_l1_021_i {Type O LastRead -1 FirstWrite 3}
		output_l1_122_i {Type O LastRead -1 FirstWrite 3}
		output_l1_223_i {Type O LastRead -1 FirstWrite 3}
		output_l1_324_i {Type O LastRead -1 FirstWrite 3}
		param {Type I LastRead 0 FirstWrite -1}
		param_out {Type O LastRead -1 FirstWrite 0}}
	runOutputL1toL2 {
		output_l1_021_i {Type I LastRead 7 FirstWrite -1}
		output_l1_122_i {Type I LastRead 8 FirstWrite -1}
		output_l1_223_i {Type I LastRead 8 FirstWrite -1}
		output_l1_324_i {Type I LastRead 8 FirstWrite -1}
		param {Type I LastRead 0 FirstWrite -1}
		ko_1 {Type I LastRead 0 FirstWrite -1}
		ho {Type I LastRead 0 FirstWrite -1}
		wo {Type I LastRead 0 FirstWrite -1}
		ro {Type I LastRead 0 FirstWrite -1}
		co {Type I LastRead 0 FirstWrite -1}
		so {Type I LastRead 0 FirstWrite -1}
		output_l2_0 {Type O LastRead -1 FirstWrite 8}
		output_l2_1 {Type O LastRead -1 FirstWrite 8}
		output_l2_2 {Type O LastRead -1 FirstWrite 8}
		output_l2_3 {Type O LastRead -1 FirstWrite 8}
		output_l2_reduction_0 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_1 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_2 {Type IO LastRead -1 FirstWrite -1}
		output_l2_reduction_3 {Type IO LastRead -1 FirstWrite -1}}
	OUTPUT_DRAM_WRITE_proc {
		param {Type I LastRead 0 FirstWrite -1}
		gmem3 {Type IO LastRead 62 FirstWrite 9}
		conv_out {Type I LastRead 0 FirstWrite -1}
		kmo {Type I LastRead 0 FirstWrite -1}
		hmo {Type I LastRead 0 FirstWrite -1}
		wmo {Type I LastRead 0 FirstWrite -1}
		rmo {Type I LastRead 0 FirstWrite -1}
		cmo {Type I LastRead 0 FirstWrite -1}
		smo {Type I LastRead 0 FirstWrite -1}
		output_l2_1 {Type I LastRead 29 FirstWrite -1}
		output_l2_2 {Type I LastRead 44 FirstWrite -1}
		output_l2_3 {Type I LastRead 44 FirstWrite -1}
		output_l2_0 {Type I LastRead 6 FirstWrite -1}
		bias_l2_0 {Type I LastRead 7 FirstWrite -1}
		bias_l2_1 {Type I LastRead 7 FirstWrite -1}
		bias_l2_2 {Type I LastRead 7 FirstWrite -1}
		bias_l2_3 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3124", "Max" : "5476"}
	, {"Name" : "Interval", "Min" : "3124", "Max" : "5476"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	param_L2_TILENUM_S { ap_none {  { param_L2_TILENUM_S in_data 0 32 } } }
	param { ap_none {  { param in_data 0 1184 }  { param_ap_vld in_vld 0 1 } } }
	kmo { ap_none {  { kmo in_data 0 30 }  { kmo_ap_vld in_vld 0 1 } } }
	bias_in { ap_none {  { bias_in in_data 0 64 }  { bias_in_ap_vld in_vld 0 1 } } }
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN LEN 1 32 }  { m_axi_gmem0_AWSIZE SIZE 1 3 }  { m_axi_gmem0_AWBURST BURST 1 2 }  { m_axi_gmem0_AWLOCK LOCK 1 2 }  { m_axi_gmem0_AWCACHE CACHE 1 4 }  { m_axi_gmem0_AWPROT PROT 1 3 }  { m_axi_gmem0_AWQOS QOS 1 4 }  { m_axi_gmem0_AWREGION REGION 1 4 }  { m_axi_gmem0_AWUSER USER 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA DATA 1 8 }  { m_axi_gmem0_WSTRB STRB 1 1 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER USER 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN LEN 1 32 }  { m_axi_gmem0_ARSIZE SIZE 1 3 }  { m_axi_gmem0_ARBURST BURST 1 2 }  { m_axi_gmem0_ARLOCK LOCK 1 2 }  { m_axi_gmem0_ARCACHE CACHE 1 4 }  { m_axi_gmem0_ARPROT PROT 1 3 }  { m_axi_gmem0_ARQOS QOS 1 4 }  { m_axi_gmem0_ARREGION REGION 1 4 }  { m_axi_gmem0_ARUSER USER 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA DATA 0 8 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER USER 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER USER 0 1 } } }
	cmo { ap_none {  { cmo in_data 0 32 }  { cmo_ap_vld in_vld 0 1 } } }
	rmo { ap_none {  { rmo in_data 0 32 }  { rmo_ap_vld in_vld 0 1 } } }
	weight_in { ap_none {  { weight_in in_data 0 64 }  { weight_in_ap_vld in_vld 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN LEN 1 32 }  { m_axi_gmem1_AWSIZE SIZE 1 3 }  { m_axi_gmem1_AWBURST BURST 1 2 }  { m_axi_gmem1_AWLOCK LOCK 1 2 }  { m_axi_gmem1_AWCACHE CACHE 1 4 }  { m_axi_gmem1_AWPROT PROT 1 3 }  { m_axi_gmem1_AWQOS QOS 1 4 }  { m_axi_gmem1_AWREGION REGION 1 4 }  { m_axi_gmem1_AWUSER USER 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA DATA 1 8 }  { m_axi_gmem1_WSTRB STRB 1 1 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER USER 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN LEN 1 32 }  { m_axi_gmem1_ARSIZE SIZE 1 3 }  { m_axi_gmem1_ARBURST BURST 1 2 }  { m_axi_gmem1_ARLOCK LOCK 1 2 }  { m_axi_gmem1_ARCACHE CACHE 1 4 }  { m_axi_gmem1_ARPROT PROT 1 3 }  { m_axi_gmem1_ARQOS QOS 1 4 }  { m_axi_gmem1_ARREGION REGION 1 4 }  { m_axi_gmem1_ARUSER USER 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA DATA 0 8 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER USER 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER USER 0 1 } } }
	hmo { ap_none {  { hmo in_data 0 30 }  { hmo_ap_vld in_vld 0 1 } } }
	wmo { ap_none {  { wmo in_data 0 30 }  { wmo_ap_vld in_vld 0 1 } } }
	data_in { ap_none {  { data_in in_data 0 64 }  { data_in_ap_vld in_vld 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN LEN 1 32 }  { m_axi_gmem2_AWSIZE SIZE 1 3 }  { m_axi_gmem2_AWBURST BURST 1 2 }  { m_axi_gmem2_AWLOCK LOCK 1 2 }  { m_axi_gmem2_AWCACHE CACHE 1 4 }  { m_axi_gmem2_AWPROT PROT 1 3 }  { m_axi_gmem2_AWQOS QOS 1 4 }  { m_axi_gmem2_AWREGION REGION 1 4 }  { m_axi_gmem2_AWUSER USER 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA DATA 1 8 }  { m_axi_gmem2_WSTRB STRB 1 1 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER USER 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN LEN 1 32 }  { m_axi_gmem2_ARSIZE SIZE 1 3 }  { m_axi_gmem2_ARBURST BURST 1 2 }  { m_axi_gmem2_ARLOCK LOCK 1 2 }  { m_axi_gmem2_ARCACHE CACHE 1 4 }  { m_axi_gmem2_ARPROT PROT 1 3 }  { m_axi_gmem2_ARQOS QOS 1 4 }  { m_axi_gmem2_ARREGION REGION 1 4 }  { m_axi_gmem2_ARUSER USER 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA DATA 0 8 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER USER 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER USER 0 1 } } }
	gmem3 { m_axi {  { m_axi_gmem3_AWVALID VALID 1 1 }  { m_axi_gmem3_AWREADY READY 0 1 }  { m_axi_gmem3_AWADDR ADDR 1 64 }  { m_axi_gmem3_AWID ID 1 1 }  { m_axi_gmem3_AWLEN LEN 1 32 }  { m_axi_gmem3_AWSIZE SIZE 1 3 }  { m_axi_gmem3_AWBURST BURST 1 2 }  { m_axi_gmem3_AWLOCK LOCK 1 2 }  { m_axi_gmem3_AWCACHE CACHE 1 4 }  { m_axi_gmem3_AWPROT PROT 1 3 }  { m_axi_gmem3_AWQOS QOS 1 4 }  { m_axi_gmem3_AWREGION REGION 1 4 }  { m_axi_gmem3_AWUSER USER 1 1 }  { m_axi_gmem3_WVALID VALID 1 1 }  { m_axi_gmem3_WREADY READY 0 1 }  { m_axi_gmem3_WDATA DATA 1 32 }  { m_axi_gmem3_WSTRB STRB 1 4 }  { m_axi_gmem3_WLAST LAST 1 1 }  { m_axi_gmem3_WID ID 1 1 }  { m_axi_gmem3_WUSER USER 1 1 }  { m_axi_gmem3_ARVALID VALID 1 1 }  { m_axi_gmem3_ARREADY READY 0 1 }  { m_axi_gmem3_ARADDR ADDR 1 64 }  { m_axi_gmem3_ARID ID 1 1 }  { m_axi_gmem3_ARLEN LEN 1 32 }  { m_axi_gmem3_ARSIZE SIZE 1 3 }  { m_axi_gmem3_ARBURST BURST 1 2 }  { m_axi_gmem3_ARLOCK LOCK 1 2 }  { m_axi_gmem3_ARCACHE CACHE 1 4 }  { m_axi_gmem3_ARPROT PROT 1 3 }  { m_axi_gmem3_ARQOS QOS 1 4 }  { m_axi_gmem3_ARREGION REGION 1 4 }  { m_axi_gmem3_ARUSER USER 1 1 }  { m_axi_gmem3_RVALID VALID 0 1 }  { m_axi_gmem3_RREADY READY 1 1 }  { m_axi_gmem3_RDATA DATA 0 32 }  { m_axi_gmem3_RLAST LAST 0 1 }  { m_axi_gmem3_RID ID 0 1 }  { m_axi_gmem3_RUSER USER 0 1 }  { m_axi_gmem3_RRESP RESP 0 2 }  { m_axi_gmem3_BVALID VALID 0 1 }  { m_axi_gmem3_BREADY READY 1 1 }  { m_axi_gmem3_BRESP RESP 0 2 }  { m_axi_gmem3_BID ID 0 1 }  { m_axi_gmem3_BUSER USER 0 1 } } }
	conv_out { ap_none {  { conv_out in_data 0 64 }  { conv_out_ap_vld in_vld 0 1 } } }
}
