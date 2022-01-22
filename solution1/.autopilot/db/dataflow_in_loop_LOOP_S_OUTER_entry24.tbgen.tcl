set moduleName dataflow_in_loop_LOOP_S_OUTER_entry24
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
set C_modelName {dataflow_in_loop_LOOP_S_OUTER.entry24}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_read int 20 regular  }
	{ p_read1 int 20 regular  }
	{ ko_2 int 20 regular  }
	{ co_1 int 20 regular  }
	{ ro int 32 regular  }
	{ so int 32 regular  }
	{ p_read2 int 32 regular  }
	{ p_read3 int 32 regular  }
	{ ho int 20 regular  }
	{ wo int 20 regular  }
	{ p_read4 int 20 regular  }
	{ p_read5 int 32 regular  }
	{ p_read6 int 32 regular  }
	{ p_read7 int 20 regular  }
	{ p_out int 20 regular {fifo 1}  }
	{ p_out1 int 20 regular {fifo 1}  }
	{ ko_2_out int 20 regular {fifo 1}  }
	{ co_1_out int 18 regular {fifo 1}  }
	{ co_1_out2 int 20 regular {fifo 1}  }
	{ ro_out int 32 regular {fifo 1}  }
	{ ro_out3 int 20 regular {fifo 1}  }
	{ so_out int 32 regular {fifo 1}  }
	{ so_out4 int 20 regular {fifo 1}  }
	{ p_out5 int 32 regular {fifo 1}  }
	{ p_out6 int 32 regular {fifo 1}  }
	{ p_out7 int 32 regular {fifo 1}  }
	{ p_out8 int 32 regular {fifo 1}  }
	{ ho_out int 20 regular {fifo 1}  }
	{ ho_out9 int 20 regular {fifo 1}  }
	{ wo_out int 20 regular {fifo 1}  }
	{ wo_out10 int 20 regular {fifo 1}  }
	{ p_out11 int 20 regular {fifo 1}  }
	{ p_out12 int 32 regular {fifo 1}  }
	{ p_out13 int 32 regular {fifo 1}  }
	{ p_out14 int 20 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "ko_2", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "co_1", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "ro", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "so", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ho", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "wo", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 20, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ko_2_out", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "co_1_out", "interface" : "fifo", "bitwidth" : 18, "direction" : "WRITEONLY"} , 
 	{ "Name" : "co_1_out2", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ro_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ro_out3", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "so_out", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "so_out4", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out6", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out7", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out8", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ho_out", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ho_out9", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wo_out", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "wo_out10", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out11", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out12", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out13", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out14", "interface" : "fifo", "bitwidth" : 20, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 84
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 20 signal 0 } 
	{ p_read1 sc_in sc_lv 20 signal 1 } 
	{ ko_2 sc_in sc_lv 20 signal 2 } 
	{ co_1 sc_in sc_lv 20 signal 3 } 
	{ ro sc_in sc_lv 32 signal 4 } 
	{ so sc_in sc_lv 32 signal 5 } 
	{ p_read2 sc_in sc_lv 32 signal 6 } 
	{ p_read3 sc_in sc_lv 32 signal 7 } 
	{ ho sc_in sc_lv 20 signal 8 } 
	{ wo sc_in sc_lv 20 signal 9 } 
	{ p_read4 sc_in sc_lv 20 signal 10 } 
	{ p_read5 sc_in sc_lv 32 signal 11 } 
	{ p_read6 sc_in sc_lv 32 signal 12 } 
	{ p_read7 sc_in sc_lv 20 signal 13 } 
	{ p_out_din sc_out sc_lv 20 signal 14 } 
	{ p_out_full_n sc_in sc_logic 1 signal 14 } 
	{ p_out_write sc_out sc_logic 1 signal 14 } 
	{ p_out1_din sc_out sc_lv 20 signal 15 } 
	{ p_out1_full_n sc_in sc_logic 1 signal 15 } 
	{ p_out1_write sc_out sc_logic 1 signal 15 } 
	{ ko_2_out_din sc_out sc_lv 20 signal 16 } 
	{ ko_2_out_full_n sc_in sc_logic 1 signal 16 } 
	{ ko_2_out_write sc_out sc_logic 1 signal 16 } 
	{ co_1_out_din sc_out sc_lv 18 signal 17 } 
	{ co_1_out_full_n sc_in sc_logic 1 signal 17 } 
	{ co_1_out_write sc_out sc_logic 1 signal 17 } 
	{ co_1_out2_din sc_out sc_lv 20 signal 18 } 
	{ co_1_out2_full_n sc_in sc_logic 1 signal 18 } 
	{ co_1_out2_write sc_out sc_logic 1 signal 18 } 
	{ ro_out_din sc_out sc_lv 32 signal 19 } 
	{ ro_out_full_n sc_in sc_logic 1 signal 19 } 
	{ ro_out_write sc_out sc_logic 1 signal 19 } 
	{ ro_out3_din sc_out sc_lv 20 signal 20 } 
	{ ro_out3_full_n sc_in sc_logic 1 signal 20 } 
	{ ro_out3_write sc_out sc_logic 1 signal 20 } 
	{ so_out_din sc_out sc_lv 32 signal 21 } 
	{ so_out_full_n sc_in sc_logic 1 signal 21 } 
	{ so_out_write sc_out sc_logic 1 signal 21 } 
	{ so_out4_din sc_out sc_lv 20 signal 22 } 
	{ so_out4_full_n sc_in sc_logic 1 signal 22 } 
	{ so_out4_write sc_out sc_logic 1 signal 22 } 
	{ p_out5_din sc_out sc_lv 32 signal 23 } 
	{ p_out5_full_n sc_in sc_logic 1 signal 23 } 
	{ p_out5_write sc_out sc_logic 1 signal 23 } 
	{ p_out6_din sc_out sc_lv 32 signal 24 } 
	{ p_out6_full_n sc_in sc_logic 1 signal 24 } 
	{ p_out6_write sc_out sc_logic 1 signal 24 } 
	{ p_out7_din sc_out sc_lv 32 signal 25 } 
	{ p_out7_full_n sc_in sc_logic 1 signal 25 } 
	{ p_out7_write sc_out sc_logic 1 signal 25 } 
	{ p_out8_din sc_out sc_lv 32 signal 26 } 
	{ p_out8_full_n sc_in sc_logic 1 signal 26 } 
	{ p_out8_write sc_out sc_logic 1 signal 26 } 
	{ ho_out_din sc_out sc_lv 20 signal 27 } 
	{ ho_out_full_n sc_in sc_logic 1 signal 27 } 
	{ ho_out_write sc_out sc_logic 1 signal 27 } 
	{ ho_out9_din sc_out sc_lv 20 signal 28 } 
	{ ho_out9_full_n sc_in sc_logic 1 signal 28 } 
	{ ho_out9_write sc_out sc_logic 1 signal 28 } 
	{ wo_out_din sc_out sc_lv 20 signal 29 } 
	{ wo_out_full_n sc_in sc_logic 1 signal 29 } 
	{ wo_out_write sc_out sc_logic 1 signal 29 } 
	{ wo_out10_din sc_out sc_lv 20 signal 30 } 
	{ wo_out10_full_n sc_in sc_logic 1 signal 30 } 
	{ wo_out10_write sc_out sc_logic 1 signal 30 } 
	{ p_out11_din sc_out sc_lv 20 signal 31 } 
	{ p_out11_full_n sc_in sc_logic 1 signal 31 } 
	{ p_out11_write sc_out sc_logic 1 signal 31 } 
	{ p_out12_din sc_out sc_lv 32 signal 32 } 
	{ p_out12_full_n sc_in sc_logic 1 signal 32 } 
	{ p_out12_write sc_out sc_logic 1 signal 32 } 
	{ p_out13_din sc_out sc_lv 32 signal 33 } 
	{ p_out13_full_n sc_in sc_logic 1 signal 33 } 
	{ p_out13_write sc_out sc_logic 1 signal 33 } 
	{ p_out14_din sc_out sc_lv 20 signal 34 } 
	{ p_out14_full_n sc_in sc_logic 1 signal 34 } 
	{ p_out14_write sc_out sc_logic 1 signal 34 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "ko_2", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ko_2", "role": "default" }} , 
 	{ "name": "co_1", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "co_1", "role": "default" }} , 
 	{ "name": "ro", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ro", "role": "default" }} , 
 	{ "name": "so", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "so", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "ho", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ho", "role": "default" }} , 
 	{ "name": "wo", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "wo", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_out", "role": "din" }} , 
 	{ "name": "p_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out", "role": "full_n" }} , 
 	{ "name": "p_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out", "role": "write" }} , 
 	{ "name": "p_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_out1", "role": "din" }} , 
 	{ "name": "p_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out1", "role": "full_n" }} , 
 	{ "name": "p_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out1", "role": "write" }} , 
 	{ "name": "ko_2_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ko_2_out", "role": "din" }} , 
 	{ "name": "ko_2_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2_out", "role": "full_n" }} , 
 	{ "name": "ko_2_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ko_2_out", "role": "write" }} , 
 	{ "name": "co_1_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":18, "type": "signal", "bundle":{"name": "co_1_out", "role": "din" }} , 
 	{ "name": "co_1_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1_out", "role": "full_n" }} , 
 	{ "name": "co_1_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1_out", "role": "write" }} , 
 	{ "name": "co_1_out2_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "co_1_out2", "role": "din" }} , 
 	{ "name": "co_1_out2_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1_out2", "role": "full_n" }} , 
 	{ "name": "co_1_out2_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "co_1_out2", "role": "write" }} , 
 	{ "name": "ro_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ro_out", "role": "din" }} , 
 	{ "name": "ro_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro_out", "role": "full_n" }} , 
 	{ "name": "ro_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro_out", "role": "write" }} , 
 	{ "name": "ro_out3_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ro_out3", "role": "din" }} , 
 	{ "name": "ro_out3_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro_out3", "role": "full_n" }} , 
 	{ "name": "ro_out3_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ro_out3", "role": "write" }} , 
 	{ "name": "so_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "so_out", "role": "din" }} , 
 	{ "name": "so_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so_out", "role": "full_n" }} , 
 	{ "name": "so_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so_out", "role": "write" }} , 
 	{ "name": "so_out4_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "so_out4", "role": "din" }} , 
 	{ "name": "so_out4_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so_out4", "role": "full_n" }} , 
 	{ "name": "so_out4_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "so_out4", "role": "write" }} , 
 	{ "name": "p_out5_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out5", "role": "din" }} , 
 	{ "name": "p_out5_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out5", "role": "full_n" }} , 
 	{ "name": "p_out5_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out5", "role": "write" }} , 
 	{ "name": "p_out6_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out6", "role": "din" }} , 
 	{ "name": "p_out6_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out6", "role": "full_n" }} , 
 	{ "name": "p_out6_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out6", "role": "write" }} , 
 	{ "name": "p_out7_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out7", "role": "din" }} , 
 	{ "name": "p_out7_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out7", "role": "full_n" }} , 
 	{ "name": "p_out7_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out7", "role": "write" }} , 
 	{ "name": "p_out8_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out8", "role": "din" }} , 
 	{ "name": "p_out8_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out8", "role": "full_n" }} , 
 	{ "name": "p_out8_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out8", "role": "write" }} , 
 	{ "name": "ho_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ho_out", "role": "din" }} , 
 	{ "name": "ho_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho_out", "role": "full_n" }} , 
 	{ "name": "ho_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho_out", "role": "write" }} , 
 	{ "name": "ho_out9_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "ho_out9", "role": "din" }} , 
 	{ "name": "ho_out9_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho_out9", "role": "full_n" }} , 
 	{ "name": "ho_out9_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ho_out9", "role": "write" }} , 
 	{ "name": "wo_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "wo_out", "role": "din" }} , 
 	{ "name": "wo_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo_out", "role": "full_n" }} , 
 	{ "name": "wo_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo_out", "role": "write" }} , 
 	{ "name": "wo_out10_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "wo_out10", "role": "din" }} , 
 	{ "name": "wo_out10_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo_out10", "role": "full_n" }} , 
 	{ "name": "wo_out10_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "wo_out10", "role": "write" }} , 
 	{ "name": "p_out11_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_out11", "role": "din" }} , 
 	{ "name": "p_out11_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out11", "role": "full_n" }} , 
 	{ "name": "p_out11_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out11", "role": "write" }} , 
 	{ "name": "p_out12_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out12", "role": "din" }} , 
 	{ "name": "p_out12_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out12", "role": "full_n" }} , 
 	{ "name": "p_out12_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out12", "role": "write" }} , 
 	{ "name": "p_out13_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_out13", "role": "din" }} , 
 	{ "name": "p_out13_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out13", "role": "full_n" }} , 
 	{ "name": "p_out13_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out13", "role": "write" }} , 
 	{ "name": "p_out14_din", "direction": "out", "datatype": "sc_lv", "bitwidth":20, "type": "signal", "bundle":{"name": "p_out14", "role": "din" }} , 
 	{ "name": "p_out14_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out14", "role": "full_n" }} , 
 	{ "name": "p_out14_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_out14", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "ro_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ro_out3", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ro_out3_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "so_out4", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "so_out4_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out5", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out5_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out6", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out6_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out7", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out7_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out8", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out8_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "ho_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "ho_out9", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "ho_out9_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "wo_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "wo_out10", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "wo_out10_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out11", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "2",
				"BlockSignal" : [
					{"Name" : "p_out11_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out12", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out12_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out13", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "3",
				"BlockSignal" : [
					{"Name" : "p_out13_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "p_out14", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0", "DependentChanDepth" : "4",
				"BlockSignal" : [
					{"Name" : "p_out14_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
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
		p_out14 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 20 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 20 } } }
	ko_2 { ap_none {  { ko_2 in_data 0 20 } } }
	co_1 { ap_none {  { co_1 in_data 0 20 } } }
	ro { ap_none {  { ro in_data 0 32 } } }
	so { ap_none {  { so in_data 0 32 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 32 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 32 } } }
	ho { ap_none {  { ho in_data 0 20 } } }
	wo { ap_none {  { wo in_data 0 20 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 20 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 32 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 32 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 20 } } }
	p_out { ap_fifo {  { p_out_din fifo_data 1 20 }  { p_out_full_n fifo_status 0 1 }  { p_out_write fifo_update 1 1 } } }
	p_out1 { ap_fifo {  { p_out1_din fifo_data 1 20 }  { p_out1_full_n fifo_status 0 1 }  { p_out1_write fifo_update 1 1 } } }
	ko_2_out { ap_fifo {  { ko_2_out_din fifo_data 1 20 }  { ko_2_out_full_n fifo_status 0 1 }  { ko_2_out_write fifo_update 1 1 } } }
	co_1_out { ap_fifo {  { co_1_out_din fifo_data 1 18 }  { co_1_out_full_n fifo_status 0 1 }  { co_1_out_write fifo_update 1 1 } } }
	co_1_out2 { ap_fifo {  { co_1_out2_din fifo_data 1 20 }  { co_1_out2_full_n fifo_status 0 1 }  { co_1_out2_write fifo_update 1 1 } } }
	ro_out { ap_fifo {  { ro_out_din fifo_data 1 32 }  { ro_out_full_n fifo_status 0 1 }  { ro_out_write fifo_update 1 1 } } }
	ro_out3 { ap_fifo {  { ro_out3_din fifo_data 1 20 }  { ro_out3_full_n fifo_status 0 1 }  { ro_out3_write fifo_update 1 1 } } }
	so_out { ap_fifo {  { so_out_din fifo_data 1 32 }  { so_out_full_n fifo_status 0 1 }  { so_out_write fifo_update 1 1 } } }
	so_out4 { ap_fifo {  { so_out4_din fifo_data 1 20 }  { so_out4_full_n fifo_status 0 1 }  { so_out4_write fifo_update 1 1 } } }
	p_out5 { ap_fifo {  { p_out5_din fifo_data 1 32 }  { p_out5_full_n fifo_status 0 1 }  { p_out5_write fifo_update 1 1 } } }
	p_out6 { ap_fifo {  { p_out6_din fifo_data 1 32 }  { p_out6_full_n fifo_status 0 1 }  { p_out6_write fifo_update 1 1 } } }
	p_out7 { ap_fifo {  { p_out7_din fifo_data 1 32 }  { p_out7_full_n fifo_status 0 1 }  { p_out7_write fifo_update 1 1 } } }
	p_out8 { ap_fifo {  { p_out8_din fifo_data 1 32 }  { p_out8_full_n fifo_status 0 1 }  { p_out8_write fifo_update 1 1 } } }
	ho_out { ap_fifo {  { ho_out_din fifo_data 1 20 }  { ho_out_full_n fifo_status 0 1 }  { ho_out_write fifo_update 1 1 } } }
	ho_out9 { ap_fifo {  { ho_out9_din fifo_data 1 20 }  { ho_out9_full_n fifo_status 0 1 }  { ho_out9_write fifo_update 1 1 } } }
	wo_out { ap_fifo {  { wo_out_din fifo_data 1 20 }  { wo_out_full_n fifo_status 0 1 }  { wo_out_write fifo_update 1 1 } } }
	wo_out10 { ap_fifo {  { wo_out10_din fifo_data 1 20 }  { wo_out10_full_n fifo_status 0 1 }  { wo_out10_write fifo_update 1 1 } } }
	p_out11 { ap_fifo {  { p_out11_din fifo_data 1 20 }  { p_out11_full_n fifo_status 0 1 }  { p_out11_write fifo_update 1 1 } } }
	p_out12 { ap_fifo {  { p_out12_din fifo_data 1 32 }  { p_out12_full_n fifo_status 0 1 }  { p_out12_write fifo_update 1 1 } } }
	p_out13 { ap_fifo {  { p_out13_din fifo_data 1 32 }  { p_out13_full_n fifo_status 0 1 }  { p_out13_write fifo_update 1 1 } } }
	p_out14 { ap_fifo {  { p_out14_din fifo_data 1 20 }  { p_out14_full_n fifo_status 0 1 }  { p_out14_write fifo_update 1 1 } } }
}
