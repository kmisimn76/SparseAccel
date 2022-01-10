#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("bias_in_V_dout", 64, hls_in, 0, "ap_fifo", "fifo_data", 6),
	Port_Property("bias_in_V_empty_n", 1, hls_in, 0, "ap_fifo", "fifo_status", 6),
	Port_Property("bias_in_V_read", 1, hls_out, 0, "ap_fifo", "fifo_update", 6),
	Port_Property("weight_in_V_dout", 64, hls_in, 1, "ap_fifo", "fifo_data", 1),
	Port_Property("weight_in_V_empty_n", 1, hls_in, 1, "ap_fifo", "fifo_status", 1),
	Port_Property("weight_in_V_read", 1, hls_out, 1, "ap_fifo", "fifo_update", 1),
	Port_Property("data_in_V_dout", 64, hls_in, 2, "ap_fifo", "fifo_data", 4),
	Port_Property("data_in_V_empty_n", 1, hls_in, 2, "ap_fifo", "fifo_status", 4),
	Port_Property("data_in_V_read", 1, hls_out, 2, "ap_fifo", "fifo_update", 4),
	Port_Property("conv_out_V_din", 64, hls_out, 3, "ap_fifo", "fifo_data", 1),
	Port_Property("conv_out_V_full_n", 1, hls_in, 3, "ap_fifo", "fifo_status", 1),
	Port_Property("conv_out_V_write", 1, hls_out, 3, "ap_fifo", "fifo_update", 1),
};
const char* HLS_Design_Meta::dut_name = "Conv_sysarr_dbbuf";
