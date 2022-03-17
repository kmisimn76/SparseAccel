#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("a_0_address0", 6, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("a_0_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("a_0_q0", 32, hls_in, 0, "ap_memory", "mem_dout", 1),
	Port_Property("a_1_address0", 6, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("a_1_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("a_1_q0", 32, hls_in, 1, "ap_memory", "mem_dout", 1),
	Port_Property("a_2_address0", 6, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("a_2_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("a_2_q0", 32, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("a_3_address0", 6, hls_out, 3, "ap_memory", "mem_address", 1),
	Port_Property("a_3_ce0", 1, hls_out, 3, "ap_memory", "mem_ce", 1),
	Port_Property("a_3_q0", 32, hls_in, 3, "ap_memory", "mem_dout", 1),
	Port_Property("a_4_address0", 6, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("a_4_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("a_4_q0", 32, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("a_5_address0", 6, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("a_5_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("a_5_q0", 32, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("a_6_address0", 6, hls_out, 6, "ap_memory", "mem_address", 1),
	Port_Property("a_6_ce0", 1, hls_out, 6, "ap_memory", "mem_ce", 1),
	Port_Property("a_6_q0", 32, hls_in, 6, "ap_memory", "mem_dout", 1),
	Port_Property("a_7_address0", 6, hls_out, 7, "ap_memory", "mem_address", 1),
	Port_Property("a_7_ce0", 1, hls_out, 7, "ap_memory", "mem_ce", 1),
	Port_Property("a_7_q0", 32, hls_in, 7, "ap_memory", "mem_dout", 1),
	Port_Property("b_0_address0", 6, hls_out, 8, "ap_memory", "mem_address", 1),
	Port_Property("b_0_ce0", 1, hls_out, 8, "ap_memory", "mem_ce", 1),
	Port_Property("b_0_q0", 32, hls_in, 8, "ap_memory", "mem_dout", 1),
	Port_Property("b_1_address0", 6, hls_out, 9, "ap_memory", "mem_address", 1),
	Port_Property("b_1_ce0", 1, hls_out, 9, "ap_memory", "mem_ce", 1),
	Port_Property("b_1_q0", 32, hls_in, 9, "ap_memory", "mem_dout", 1),
	Port_Property("b_2_address0", 6, hls_out, 10, "ap_memory", "mem_address", 1),
	Port_Property("b_2_ce0", 1, hls_out, 10, "ap_memory", "mem_ce", 1),
	Port_Property("b_2_q0", 32, hls_in, 10, "ap_memory", "mem_dout", 1),
	Port_Property("b_3_address0", 6, hls_out, 11, "ap_memory", "mem_address", 1),
	Port_Property("b_3_ce0", 1, hls_out, 11, "ap_memory", "mem_ce", 1),
	Port_Property("b_3_q0", 32, hls_in, 11, "ap_memory", "mem_dout", 1),
	Port_Property("b_4_address0", 6, hls_out, 12, "ap_memory", "mem_address", 1),
	Port_Property("b_4_ce0", 1, hls_out, 12, "ap_memory", "mem_ce", 1),
	Port_Property("b_4_q0", 32, hls_in, 12, "ap_memory", "mem_dout", 1),
	Port_Property("b_5_address0", 6, hls_out, 13, "ap_memory", "mem_address", 1),
	Port_Property("b_5_ce0", 1, hls_out, 13, "ap_memory", "mem_ce", 1),
	Port_Property("b_5_q0", 32, hls_in, 13, "ap_memory", "mem_dout", 1),
	Port_Property("b_6_address0", 6, hls_out, 14, "ap_memory", "mem_address", 1),
	Port_Property("b_6_ce0", 1, hls_out, 14, "ap_memory", "mem_ce", 1),
	Port_Property("b_6_q0", 32, hls_in, 14, "ap_memory", "mem_dout", 1),
	Port_Property("b_7_address0", 6, hls_out, 15, "ap_memory", "mem_address", 1),
	Port_Property("b_7_ce0", 1, hls_out, 15, "ap_memory", "mem_ce", 1),
	Port_Property("b_7_q0", 32, hls_in, 15, "ap_memory", "mem_dout", 1),
	Port_Property("c_0_address0", 6, hls_out, 16, "ap_memory", "mem_address", 1),
	Port_Property("c_0_ce0", 1, hls_out, 16, "ap_memory", "mem_ce", 1),
	Port_Property("c_0_we0", 1, hls_out, 16, "ap_memory", "mem_we", 1),
	Port_Property("c_0_d0", 32, hls_out, 16, "ap_memory", "mem_din", 1),
	Port_Property("c_1_address0", 6, hls_out, 17, "ap_memory", "mem_address", 1),
	Port_Property("c_1_ce0", 1, hls_out, 17, "ap_memory", "mem_ce", 1),
	Port_Property("c_1_we0", 1, hls_out, 17, "ap_memory", "mem_we", 1),
	Port_Property("c_1_d0", 32, hls_out, 17, "ap_memory", "mem_din", 1),
	Port_Property("c_1_q0", 32, hls_in, 17, "ap_memory", "mem_dout", 1),
	Port_Property("c_1_address1", 6, hls_out, 17, "ap_memory", "MemPortADDR2", 1),
	Port_Property("c_1_ce1", 1, hls_out, 17, "ap_memory", "MemPortCE2", 1),
	Port_Property("c_1_we1", 1, hls_out, 17, "ap_memory", "MemPortWE2", 1),
	Port_Property("c_1_d1", 32, hls_out, 17, "ap_memory", "MemPortDIN2", 1),
	Port_Property("c_1_q1", 32, hls_in, 17, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("c_2_address0", 6, hls_out, 18, "ap_memory", "mem_address", 1),
	Port_Property("c_2_ce0", 1, hls_out, 18, "ap_memory", "mem_ce", 1),
	Port_Property("c_2_we0", 1, hls_out, 18, "ap_memory", "mem_we", 1),
	Port_Property("c_2_d0", 32, hls_out, 18, "ap_memory", "mem_din", 1),
	Port_Property("c_2_q0", 32, hls_in, 18, "ap_memory", "mem_dout", 1),
	Port_Property("c_2_address1", 6, hls_out, 18, "ap_memory", "MemPortADDR2", 1),
	Port_Property("c_2_ce1", 1, hls_out, 18, "ap_memory", "MemPortCE2", 1),
	Port_Property("c_2_we1", 1, hls_out, 18, "ap_memory", "MemPortWE2", 1),
	Port_Property("c_2_d1", 32, hls_out, 18, "ap_memory", "MemPortDIN2", 1),
	Port_Property("c_2_q1", 32, hls_in, 18, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("c_3_address0", 6, hls_out, 19, "ap_memory", "mem_address", 1),
	Port_Property("c_3_ce0", 1, hls_out, 19, "ap_memory", "mem_ce", 1),
	Port_Property("c_3_we0", 1, hls_out, 19, "ap_memory", "mem_we", 1),
	Port_Property("c_3_d0", 32, hls_out, 19, "ap_memory", "mem_din", 1),
	Port_Property("c_3_q0", 32, hls_in, 19, "ap_memory", "mem_dout", 1),
	Port_Property("c_3_address1", 6, hls_out, 19, "ap_memory", "MemPortADDR2", 1),
	Port_Property("c_3_ce1", 1, hls_out, 19, "ap_memory", "MemPortCE2", 1),
	Port_Property("c_3_we1", 1, hls_out, 19, "ap_memory", "MemPortWE2", 1),
	Port_Property("c_3_d1", 32, hls_out, 19, "ap_memory", "MemPortDIN2", 1),
	Port_Property("c_3_q1", 32, hls_in, 19, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("c_4_address0", 6, hls_out, 20, "ap_memory", "mem_address", 1),
	Port_Property("c_4_ce0", 1, hls_out, 20, "ap_memory", "mem_ce", 1),
	Port_Property("c_4_we0", 1, hls_out, 20, "ap_memory", "mem_we", 1),
	Port_Property("c_4_d0", 32, hls_out, 20, "ap_memory", "mem_din", 1),
	Port_Property("c_4_q0", 32, hls_in, 20, "ap_memory", "mem_dout", 1),
	Port_Property("c_4_address1", 6, hls_out, 20, "ap_memory", "MemPortADDR2", 1),
	Port_Property("c_4_ce1", 1, hls_out, 20, "ap_memory", "MemPortCE2", 1),
	Port_Property("c_4_we1", 1, hls_out, 20, "ap_memory", "MemPortWE2", 1),
	Port_Property("c_4_d1", 32, hls_out, 20, "ap_memory", "MemPortDIN2", 1),
	Port_Property("c_4_q1", 32, hls_in, 20, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("c_5_address0", 6, hls_out, 21, "ap_memory", "mem_address", 1),
	Port_Property("c_5_ce0", 1, hls_out, 21, "ap_memory", "mem_ce", 1),
	Port_Property("c_5_we0", 1, hls_out, 21, "ap_memory", "mem_we", 1),
	Port_Property("c_5_d0", 32, hls_out, 21, "ap_memory", "mem_din", 1),
	Port_Property("c_5_q0", 32, hls_in, 21, "ap_memory", "mem_dout", 1),
	Port_Property("c_5_address1", 6, hls_out, 21, "ap_memory", "MemPortADDR2", 1),
	Port_Property("c_5_ce1", 1, hls_out, 21, "ap_memory", "MemPortCE2", 1),
	Port_Property("c_5_we1", 1, hls_out, 21, "ap_memory", "MemPortWE2", 1),
	Port_Property("c_5_d1", 32, hls_out, 21, "ap_memory", "MemPortDIN2", 1),
	Port_Property("c_5_q1", 32, hls_in, 21, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("c_6_address0", 6, hls_out, 22, "ap_memory", "mem_address", 1),
	Port_Property("c_6_ce0", 1, hls_out, 22, "ap_memory", "mem_ce", 1),
	Port_Property("c_6_we0", 1, hls_out, 22, "ap_memory", "mem_we", 1),
	Port_Property("c_6_d0", 32, hls_out, 22, "ap_memory", "mem_din", 1),
	Port_Property("c_6_q0", 32, hls_in, 22, "ap_memory", "mem_dout", 1),
	Port_Property("c_6_address1", 6, hls_out, 22, "ap_memory", "MemPortADDR2", 1),
	Port_Property("c_6_ce1", 1, hls_out, 22, "ap_memory", "MemPortCE2", 1),
	Port_Property("c_6_we1", 1, hls_out, 22, "ap_memory", "MemPortWE2", 1),
	Port_Property("c_6_d1", 32, hls_out, 22, "ap_memory", "MemPortDIN2", 1),
	Port_Property("c_6_q1", 32, hls_in, 22, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("c_7_address0", 6, hls_out, 23, "ap_memory", "mem_address", 1),
	Port_Property("c_7_ce0", 1, hls_out, 23, "ap_memory", "mem_ce", 1),
	Port_Property("c_7_we0", 1, hls_out, 23, "ap_memory", "mem_we", 1),
	Port_Property("c_7_d0", 32, hls_out, 23, "ap_memory", "mem_din", 1),
	Port_Property("c_7_q0", 32, hls_in, 23, "ap_memory", "mem_dout", 1),
	Port_Property("c_7_address1", 6, hls_out, 23, "ap_memory", "MemPortADDR2", 1),
	Port_Property("c_7_ce1", 1, hls_out, 23, "ap_memory", "MemPortCE2", 1),
	Port_Property("c_7_we1", 1, hls_out, 23, "ap_memory", "MemPortWE2", 1),
	Port_Property("c_7_d1", 32, hls_out, 23, "ap_memory", "MemPortDIN2", 1),
	Port_Property("c_7_q1", 32, hls_in, 23, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("s_axi_control_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_AWADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_ARADDR", 5, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_control_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_control_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "adder_tree_large";
