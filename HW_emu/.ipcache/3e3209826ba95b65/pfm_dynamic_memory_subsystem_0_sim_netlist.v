// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Wed Feb 10 11:23:58 2021
// Host        : rabbit running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pfm_dynamic_memory_subsystem_0_sim_netlist.v
// Design      : pfm_dynamic_memory_subsystem_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcu200-fsgd2104-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "pfm_dynamic_memory_subsystem_0.hwdef" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216
   (DDR4_MEM00_DIFF_CLK_clk_n,
    DDR4_MEM00_DIFF_CLK_clk_p,
    DDR4_MEM00_act_n,
    DDR4_MEM00_adr,
    DDR4_MEM00_ba,
    DDR4_MEM00_bg,
    DDR4_MEM00_ck_c,
    DDR4_MEM00_ck_t,
    DDR4_MEM00_cke,
    DDR4_MEM00_cs_n,
    DDR4_MEM00_dq,
    DDR4_MEM00_dqs_c,
    DDR4_MEM00_dqs_t,
    DDR4_MEM00_odt,
    DDR4_MEM00_par,
    DDR4_MEM00_reset_n,
    DDR4_MEM01_DIFF_CLK_clk_n,
    DDR4_MEM01_DIFF_CLK_clk_p,
    DDR4_MEM01_act_n,
    DDR4_MEM01_adr,
    DDR4_MEM01_ba,
    DDR4_MEM01_bg,
    DDR4_MEM01_ck_c,
    DDR4_MEM01_ck_t,
    DDR4_MEM01_cke,
    DDR4_MEM01_cs_n,
    DDR4_MEM01_dq,
    DDR4_MEM01_dqs_c,
    DDR4_MEM01_dqs_t,
    DDR4_MEM01_odt,
    DDR4_MEM01_par,
    DDR4_MEM01_reset_n,
    DDR4_MEM02_DIFF_CLK_clk_n,
    DDR4_MEM02_DIFF_CLK_clk_p,
    DDR4_MEM02_act_n,
    DDR4_MEM02_adr,
    DDR4_MEM02_ba,
    DDR4_MEM02_bg,
    DDR4_MEM02_ck_c,
    DDR4_MEM02_ck_t,
    DDR4_MEM02_cke,
    DDR4_MEM02_cs_n,
    DDR4_MEM02_dq,
    DDR4_MEM02_dqs_c,
    DDR4_MEM02_dqs_t,
    DDR4_MEM02_odt,
    DDR4_MEM02_par,
    DDR4_MEM02_reset_n,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arregion,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awregion,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid,
    S02_AXI_araddr,
    S02_AXI_arburst,
    S02_AXI_arcache,
    S02_AXI_arid,
    S02_AXI_arlen,
    S02_AXI_arlock,
    S02_AXI_arprot,
    S02_AXI_arqos,
    S02_AXI_arready,
    S02_AXI_arregion,
    S02_AXI_arvalid,
    S02_AXI_awaddr,
    S02_AXI_awburst,
    S02_AXI_awcache,
    S02_AXI_awid,
    S02_AXI_awlen,
    S02_AXI_awlock,
    S02_AXI_awprot,
    S02_AXI_awqos,
    S02_AXI_awready,
    S02_AXI_awregion,
    S02_AXI_awvalid,
    S02_AXI_bid,
    S02_AXI_bready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_rdata,
    S02_AXI_rid,
    S02_AXI_rlast,
    S02_AXI_rready,
    S02_AXI_rresp,
    S02_AXI_rvalid,
    S02_AXI_wdata,
    S02_AXI_wlast,
    S02_AXI_wready,
    S02_AXI_wstrb,
    S02_AXI_wvalid,
    S03_AXI_araddr,
    S03_AXI_arburst,
    S03_AXI_arcache,
    S03_AXI_arid,
    S03_AXI_arlen,
    S03_AXI_arlock,
    S03_AXI_arprot,
    S03_AXI_arqos,
    S03_AXI_arready,
    S03_AXI_arregion,
    S03_AXI_arvalid,
    S03_AXI_awaddr,
    S03_AXI_awburst,
    S03_AXI_awcache,
    S03_AXI_awid,
    S03_AXI_awlen,
    S03_AXI_awlock,
    S03_AXI_awprot,
    S03_AXI_awqos,
    S03_AXI_awready,
    S03_AXI_awregion,
    S03_AXI_awvalid,
    S03_AXI_bid,
    S03_AXI_bready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_rdata,
    S03_AXI_rid,
    S03_AXI_rlast,
    S03_AXI_rready,
    S03_AXI_rresp,
    S03_AXI_rvalid,
    S03_AXI_wdata,
    S03_AXI_wlast,
    S03_AXI_wready,
    S03_AXI_wstrb,
    S03_AXI_wvalid,
    S04_AXI_araddr,
    S04_AXI_arcache,
    S04_AXI_arlen,
    S04_AXI_arlock,
    S04_AXI_arprot,
    S04_AXI_arqos,
    S04_AXI_arready,
    S04_AXI_arregion,
    S04_AXI_arvalid,
    S04_AXI_awaddr,
    S04_AXI_awcache,
    S04_AXI_awlen,
    S04_AXI_awlock,
    S04_AXI_awprot,
    S04_AXI_awqos,
    S04_AXI_awready,
    S04_AXI_awregion,
    S04_AXI_awvalid,
    S04_AXI_bready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_rdata,
    S04_AXI_rlast,
    S04_AXI_rready,
    S04_AXI_rresp,
    S04_AXI_rvalid,
    S04_AXI_wdata,
    S04_AXI_wlast,
    S04_AXI_wready,
    S04_AXI_wstrb,
    S04_AXI_wvalid,
    S05_AXI_araddr,
    S05_AXI_arcache,
    S05_AXI_arlen,
    S05_AXI_arlock,
    S05_AXI_arprot,
    S05_AXI_arqos,
    S05_AXI_arready,
    S05_AXI_arregion,
    S05_AXI_arvalid,
    S05_AXI_awaddr,
    S05_AXI_awcache,
    S05_AXI_awlen,
    S05_AXI_awlock,
    S05_AXI_awprot,
    S05_AXI_awqos,
    S05_AXI_awready,
    S05_AXI_awregion,
    S05_AXI_awvalid,
    S05_AXI_bready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_rdata,
    S05_AXI_rlast,
    S05_AXI_rready,
    S05_AXI_rresp,
    S05_AXI_rvalid,
    S05_AXI_wdata,
    S05_AXI_wlast,
    S05_AXI_wready,
    S05_AXI_wstrb,
    S05_AXI_wvalid,
    S06_AXI_araddr,
    S06_AXI_arcache,
    S06_AXI_arlen,
    S06_AXI_arlock,
    S06_AXI_arprot,
    S06_AXI_arqos,
    S06_AXI_arready,
    S06_AXI_arregion,
    S06_AXI_arvalid,
    S06_AXI_awaddr,
    S06_AXI_awcache,
    S06_AXI_awlen,
    S06_AXI_awlock,
    S06_AXI_awprot,
    S06_AXI_awqos,
    S06_AXI_awready,
    S06_AXI_awregion,
    S06_AXI_awvalid,
    S06_AXI_bready,
    S06_AXI_bresp,
    S06_AXI_bvalid,
    S06_AXI_rdata,
    S06_AXI_rlast,
    S06_AXI_rready,
    S06_AXI_rresp,
    S06_AXI_rvalid,
    S06_AXI_wdata,
    S06_AXI_wlast,
    S06_AXI_wready,
    S06_AXI_wstrb,
    S06_AXI_wvalid,
    S07_AXI_araddr,
    S07_AXI_arcache,
    S07_AXI_arlen,
    S07_AXI_arlock,
    S07_AXI_arprot,
    S07_AXI_arqos,
    S07_AXI_arready,
    S07_AXI_arregion,
    S07_AXI_arvalid,
    S07_AXI_awaddr,
    S07_AXI_awcache,
    S07_AXI_awlen,
    S07_AXI_awlock,
    S07_AXI_awprot,
    S07_AXI_awqos,
    S07_AXI_awready,
    S07_AXI_awregion,
    S07_AXI_awvalid,
    S07_AXI_bready,
    S07_AXI_bresp,
    S07_AXI_bvalid,
    S07_AXI_rdata,
    S07_AXI_rlast,
    S07_AXI_rready,
    S07_AXI_rresp,
    S07_AXI_rvalid,
    S07_AXI_wdata,
    S07_AXI_wlast,
    S07_AXI_wready,
    S07_AXI_wstrb,
    S07_AXI_wvalid,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arprot,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awprot,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rready,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_wstrb,
    S_AXI_CTRL_wvalid,
    aclk,
    aclk1,
    aclk2,
    aresetn,
    ddr4_mem00_sys_rst,
    ddr4_mem00_ui_clk,
    ddr4_mem01_sys_rst,
    ddr4_mem01_ui_clk,
    ddr4_mem02_sys_rst,
    ddr4_mem02_ui_clk,
    ddr4_mem_calib_complete,
    ddr4_mem_calib_vec);
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM00_DIFF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM00_DIFF_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input DDR4_MEM00_DIFF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM00_DIFF_CLK CLK_P" *) input DDR4_MEM00_DIFF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM00, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, SLOT Single, TIMEPERIOD_PS 833" *) output DDR4_MEM00_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ADR" *) output [16:0]DDR4_MEM00_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 BA" *) output [1:0]DDR4_MEM00_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 BG" *) output [1:0]DDR4_MEM00_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CK_C" *) output [0:0]DDR4_MEM00_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CK_T" *) output [0:0]DDR4_MEM00_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CKE" *) output [0:0]DDR4_MEM00_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CS_N" *) output [0:0]DDR4_MEM00_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQ" *) inout [71:0]DDR4_MEM00_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQS_C" *) inout [17:0]DDR4_MEM00_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQS_T" *) inout [17:0]DDR4_MEM00_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ODT" *) output [0:0]DDR4_MEM00_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 PAR" *) output DDR4_MEM00_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 RESET_N" *) output DDR4_MEM00_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM01_DIFF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM01_DIFF_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input DDR4_MEM01_DIFF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM01_DIFF_CLK CLK_P" *) input DDR4_MEM01_DIFF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM01, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, SLOT Single, TIMEPERIOD_PS 833" *) output DDR4_MEM01_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 ADR" *) output [16:0]DDR4_MEM01_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 BA" *) output [1:0]DDR4_MEM01_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 BG" *) output [1:0]DDR4_MEM01_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 CK_C" *) output [0:0]DDR4_MEM01_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 CK_T" *) output [0:0]DDR4_MEM01_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 CKE" *) output [0:0]DDR4_MEM01_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 CS_N" *) output [0:0]DDR4_MEM01_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 DQ" *) inout [71:0]DDR4_MEM01_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 DQS_C" *) inout [17:0]DDR4_MEM01_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 DQS_T" *) inout [17:0]DDR4_MEM01_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 ODT" *) output [0:0]DDR4_MEM01_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 PAR" *) output DDR4_MEM01_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 RESET_N" *) output DDR4_MEM01_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM02_DIFF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM02_DIFF_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input DDR4_MEM02_DIFF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM02_DIFF_CLK CLK_P" *) input DDR4_MEM02_DIFF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 ACT_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM02, AXI_ARBITRATION_SCHEME RD_PRI_REG, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 17, CAS_WRITE_LATENCY 12, CS_ENABLED true, CUSTOM_PARTS no_file_loaded, DATA_MASK_ENABLED NONE, DATA_WIDTH 72, MEMORY_PART MTA18ASF2G72PZ-2G3, MEMORY_TYPE RDIMMs, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, SLOT Single, TIMEPERIOD_PS 833" *) output DDR4_MEM02_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 ADR" *) output [16:0]DDR4_MEM02_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 BA" *) output [1:0]DDR4_MEM02_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 BG" *) output [1:0]DDR4_MEM02_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 CK_C" *) output [0:0]DDR4_MEM02_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 CK_T" *) output [0:0]DDR4_MEM02_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 CKE" *) output [0:0]DDR4_MEM02_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 CS_N" *) output [0:0]DDR4_MEM02_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 DQ" *) inout [71:0]DDR4_MEM02_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 DQS_C" *) inout [17:0]DDR4_MEM02_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 DQS_T" *) inout [17:0]DDR4_MEM02_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 ODT" *) output [0:0]DDR4_MEM02_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 PAR" *) output DDR4_MEM02_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 RESET_N" *) output DDR4_MEM02_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_ddrmem_1_c0_ddr4_ui_clk, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [38:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [38:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [511:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) output M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [511:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [63:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [3:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [38:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [3:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [3:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [511:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) output [3:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [511:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [63:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *) input [3:0]S01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *) input [3:0]S01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [38:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *) input [3:0]S01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *) input [3:0]S01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *) output [3:0]S01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [511:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *) output [3:0]S01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) input S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [511:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [63:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARID" *) input [3:0]S02_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREGION" *) input [3:0]S02_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *) input [38:0]S02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *) input [1:0]S02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *) input [3:0]S02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWID" *) input [3:0]S02_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *) input [7:0]S02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *) input [0:0]S02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *) input [2:0]S02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *) input [3:0]S02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *) output S02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREGION" *) input [3:0]S02_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *) input S02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BID" *) output [3:0]S02_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *) input S02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *) output [1:0]S02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *) output S02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [511:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RID" *) output [3:0]S02_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) input S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *) input [511:0]S02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *) input S02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *) output S02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *) input [63:0]S02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *) input S02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 512, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 2, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 2, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]S03_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARBURST" *) input [1:0]S03_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE" *) input [3:0]S03_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARID" *) input [3:0]S03_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLEN" *) input [7:0]S03_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK" *) input [0:0]S03_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT" *) input [2:0]S03_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARQOS" *) input [3:0]S03_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY" *) output S03_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREGION" *) input [3:0]S03_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID" *) input S03_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR" *) input [38:0]S03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST" *) input [1:0]S03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE" *) input [3:0]S03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWID" *) input [3:0]S03_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN" *) input [7:0]S03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK" *) input [0:0]S03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT" *) input [2:0]S03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS" *) input [3:0]S03_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY" *) output S03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREGION" *) input [3:0]S03_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID" *) input S03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BID" *) output [3:0]S03_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BREADY" *) input S03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BRESP" *) output [1:0]S03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BVALID" *) output S03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RDATA" *) output [511:0]S03_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RID" *) output [3:0]S03_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RLAST" *) output S03_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RREADY" *) input S03_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RRESP" *) output [1:0]S03_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RVALID" *) output S03_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WDATA" *) input [511:0]S03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WLAST" *) input S03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WREADY" *) output S03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB" *) input [63:0]S03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WVALID" *) input S03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S04_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]S04_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARCACHE" *) input [3:0]S04_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLEN" *) input [7:0]S04_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLOCK" *) input [0:0]S04_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARPROT" *) input [2:0]S04_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARQOS" *) input [3:0]S04_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREADY" *) output S04_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREGION" *) input [3:0]S04_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARVALID" *) input S04_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWADDR" *) input [38:0]S04_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWCACHE" *) input [3:0]S04_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLEN" *) input [7:0]S04_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLOCK" *) input [0:0]S04_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWPROT" *) input [2:0]S04_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWQOS" *) input [3:0]S04_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWREADY" *) output S04_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWREGION" *) input [3:0]S04_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWVALID" *) input S04_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BREADY" *) input S04_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BRESP" *) output [1:0]S04_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BVALID" *) output S04_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RDATA" *) output [31:0]S04_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RLAST" *) output S04_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RREADY" *) input S04_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RRESP" *) output [1:0]S04_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RVALID" *) output S04_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WDATA" *) input [31:0]S04_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WLAST" *) input S04_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WREADY" *) output S04_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WSTRB" *) input [3:0]S04_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WVALID" *) input S04_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S05_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]S05_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARCACHE" *) input [3:0]S05_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLEN" *) input [7:0]S05_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLOCK" *) input [0:0]S05_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARPROT" *) input [2:0]S05_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARQOS" *) input [3:0]S05_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARREADY" *) output S05_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARREGION" *) input [3:0]S05_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARVALID" *) input S05_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWADDR" *) input [38:0]S05_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWCACHE" *) input [3:0]S05_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLEN" *) input [7:0]S05_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLOCK" *) input [0:0]S05_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWPROT" *) input [2:0]S05_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWQOS" *) input [3:0]S05_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREADY" *) output S05_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREGION" *) input [3:0]S05_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWVALID" *) input S05_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BREADY" *) input S05_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BRESP" *) output [1:0]S05_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BVALID" *) output S05_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RDATA" *) output [31:0]S05_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RLAST" *) output S05_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RREADY" *) input S05_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RRESP" *) output [1:0]S05_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RVALID" *) output S05_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WDATA" *) input [31:0]S05_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WLAST" *) input S05_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WREADY" *) output S05_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WSTRB" *) input [3:0]S05_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WVALID" *) input S05_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S06_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]S06_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARCACHE" *) input [3:0]S06_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLEN" *) input [7:0]S06_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLOCK" *) input [0:0]S06_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARPROT" *) input [2:0]S06_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARQOS" *) input [3:0]S06_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREADY" *) output S06_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREGION" *) input [3:0]S06_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARVALID" *) input S06_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWADDR" *) input [38:0]S06_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWCACHE" *) input [3:0]S06_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLEN" *) input [7:0]S06_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLOCK" *) input [0:0]S06_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWPROT" *) input [2:0]S06_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWQOS" *) input [3:0]S06_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREADY" *) output S06_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREGION" *) input [3:0]S06_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWVALID" *) input S06_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BREADY" *) input S06_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BRESP" *) output [1:0]S06_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BVALID" *) output S06_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RDATA" *) output [31:0]S06_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RLAST" *) output S06_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RREADY" *) input S06_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RRESP" *) output [1:0]S06_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RVALID" *) output S06_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WDATA" *) input [31:0]S06_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WLAST" *) input S06_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WREADY" *) output S06_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WSTRB" *) input [3:0]S06_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WVALID" *) input S06_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S07_AXI, ADDR_WIDTH 39, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, DATA_WIDTH 32, FREQ_HZ 300000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [38:0]S07_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARCACHE" *) input [3:0]S07_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARLEN" *) input [7:0]S07_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARLOCK" *) input [0:0]S07_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARPROT" *) input [2:0]S07_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARQOS" *) input [3:0]S07_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARREADY" *) output S07_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARREGION" *) input [3:0]S07_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARVALID" *) input S07_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWADDR" *) input [38:0]S07_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWCACHE" *) input [3:0]S07_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWLEN" *) input [7:0]S07_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWLOCK" *) input [0:0]S07_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWPROT" *) input [2:0]S07_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWQOS" *) input [3:0]S07_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWREADY" *) output S07_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWREGION" *) input [3:0]S07_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWVALID" *) input S07_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BREADY" *) input S07_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BRESP" *) output [1:0]S07_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BVALID" *) output S07_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RDATA" *) output [31:0]S07_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RLAST" *) output S07_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RREADY" *) input S07_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RRESP" *) output [1:0]S07_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RVALID" *) output S07_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WDATA" *) input [31:0]S07_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WLAST" *) input S07_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WREADY" *) output S07_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WSTRB" *) input [3:0]S07_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WVALID" *) input S07_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, ADDR_WIDTH 25, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pfm_dynamic_clkwiz_sysclks_clk_out2, DATA_WIDTH 32, FREQ_HZ 50925925, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [24:0]S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARPROT" *) input [2:0]S_AXI_CTRL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output [0:0]S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input [0:0]S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [24:0]S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWPROT" *) input [2:0]S_AXI_CTRL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output [0:0]S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input [0:0]S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input [0:0]S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output [0:0]S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) input [0:0]S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output [0:0]S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output [0:0]S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WSTRB" *) input [3:0]S_AXI_CTRL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input [0:0]S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK1, ASSOCIATED_BUSIF S_AXI_CTRL, CLK_DOMAIN pfm_dynamic_clkwiz_sysclks_clk_out2, FREQ_HZ 50925925, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ACLK2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ACLK2, ASSOCIATED_BUSIF M00_AXI, ASSOCIATED_CLKEN m_sc_aclken, CLK_DOMAIN pfm_dynamic_ddrmem_1_c0_ddr4_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input aclk2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR4_MEM00_SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR4_MEM00_SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ddr4_mem00_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR4_MEM00_UI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR4_MEM00_UI_CLK, CLK_DOMAIN bd_d216_ddr4_mem00_0_c0_ddr4_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.00" *) output ddr4_mem00_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR4_MEM01_SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR4_MEM01_SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ddr4_mem01_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR4_MEM01_UI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR4_MEM01_UI_CLK, CLK_DOMAIN bd_d216_ddr4_mem01_0_c0_ddr4_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.00" *) output ddr4_mem01_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.DDR4_MEM02_SYS_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.DDR4_MEM02_SYS_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ddr4_mem02_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDR4_MEM02_UI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDR4_MEM02_UI_CLK, CLK_DOMAIN bd_d216_ddr4_mem02_0_c0_ddr4_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.00" *) output ddr4_mem02_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DDR4_MEM_CALIB_COMPLETE DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DDR4_MEM_CALIB_COMPLETE, LAYERED_METADATA undef" *) output ddr4_mem_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DDR4_MEM_CALIB_VEC DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DDR4_MEM_CALIB_VEC, LAYERED_METADATA undef, PortWidth 3" *) output [2:0]ddr4_mem_calib_vec;

  wire DDR4_MEM00_DIFF_CLK_clk_n;
  wire DDR4_MEM00_DIFF_CLK_clk_p;
  wire DDR4_MEM00_act_n;
  wire [16:0]DDR4_MEM00_adr;
  wire [1:0]DDR4_MEM00_ba;
  wire [1:0]DDR4_MEM00_bg;
  wire [0:0]DDR4_MEM00_ck_c;
  wire [0:0]DDR4_MEM00_ck_t;
  wire [0:0]DDR4_MEM00_cke;
  wire [0:0]DDR4_MEM00_cs_n;
  wire [71:0]DDR4_MEM00_dq;
  wire [17:0]DDR4_MEM00_dqs_c;
  wire [17:0]DDR4_MEM00_dqs_t;
  wire [0:0]DDR4_MEM00_odt;
  wire DDR4_MEM00_par;
  wire DDR4_MEM00_reset_n;
  wire DDR4_MEM01_DIFF_CLK_clk_n;
  wire DDR4_MEM01_DIFF_CLK_clk_p;
  wire DDR4_MEM01_act_n;
  wire [16:0]DDR4_MEM01_adr;
  wire [1:0]DDR4_MEM01_ba;
  wire [1:0]DDR4_MEM01_bg;
  wire [0:0]DDR4_MEM01_ck_c;
  wire [0:0]DDR4_MEM01_ck_t;
  wire [0:0]DDR4_MEM01_cke;
  wire [0:0]DDR4_MEM01_cs_n;
  wire [71:0]DDR4_MEM01_dq;
  wire [17:0]DDR4_MEM01_dqs_c;
  wire [17:0]DDR4_MEM01_dqs_t;
  wire [0:0]DDR4_MEM01_odt;
  wire DDR4_MEM01_par;
  wire DDR4_MEM01_reset_n;
  wire DDR4_MEM02_DIFF_CLK_clk_n;
  wire DDR4_MEM02_DIFF_CLK_clk_p;
  wire DDR4_MEM02_act_n;
  wire [16:0]DDR4_MEM02_adr;
  wire [1:0]DDR4_MEM02_ba;
  wire [1:0]DDR4_MEM02_bg;
  wire [0:0]DDR4_MEM02_ck_c;
  wire [0:0]DDR4_MEM02_ck_t;
  wire [0:0]DDR4_MEM02_cke;
  wire [0:0]DDR4_MEM02_cs_n;
  wire [71:0]DDR4_MEM02_dq;
  wire [17:0]DDR4_MEM02_dqs_c;
  wire [17:0]DDR4_MEM02_dqs_t;
  wire [0:0]DDR4_MEM02_odt;
  wire DDR4_MEM02_par;
  wire DDR4_MEM02_reset_n;
  wire [38:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [38:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [38:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [3:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire S00_AXI_arvalid;
  wire [38:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [3:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire S00_AXI_awvalid;
  wire [3:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [3:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [38:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire S01_AXI_arvalid;
  wire [38:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire S01_AXI_awvalid;
  wire [3:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [511:0]S01_AXI_rdata;
  wire [3:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [511:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [63:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [38:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [3:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire S02_AXI_arvalid;
  wire [38:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [3:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire S02_AXI_awvalid;
  wire [3:0]S02_AXI_bid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [511:0]S02_AXI_rdata;
  wire [3:0]S02_AXI_rid;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [511:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [63:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire [38:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [3:0]S03_AXI_arid;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire S03_AXI_arready;
  wire [3:0]S03_AXI_arregion;
  wire S03_AXI_arvalid;
  wire [38:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [3:0]S03_AXI_awid;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire S03_AXI_awready;
  wire [3:0]S03_AXI_awregion;
  wire S03_AXI_awvalid;
  wire [3:0]S03_AXI_bid;
  wire S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire S03_AXI_bvalid;
  wire [511:0]S03_AXI_rdata;
  wire [3:0]S03_AXI_rid;
  wire S03_AXI_rlast;
  wire S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire S03_AXI_rvalid;
  wire [511:0]S03_AXI_wdata;
  wire S03_AXI_wlast;
  wire S03_AXI_wready;
  wire [63:0]S03_AXI_wstrb;
  wire S03_AXI_wvalid;
  wire [38:0]S04_AXI_araddr;
  wire [3:0]S04_AXI_arcache;
  wire [7:0]S04_AXI_arlen;
  wire [0:0]S04_AXI_arlock;
  wire [2:0]S04_AXI_arprot;
  wire [3:0]S04_AXI_arqos;
  wire S04_AXI_arready;
  wire [3:0]S04_AXI_arregion;
  wire S04_AXI_arvalid;
  wire [38:0]S04_AXI_awaddr;
  wire [3:0]S04_AXI_awcache;
  wire [7:0]S04_AXI_awlen;
  wire [0:0]S04_AXI_awlock;
  wire [2:0]S04_AXI_awprot;
  wire [3:0]S04_AXI_awqos;
  wire S04_AXI_awready;
  wire [3:0]S04_AXI_awregion;
  wire S04_AXI_awvalid;
  wire S04_AXI_bready;
  wire [1:0]S04_AXI_bresp;
  wire S04_AXI_bvalid;
  wire [31:0]S04_AXI_rdata;
  wire S04_AXI_rlast;
  wire S04_AXI_rready;
  wire [1:0]S04_AXI_rresp;
  wire S04_AXI_rvalid;
  wire [31:0]S04_AXI_wdata;
  wire S04_AXI_wlast;
  wire S04_AXI_wready;
  wire [3:0]S04_AXI_wstrb;
  wire S04_AXI_wvalid;
  wire [38:0]S05_AXI_araddr;
  wire [3:0]S05_AXI_arcache;
  wire [7:0]S05_AXI_arlen;
  wire [0:0]S05_AXI_arlock;
  wire [2:0]S05_AXI_arprot;
  wire [3:0]S05_AXI_arqos;
  wire S05_AXI_arready;
  wire [3:0]S05_AXI_arregion;
  wire S05_AXI_arvalid;
  wire [38:0]S05_AXI_awaddr;
  wire [3:0]S05_AXI_awcache;
  wire [7:0]S05_AXI_awlen;
  wire [0:0]S05_AXI_awlock;
  wire [2:0]S05_AXI_awprot;
  wire [3:0]S05_AXI_awqos;
  wire S05_AXI_awready;
  wire [3:0]S05_AXI_awregion;
  wire S05_AXI_awvalid;
  wire S05_AXI_bready;
  wire [1:0]S05_AXI_bresp;
  wire S05_AXI_bvalid;
  wire [31:0]S05_AXI_rdata;
  wire S05_AXI_rlast;
  wire S05_AXI_rready;
  wire [1:0]S05_AXI_rresp;
  wire S05_AXI_rvalid;
  wire [31:0]S05_AXI_wdata;
  wire S05_AXI_wlast;
  wire S05_AXI_wready;
  wire [3:0]S05_AXI_wstrb;
  wire S05_AXI_wvalid;
  wire [38:0]S06_AXI_araddr;
  wire [3:0]S06_AXI_arcache;
  wire [7:0]S06_AXI_arlen;
  wire [0:0]S06_AXI_arlock;
  wire [2:0]S06_AXI_arprot;
  wire [3:0]S06_AXI_arqos;
  wire S06_AXI_arready;
  wire [3:0]S06_AXI_arregion;
  wire S06_AXI_arvalid;
  wire [38:0]S06_AXI_awaddr;
  wire [3:0]S06_AXI_awcache;
  wire [7:0]S06_AXI_awlen;
  wire [0:0]S06_AXI_awlock;
  wire [2:0]S06_AXI_awprot;
  wire [3:0]S06_AXI_awqos;
  wire S06_AXI_awready;
  wire [3:0]S06_AXI_awregion;
  wire S06_AXI_awvalid;
  wire S06_AXI_bready;
  wire [1:0]S06_AXI_bresp;
  wire S06_AXI_bvalid;
  wire [31:0]S06_AXI_rdata;
  wire S06_AXI_rlast;
  wire S06_AXI_rready;
  wire [1:0]S06_AXI_rresp;
  wire S06_AXI_rvalid;
  wire [31:0]S06_AXI_wdata;
  wire S06_AXI_wlast;
  wire S06_AXI_wready;
  wire [3:0]S06_AXI_wstrb;
  wire S06_AXI_wvalid;
  wire [38:0]S07_AXI_araddr;
  wire [3:0]S07_AXI_arcache;
  wire [7:0]S07_AXI_arlen;
  wire [0:0]S07_AXI_arlock;
  wire [2:0]S07_AXI_arprot;
  wire [3:0]S07_AXI_arqos;
  wire S07_AXI_arready;
  wire [3:0]S07_AXI_arregion;
  wire S07_AXI_arvalid;
  wire [38:0]S07_AXI_awaddr;
  wire [3:0]S07_AXI_awcache;
  wire [7:0]S07_AXI_awlen;
  wire [0:0]S07_AXI_awlock;
  wire [2:0]S07_AXI_awprot;
  wire [3:0]S07_AXI_awqos;
  wire S07_AXI_awready;
  wire [3:0]S07_AXI_awregion;
  wire S07_AXI_awvalid;
  wire S07_AXI_bready;
  wire [1:0]S07_AXI_bresp;
  wire S07_AXI_bvalid;
  wire [31:0]S07_AXI_rdata;
  wire S07_AXI_rlast;
  wire S07_AXI_rready;
  wire [1:0]S07_AXI_rresp;
  wire S07_AXI_rvalid;
  wire [31:0]S07_AXI_wdata;
  wire S07_AXI_wlast;
  wire S07_AXI_wready;
  wire [3:0]S07_AXI_wstrb;
  wire S07_AXI_wvalid;
  wire [24:0]S_AXI_CTRL_araddr;
  wire [2:0]S_AXI_CTRL_arprot;
  wire [0:0]S_AXI_CTRL_arready;
  wire [0:0]S_AXI_CTRL_arvalid;
  wire [24:0]S_AXI_CTRL_awaddr;
  wire [2:0]S_AXI_CTRL_awprot;
  wire [0:0]S_AXI_CTRL_awready;
  wire [0:0]S_AXI_CTRL_awvalid;
  wire [0:0]S_AXI_CTRL_bready;
  wire [1:0]S_AXI_CTRL_bresp;
  wire [0:0]S_AXI_CTRL_bvalid;
  wire [31:0]S_AXI_CTRL_rdata;
  wire [0:0]S_AXI_CTRL_rready;
  wire [1:0]S_AXI_CTRL_rresp;
  wire [0:0]S_AXI_CTRL_rvalid;
  wire [31:0]S_AXI_CTRL_wdata;
  wire [0:0]S_AXI_CTRL_wready;
  wire [3:0]S_AXI_CTRL_wstrb;
  wire [0:0]S_AXI_CTRL_wvalid;
  wire aclk;
  wire aclk1;
  wire aclk2;
  wire aresetn;
  wire ddr4_mem00_sys_rst;
  wire ddr4_mem00_ui_clk;
  wire ddr4_mem01_sys_rst;
  wire ddr4_mem01_ui_clk;
  wire ddr4_mem02_sys_rst;
  wire ddr4_mem02_ui_clk;
  wire ddr4_mem_calib_complete;
  wire [2:0]ddr4_mem_calib_vec;
  wire [33:0]interconnect_DDR4_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_ARLEN;
  wire interconnect_DDR4_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM00_M00_AXI_ARVALID;
  wire [33:0]interconnect_DDR4_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM00_M00_AXI_AWLEN;
  wire interconnect_DDR4_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM00_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM00_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM00_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM00_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM00_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM00_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM00_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM00_M00_AXI_WVALID;
  wire [33:0]interconnect_DDR4_MEM01_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM01_M00_AXI_ARLEN;
  wire interconnect_DDR4_MEM01_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM01_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM01_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM01_M00_AXI_ARVALID;
  wire [33:0]interconnect_DDR4_MEM01_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM01_M00_AXI_AWLEN;
  wire interconnect_DDR4_MEM01_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM01_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM01_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM01_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM01_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM01_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM01_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM01_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM01_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM01_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM01_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM01_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM01_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM01_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM01_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM01_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM01_M00_AXI_WVALID;
  wire [33:0]interconnect_DDR4_MEM02_M00_AXI_ARADDR;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_ARBURST;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_ARCACHE;
  wire [7:0]interconnect_DDR4_MEM02_M00_AXI_ARLEN;
  wire interconnect_DDR4_MEM02_M00_AXI_ARLOCK;
  wire [2:0]interconnect_DDR4_MEM02_M00_AXI_ARPROT;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_ARQOS;
  wire interconnect_DDR4_MEM02_M00_AXI_ARREADY;
  wire interconnect_DDR4_MEM02_M00_AXI_ARVALID;
  wire [33:0]interconnect_DDR4_MEM02_M00_AXI_AWADDR;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_AWBURST;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_AWCACHE;
  wire [7:0]interconnect_DDR4_MEM02_M00_AXI_AWLEN;
  wire interconnect_DDR4_MEM02_M00_AXI_AWLOCK;
  wire [2:0]interconnect_DDR4_MEM02_M00_AXI_AWPROT;
  wire [3:0]interconnect_DDR4_MEM02_M00_AXI_AWQOS;
  wire interconnect_DDR4_MEM02_M00_AXI_AWREADY;
  wire interconnect_DDR4_MEM02_M00_AXI_AWVALID;
  wire interconnect_DDR4_MEM02_M00_AXI_BREADY;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_BRESP;
  wire interconnect_DDR4_MEM02_M00_AXI_BVALID;
  wire [511:0]interconnect_DDR4_MEM02_M00_AXI_RDATA;
  wire interconnect_DDR4_MEM02_M00_AXI_RLAST;
  wire interconnect_DDR4_MEM02_M00_AXI_RREADY;
  wire [1:0]interconnect_DDR4_MEM02_M00_AXI_RRESP;
  wire interconnect_DDR4_MEM02_M00_AXI_RVALID;
  wire [511:0]interconnect_DDR4_MEM02_M00_AXI_WDATA;
  wire interconnect_DDR4_MEM02_M00_AXI_WLAST;
  wire interconnect_DDR4_MEM02_M00_AXI_WREADY;
  wire [63:0]interconnect_DDR4_MEM02_M00_AXI_WSTRB;
  wire interconnect_DDR4_MEM02_M00_AXI_WVALID;
  wire psr_aclk2_SLR1_interconnect_aresetn;
  wire psr_aclk_SLR0_interconnect_aresetn;
  wire psr_aclk_SLR1_interconnect_aresetn;
  wire psr_aclk_SLR2_interconnect_aresetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interconnect_imp_6HQKUY interconnect
       (.M00_AXI1_araddr(interconnect_DDR4_MEM01_M00_AXI_ARADDR),
        .M00_AXI1_arburst(interconnect_DDR4_MEM01_M00_AXI_ARBURST),
        .M00_AXI1_arcache(interconnect_DDR4_MEM01_M00_AXI_ARCACHE),
        .M00_AXI1_arlen(interconnect_DDR4_MEM01_M00_AXI_ARLEN),
        .M00_AXI1_arlock(interconnect_DDR4_MEM01_M00_AXI_ARLOCK),
        .M00_AXI1_arprot(interconnect_DDR4_MEM01_M00_AXI_ARPROT),
        .M00_AXI1_arqos(interconnect_DDR4_MEM01_M00_AXI_ARQOS),
        .M00_AXI1_arvalid(interconnect_DDR4_MEM01_M00_AXI_ARVALID),
        .M00_AXI1_awaddr(interconnect_DDR4_MEM01_M00_AXI_AWADDR),
        .M00_AXI1_awburst(interconnect_DDR4_MEM01_M00_AXI_AWBURST),
        .M00_AXI1_awcache(interconnect_DDR4_MEM01_M00_AXI_AWCACHE),
        .M00_AXI1_awlen(interconnect_DDR4_MEM01_M00_AXI_AWLEN),
        .M00_AXI1_awlock(interconnect_DDR4_MEM01_M00_AXI_AWLOCK),
        .M00_AXI1_awprot(interconnect_DDR4_MEM01_M00_AXI_AWPROT),
        .M00_AXI1_awqos(interconnect_DDR4_MEM01_M00_AXI_AWQOS),
        .M00_AXI1_awvalid(interconnect_DDR4_MEM01_M00_AXI_AWVALID),
        .M00_AXI1_bready(interconnect_DDR4_MEM01_M00_AXI_BREADY),
        .M00_AXI1_rready(interconnect_DDR4_MEM01_M00_AXI_RREADY),
        .M00_AXI1_wdata(interconnect_DDR4_MEM01_M00_AXI_WDATA),
        .M00_AXI1_wlast(interconnect_DDR4_MEM01_M00_AXI_WLAST),
        .M00_AXI1_wstrb(interconnect_DDR4_MEM01_M00_AXI_WSTRB),
        .M00_AXI1_wvalid(interconnect_DDR4_MEM01_M00_AXI_WVALID),
        .M00_AXI2_araddr(interconnect_DDR4_MEM02_M00_AXI_ARADDR),
        .M00_AXI2_arburst(interconnect_DDR4_MEM02_M00_AXI_ARBURST),
        .M00_AXI2_arcache(interconnect_DDR4_MEM02_M00_AXI_ARCACHE),
        .M00_AXI2_arlen(interconnect_DDR4_MEM02_M00_AXI_ARLEN),
        .M00_AXI2_arlock(interconnect_DDR4_MEM02_M00_AXI_ARLOCK),
        .M00_AXI2_arprot(interconnect_DDR4_MEM02_M00_AXI_ARPROT),
        .M00_AXI2_arqos(interconnect_DDR4_MEM02_M00_AXI_ARQOS),
        .M00_AXI2_arvalid(interconnect_DDR4_MEM02_M00_AXI_ARVALID),
        .M00_AXI2_awaddr(interconnect_DDR4_MEM02_M00_AXI_AWADDR),
        .M00_AXI2_awburst(interconnect_DDR4_MEM02_M00_AXI_AWBURST),
        .M00_AXI2_awcache(interconnect_DDR4_MEM02_M00_AXI_AWCACHE),
        .M00_AXI2_awlen(interconnect_DDR4_MEM02_M00_AXI_AWLEN),
        .M00_AXI2_awlock(interconnect_DDR4_MEM02_M00_AXI_AWLOCK),
        .M00_AXI2_awprot(interconnect_DDR4_MEM02_M00_AXI_AWPROT),
        .M00_AXI2_awqos(interconnect_DDR4_MEM02_M00_AXI_AWQOS),
        .M00_AXI2_awvalid(interconnect_DDR4_MEM02_M00_AXI_AWVALID),
        .M00_AXI2_bready(interconnect_DDR4_MEM02_M00_AXI_BREADY),
        .M00_AXI2_rready(interconnect_DDR4_MEM02_M00_AXI_RREADY),
        .M00_AXI2_wdata(interconnect_DDR4_MEM02_M00_AXI_WDATA),
        .M00_AXI2_wlast(interconnect_DDR4_MEM02_M00_AXI_WLAST),
        .M00_AXI2_wstrb(interconnect_DDR4_MEM02_M00_AXI_WSTRB),
        .M00_AXI2_wvalid(interconnect_DDR4_MEM02_M00_AXI_WVALID),
        .M00_AXI_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arregion(M00_AXI_arregion),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awregion(M00_AXI_awregion),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arregion(S01_AXI_arregion),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awregion(S01_AXI_awregion),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bid(S01_AXI_bid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rid(S01_AXI_rid),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arid(S02_AXI_arid),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arregion(S02_AXI_arregion),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awid(S02_AXI_awid),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awregion(S02_AXI_awregion),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bid(S02_AXI_bid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rid(S02_AXI_rid),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .S03_AXI_araddr(S03_AXI_araddr),
        .S03_AXI_arburst(S03_AXI_arburst),
        .S03_AXI_arcache(S03_AXI_arcache),
        .S03_AXI_arid(S03_AXI_arid),
        .S03_AXI_arlen(S03_AXI_arlen),
        .S03_AXI_arlock(S03_AXI_arlock),
        .S03_AXI_arprot(S03_AXI_arprot),
        .S03_AXI_arqos(S03_AXI_arqos),
        .S03_AXI_arready(S03_AXI_arready),
        .S03_AXI_arregion(S03_AXI_arregion),
        .S03_AXI_arvalid(S03_AXI_arvalid),
        .S03_AXI_awaddr(S03_AXI_awaddr),
        .S03_AXI_awburst(S03_AXI_awburst),
        .S03_AXI_awcache(S03_AXI_awcache),
        .S03_AXI_awid(S03_AXI_awid),
        .S03_AXI_awlen(S03_AXI_awlen),
        .S03_AXI_awlock(S03_AXI_awlock),
        .S03_AXI_awprot(S03_AXI_awprot),
        .S03_AXI_awqos(S03_AXI_awqos),
        .S03_AXI_awready(S03_AXI_awready),
        .S03_AXI_awregion(S03_AXI_awregion),
        .S03_AXI_awvalid(S03_AXI_awvalid),
        .S03_AXI_bid(S03_AXI_bid),
        .S03_AXI_bready(S03_AXI_bready),
        .S03_AXI_bresp(S03_AXI_bresp),
        .S03_AXI_bvalid(S03_AXI_bvalid),
        .S03_AXI_rdata(S03_AXI_rdata),
        .S03_AXI_rid(S03_AXI_rid),
        .S03_AXI_rlast(S03_AXI_rlast),
        .S03_AXI_rready(S03_AXI_rready),
        .S03_AXI_rresp(S03_AXI_rresp),
        .S03_AXI_rvalid(S03_AXI_rvalid),
        .S03_AXI_wdata(S03_AXI_wdata),
        .S03_AXI_wlast(S03_AXI_wlast),
        .S03_AXI_wready(S03_AXI_wready),
        .S03_AXI_wstrb(S03_AXI_wstrb),
        .S03_AXI_wvalid(S03_AXI_wvalid),
        .S04_AXI_araddr(S04_AXI_araddr),
        .S04_AXI_arcache(S04_AXI_arcache),
        .S04_AXI_arlen(S04_AXI_arlen),
        .S04_AXI_arlock(S04_AXI_arlock),
        .S04_AXI_arprot(S04_AXI_arprot),
        .S04_AXI_arqos(S04_AXI_arqos),
        .S04_AXI_arready(S04_AXI_arready),
        .S04_AXI_arregion(S04_AXI_arregion),
        .S04_AXI_arvalid(S04_AXI_arvalid),
        .S04_AXI_awaddr(S04_AXI_awaddr),
        .S04_AXI_awcache(S04_AXI_awcache),
        .S04_AXI_awlen(S04_AXI_awlen),
        .S04_AXI_awlock(S04_AXI_awlock),
        .S04_AXI_awprot(S04_AXI_awprot),
        .S04_AXI_awqos(S04_AXI_awqos),
        .S04_AXI_awready(S04_AXI_awready),
        .S04_AXI_awregion(S04_AXI_awregion),
        .S04_AXI_awvalid(S04_AXI_awvalid),
        .S04_AXI_bready(S04_AXI_bready),
        .S04_AXI_bresp(S04_AXI_bresp),
        .S04_AXI_bvalid(S04_AXI_bvalid),
        .S04_AXI_rdata(S04_AXI_rdata),
        .S04_AXI_rlast(S04_AXI_rlast),
        .S04_AXI_rready(S04_AXI_rready),
        .S04_AXI_rresp(S04_AXI_rresp),
        .S04_AXI_rvalid(S04_AXI_rvalid),
        .S04_AXI_wdata(S04_AXI_wdata),
        .S04_AXI_wlast(S04_AXI_wlast),
        .S04_AXI_wready(S04_AXI_wready),
        .S04_AXI_wstrb(S04_AXI_wstrb),
        .S04_AXI_wvalid(S04_AXI_wvalid),
        .S05_AXI_araddr(S05_AXI_araddr),
        .S05_AXI_arcache(S05_AXI_arcache),
        .S05_AXI_arlen(S05_AXI_arlen),
        .S05_AXI_arlock(S05_AXI_arlock),
        .S05_AXI_arprot(S05_AXI_arprot),
        .S05_AXI_arqos(S05_AXI_arqos),
        .S05_AXI_arready(S05_AXI_arready),
        .S05_AXI_arregion(S05_AXI_arregion),
        .S05_AXI_arvalid(S05_AXI_arvalid),
        .S05_AXI_awaddr(S05_AXI_awaddr),
        .S05_AXI_awcache(S05_AXI_awcache),
        .S05_AXI_awlen(S05_AXI_awlen),
        .S05_AXI_awlock(S05_AXI_awlock),
        .S05_AXI_awprot(S05_AXI_awprot),
        .S05_AXI_awqos(S05_AXI_awqos),
        .S05_AXI_awready(S05_AXI_awready),
        .S05_AXI_awregion(S05_AXI_awregion),
        .S05_AXI_awvalid(S05_AXI_awvalid),
        .S05_AXI_bready(S05_AXI_bready),
        .S05_AXI_bresp(S05_AXI_bresp),
        .S05_AXI_bvalid(S05_AXI_bvalid),
        .S05_AXI_rdata(S05_AXI_rdata),
        .S05_AXI_rlast(S05_AXI_rlast),
        .S05_AXI_rready(S05_AXI_rready),
        .S05_AXI_rresp(S05_AXI_rresp),
        .S05_AXI_rvalid(S05_AXI_rvalid),
        .S05_AXI_wdata(S05_AXI_wdata),
        .S05_AXI_wlast(S05_AXI_wlast),
        .S05_AXI_wready(S05_AXI_wready),
        .S05_AXI_wstrb(S05_AXI_wstrb),
        .S05_AXI_wvalid(S05_AXI_wvalid),
        .S06_AXI_araddr(S06_AXI_araddr),
        .S06_AXI_arcache(S06_AXI_arcache),
        .S06_AXI_arlen(S06_AXI_arlen),
        .S06_AXI_arlock(S06_AXI_arlock),
        .S06_AXI_arprot(S06_AXI_arprot),
        .S06_AXI_arqos(S06_AXI_arqos),
        .S06_AXI_arready(S06_AXI_arready),
        .S06_AXI_arregion(S06_AXI_arregion),
        .S06_AXI_arvalid(S06_AXI_arvalid),
        .S06_AXI_awaddr(S06_AXI_awaddr),
        .S06_AXI_awcache(S06_AXI_awcache),
        .S06_AXI_awlen(S06_AXI_awlen),
        .S06_AXI_awlock(S06_AXI_awlock),
        .S06_AXI_awprot(S06_AXI_awprot),
        .S06_AXI_awqos(S06_AXI_awqos),
        .S06_AXI_awready(S06_AXI_awready),
        .S06_AXI_awregion(S06_AXI_awregion),
        .S06_AXI_awvalid(S06_AXI_awvalid),
        .S06_AXI_bready(S06_AXI_bready),
        .S06_AXI_bresp(S06_AXI_bresp),
        .S06_AXI_bvalid(S06_AXI_bvalid),
        .S06_AXI_rdata(S06_AXI_rdata),
        .S06_AXI_rlast(S06_AXI_rlast),
        .S06_AXI_rready(S06_AXI_rready),
        .S06_AXI_rresp(S06_AXI_rresp),
        .S06_AXI_rvalid(S06_AXI_rvalid),
        .S06_AXI_wdata(S06_AXI_wdata),
        .S06_AXI_wlast(S06_AXI_wlast),
        .S06_AXI_wready(S06_AXI_wready),
        .S06_AXI_wstrb(S06_AXI_wstrb),
        .S06_AXI_wvalid(S06_AXI_wvalid),
        .S07_AXI_araddr(S07_AXI_araddr),
        .S07_AXI_arcache(S07_AXI_arcache),
        .S07_AXI_arlen(S07_AXI_arlen),
        .S07_AXI_arlock(S07_AXI_arlock),
        .S07_AXI_arprot(S07_AXI_arprot),
        .S07_AXI_arqos(S07_AXI_arqos),
        .S07_AXI_arready(S07_AXI_arready),
        .S07_AXI_arregion(S07_AXI_arregion),
        .S07_AXI_arvalid(S07_AXI_arvalid),
        .S07_AXI_awaddr(S07_AXI_awaddr),
        .S07_AXI_awcache(S07_AXI_awcache),
        .S07_AXI_awlen(S07_AXI_awlen),
        .S07_AXI_awlock(S07_AXI_awlock),
        .S07_AXI_awprot(S07_AXI_awprot),
        .S07_AXI_awqos(S07_AXI_awqos),
        .S07_AXI_awready(S07_AXI_awready),
        .S07_AXI_awregion(S07_AXI_awregion),
        .S07_AXI_awvalid(S07_AXI_awvalid),
        .S07_AXI_bready(S07_AXI_bready),
        .S07_AXI_bresp(S07_AXI_bresp),
        .S07_AXI_bvalid(S07_AXI_bvalid),
        .S07_AXI_rdata(S07_AXI_rdata),
        .S07_AXI_rlast(S07_AXI_rlast),
        .S07_AXI_rready(S07_AXI_rready),
        .S07_AXI_rresp(S07_AXI_rresp),
        .S07_AXI_rvalid(S07_AXI_rvalid),
        .S07_AXI_wdata(S07_AXI_wdata),
        .S07_AXI_wlast(S07_AXI_wlast),
        .S07_AXI_wready(S07_AXI_wready),
        .S07_AXI_wstrb(S07_AXI_wstrb),
        .S07_AXI_wvalid(S07_AXI_wvalid),
        .S_AXI1_arready(interconnect_DDR4_MEM01_M00_AXI_ARREADY),
        .S_AXI1_awready(interconnect_DDR4_MEM01_M00_AXI_AWREADY),
        .S_AXI1_bresp(interconnect_DDR4_MEM01_M00_AXI_BRESP),
        .S_AXI1_bvalid(interconnect_DDR4_MEM01_M00_AXI_BVALID),
        .S_AXI1_rdata(interconnect_DDR4_MEM01_M00_AXI_RDATA),
        .S_AXI1_rlast(interconnect_DDR4_MEM01_M00_AXI_RLAST),
        .S_AXI1_rresp(interconnect_DDR4_MEM01_M00_AXI_RRESP),
        .S_AXI1_rvalid(interconnect_DDR4_MEM01_M00_AXI_RVALID),
        .S_AXI1_wready(interconnect_DDR4_MEM01_M00_AXI_WREADY),
        .S_AXI2_arready(interconnect_DDR4_MEM02_M00_AXI_ARREADY),
        .S_AXI2_awready(interconnect_DDR4_MEM02_M00_AXI_AWREADY),
        .S_AXI2_bresp(interconnect_DDR4_MEM02_M00_AXI_BRESP),
        .S_AXI2_bvalid(interconnect_DDR4_MEM02_M00_AXI_BVALID),
        .S_AXI2_rdata(interconnect_DDR4_MEM02_M00_AXI_RDATA),
        .S_AXI2_rlast(interconnect_DDR4_MEM02_M00_AXI_RLAST),
        .S_AXI2_rresp(interconnect_DDR4_MEM02_M00_AXI_RRESP),
        .S_AXI2_rvalid(interconnect_DDR4_MEM02_M00_AXI_RVALID),
        .S_AXI2_wready(interconnect_DDR4_MEM02_M00_AXI_WREADY),
        .S_AXI_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .S_AXI_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .S_AXI_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .S_AXI_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .S_AXI_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .S_AXI_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .S_AXI_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .S_AXI_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .S_AXI_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .aclk(aclk),
        .aclk2(aclk2),
        .\bbstub_m_axi_araddr[38] (M00_AXI_araddr),
        .\bbstub_m_axi_arburst[1] (M00_AXI_arburst),
        .\bbstub_m_axi_arcache[3] (M00_AXI_arcache),
        .\bbstub_m_axi_arlen[7] (M00_AXI_arlen),
        .\bbstub_m_axi_arlock[0] (M00_AXI_arlock),
        .\bbstub_m_axi_arprot[2] (M00_AXI_arprot),
        .\bbstub_m_axi_arqos[3] (M00_AXI_arqos),
        .bbstub_m_axi_arvalid(M00_AXI_arvalid),
        .\bbstub_m_axi_awaddr[38] (M00_AXI_awaddr),
        .\bbstub_m_axi_awburst[1] (M00_AXI_awburst),
        .\bbstub_m_axi_awcache[3] (M00_AXI_awcache),
        .\bbstub_m_axi_awlen[7] (M00_AXI_awlen),
        .\bbstub_m_axi_awlock[0] (M00_AXI_awlock),
        .\bbstub_m_axi_awprot[2] (M00_AXI_awprot),
        .\bbstub_m_axi_awqos[3] (M00_AXI_awqos),
        .bbstub_m_axi_awvalid(M00_AXI_awvalid),
        .bbstub_m_axi_bready(M00_AXI_bready),
        .bbstub_m_axi_rready(M00_AXI_rready),
        .\bbstub_m_axi_wdata[511] (M00_AXI_wdata),
        .bbstub_m_axi_wlast(M00_AXI_wlast),
        .\bbstub_m_axi_wstrb[63] (M00_AXI_wstrb),
        .bbstub_m_axi_wvalid(M00_AXI_wvalid),
        .ddr4_mem00_ui_clk(ddr4_mem00_ui_clk),
        .ddr4_mem01_ui_clk(ddr4_mem01_ui_clk),
        .ddr4_mem02_ui_clk(ddr4_mem02_ui_clk),
        .interconnect_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .interconnect_aresetn1(psr_aclk_SLR1_interconnect_aresetn),
        .interconnect_aresetn2(psr_aclk_SLR2_interconnect_aresetn),
        .interconnect_aresetn3(psr_aclk2_SLR1_interconnect_aresetn));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_imp_1K98CM8 memory
       (.DDR4_MEM00_DIFF_CLK_clk_n(DDR4_MEM00_DIFF_CLK_clk_n),
        .DDR4_MEM00_DIFF_CLK_clk_p(DDR4_MEM00_DIFF_CLK_clk_p),
        .DDR4_MEM00_act_n(DDR4_MEM00_act_n),
        .DDR4_MEM00_adr(DDR4_MEM00_adr),
        .DDR4_MEM00_ba(DDR4_MEM00_ba),
        .DDR4_MEM00_bg(DDR4_MEM00_bg),
        .DDR4_MEM00_ck_c(DDR4_MEM00_ck_c),
        .DDR4_MEM00_ck_t(DDR4_MEM00_ck_t),
        .DDR4_MEM00_cke(DDR4_MEM00_cke),
        .DDR4_MEM00_cs_n(DDR4_MEM00_cs_n),
        .DDR4_MEM00_dq(DDR4_MEM00_dq),
        .DDR4_MEM00_dqs_c(DDR4_MEM00_dqs_c),
        .DDR4_MEM00_dqs_t(DDR4_MEM00_dqs_t),
        .DDR4_MEM00_odt(DDR4_MEM00_odt),
        .DDR4_MEM00_par(DDR4_MEM00_par),
        .DDR4_MEM00_reset_n(DDR4_MEM00_reset_n),
        .DDR4_MEM01_DIFF_CLK_clk_n(DDR4_MEM01_DIFF_CLK_clk_n),
        .DDR4_MEM01_DIFF_CLK_clk_p(DDR4_MEM01_DIFF_CLK_clk_p),
        .DDR4_MEM01_act_n(DDR4_MEM01_act_n),
        .DDR4_MEM01_adr(DDR4_MEM01_adr),
        .DDR4_MEM01_ba(DDR4_MEM01_ba),
        .DDR4_MEM01_bg(DDR4_MEM01_bg),
        .DDR4_MEM01_ck_c(DDR4_MEM01_ck_c),
        .DDR4_MEM01_ck_t(DDR4_MEM01_ck_t),
        .DDR4_MEM01_cke(DDR4_MEM01_cke),
        .DDR4_MEM01_cs_n(DDR4_MEM01_cs_n),
        .DDR4_MEM01_dq(DDR4_MEM01_dq),
        .DDR4_MEM01_dqs_c(DDR4_MEM01_dqs_c),
        .DDR4_MEM01_dqs_t(DDR4_MEM01_dqs_t),
        .DDR4_MEM01_odt(DDR4_MEM01_odt),
        .DDR4_MEM01_par(DDR4_MEM01_par),
        .DDR4_MEM01_reset_n(DDR4_MEM01_reset_n),
        .DDR4_MEM02_DIFF_CLK_clk_n(DDR4_MEM02_DIFF_CLK_clk_n),
        .DDR4_MEM02_DIFF_CLK_clk_p(DDR4_MEM02_DIFF_CLK_clk_p),
        .DDR4_MEM02_act_n(DDR4_MEM02_act_n),
        .DDR4_MEM02_adr(DDR4_MEM02_adr),
        .DDR4_MEM02_ba(DDR4_MEM02_ba),
        .DDR4_MEM02_bg(DDR4_MEM02_bg),
        .DDR4_MEM02_ck_c(DDR4_MEM02_ck_c),
        .DDR4_MEM02_ck_t(DDR4_MEM02_ck_t),
        .DDR4_MEM02_cke(DDR4_MEM02_cke),
        .DDR4_MEM02_cs_n(DDR4_MEM02_cs_n),
        .DDR4_MEM02_dq(DDR4_MEM02_dq),
        .DDR4_MEM02_dqs_c(DDR4_MEM02_dqs_c),
        .DDR4_MEM02_dqs_t(DDR4_MEM02_dqs_t),
        .DDR4_MEM02_odt(DDR4_MEM02_odt),
        .DDR4_MEM02_par(DDR4_MEM02_par),
        .DDR4_MEM02_reset_n(DDR4_MEM02_reset_n),
        .S_AXI1_araddr(interconnect_DDR4_MEM01_M00_AXI_ARADDR),
        .S_AXI1_arburst(interconnect_DDR4_MEM01_M00_AXI_ARBURST),
        .S_AXI1_arcache(interconnect_DDR4_MEM01_M00_AXI_ARCACHE),
        .S_AXI1_arlen(interconnect_DDR4_MEM01_M00_AXI_ARLEN),
        .S_AXI1_arlock(interconnect_DDR4_MEM01_M00_AXI_ARLOCK),
        .S_AXI1_arprot(interconnect_DDR4_MEM01_M00_AXI_ARPROT),
        .S_AXI1_arqos(interconnect_DDR4_MEM01_M00_AXI_ARQOS),
        .S_AXI1_arready(interconnect_DDR4_MEM01_M00_AXI_ARREADY),
        .S_AXI1_arvalid(interconnect_DDR4_MEM01_M00_AXI_ARVALID),
        .S_AXI1_awaddr(interconnect_DDR4_MEM01_M00_AXI_AWADDR),
        .S_AXI1_awburst(interconnect_DDR4_MEM01_M00_AXI_AWBURST),
        .S_AXI1_awcache(interconnect_DDR4_MEM01_M00_AXI_AWCACHE),
        .S_AXI1_awlen(interconnect_DDR4_MEM01_M00_AXI_AWLEN),
        .S_AXI1_awlock(interconnect_DDR4_MEM01_M00_AXI_AWLOCK),
        .S_AXI1_awprot(interconnect_DDR4_MEM01_M00_AXI_AWPROT),
        .S_AXI1_awqos(interconnect_DDR4_MEM01_M00_AXI_AWQOS),
        .S_AXI1_awready(interconnect_DDR4_MEM01_M00_AXI_AWREADY),
        .S_AXI1_awvalid(interconnect_DDR4_MEM01_M00_AXI_AWVALID),
        .S_AXI1_bready(interconnect_DDR4_MEM01_M00_AXI_BREADY),
        .S_AXI1_bresp(interconnect_DDR4_MEM01_M00_AXI_BRESP),
        .S_AXI1_bvalid(interconnect_DDR4_MEM01_M00_AXI_BVALID),
        .S_AXI1_rdata(interconnect_DDR4_MEM01_M00_AXI_RDATA),
        .S_AXI1_rlast(interconnect_DDR4_MEM01_M00_AXI_RLAST),
        .S_AXI1_rready(interconnect_DDR4_MEM01_M00_AXI_RREADY),
        .S_AXI1_rresp(interconnect_DDR4_MEM01_M00_AXI_RRESP),
        .S_AXI1_rvalid(interconnect_DDR4_MEM01_M00_AXI_RVALID),
        .S_AXI1_wdata(interconnect_DDR4_MEM01_M00_AXI_WDATA),
        .S_AXI1_wlast(interconnect_DDR4_MEM01_M00_AXI_WLAST),
        .S_AXI1_wready(interconnect_DDR4_MEM01_M00_AXI_WREADY),
        .S_AXI1_wstrb(interconnect_DDR4_MEM01_M00_AXI_WSTRB),
        .S_AXI1_wvalid(interconnect_DDR4_MEM01_M00_AXI_WVALID),
        .S_AXI2_araddr(interconnect_DDR4_MEM02_M00_AXI_ARADDR),
        .S_AXI2_arburst(interconnect_DDR4_MEM02_M00_AXI_ARBURST),
        .S_AXI2_arcache(interconnect_DDR4_MEM02_M00_AXI_ARCACHE),
        .S_AXI2_arlen(interconnect_DDR4_MEM02_M00_AXI_ARLEN),
        .S_AXI2_arlock(interconnect_DDR4_MEM02_M00_AXI_ARLOCK),
        .S_AXI2_arprot(interconnect_DDR4_MEM02_M00_AXI_ARPROT),
        .S_AXI2_arqos(interconnect_DDR4_MEM02_M00_AXI_ARQOS),
        .S_AXI2_arready(interconnect_DDR4_MEM02_M00_AXI_ARREADY),
        .S_AXI2_arvalid(interconnect_DDR4_MEM02_M00_AXI_ARVALID),
        .S_AXI2_awaddr(interconnect_DDR4_MEM02_M00_AXI_AWADDR),
        .S_AXI2_awburst(interconnect_DDR4_MEM02_M00_AXI_AWBURST),
        .S_AXI2_awcache(interconnect_DDR4_MEM02_M00_AXI_AWCACHE),
        .S_AXI2_awlen(interconnect_DDR4_MEM02_M00_AXI_AWLEN),
        .S_AXI2_awlock(interconnect_DDR4_MEM02_M00_AXI_AWLOCK),
        .S_AXI2_awprot(interconnect_DDR4_MEM02_M00_AXI_AWPROT),
        .S_AXI2_awqos(interconnect_DDR4_MEM02_M00_AXI_AWQOS),
        .S_AXI2_awready(interconnect_DDR4_MEM02_M00_AXI_AWREADY),
        .S_AXI2_awvalid(interconnect_DDR4_MEM02_M00_AXI_AWVALID),
        .S_AXI2_bready(interconnect_DDR4_MEM02_M00_AXI_BREADY),
        .S_AXI2_bresp(interconnect_DDR4_MEM02_M00_AXI_BRESP),
        .S_AXI2_bvalid(interconnect_DDR4_MEM02_M00_AXI_BVALID),
        .S_AXI2_rdata(interconnect_DDR4_MEM02_M00_AXI_RDATA),
        .S_AXI2_rlast(interconnect_DDR4_MEM02_M00_AXI_RLAST),
        .S_AXI2_rready(interconnect_DDR4_MEM02_M00_AXI_RREADY),
        .S_AXI2_rresp(interconnect_DDR4_MEM02_M00_AXI_RRESP),
        .S_AXI2_rvalid(interconnect_DDR4_MEM02_M00_AXI_RVALID),
        .S_AXI2_wdata(interconnect_DDR4_MEM02_M00_AXI_WDATA),
        .S_AXI2_wlast(interconnect_DDR4_MEM02_M00_AXI_WLAST),
        .S_AXI2_wready(interconnect_DDR4_MEM02_M00_AXI_WREADY),
        .S_AXI2_wstrb(interconnect_DDR4_MEM02_M00_AXI_WSTRB),
        .S_AXI2_wvalid(interconnect_DDR4_MEM02_M00_AXI_WVALID),
        .S_AXI_CTRL_araddr(S_AXI_CTRL_araddr),
        .S_AXI_CTRL_arprot(S_AXI_CTRL_arprot),
        .S_AXI_CTRL_arready(S_AXI_CTRL_arready),
        .S_AXI_CTRL_arvalid(S_AXI_CTRL_arvalid),
        .S_AXI_CTRL_awaddr(S_AXI_CTRL_awaddr),
        .S_AXI_CTRL_awprot(S_AXI_CTRL_awprot),
        .S_AXI_CTRL_awready(S_AXI_CTRL_awready),
        .S_AXI_CTRL_awvalid(S_AXI_CTRL_awvalid),
        .S_AXI_CTRL_bready(S_AXI_CTRL_bready),
        .S_AXI_CTRL_bresp(S_AXI_CTRL_bresp),
        .S_AXI_CTRL_bvalid(S_AXI_CTRL_bvalid),
        .S_AXI_CTRL_rdata(S_AXI_CTRL_rdata),
        .S_AXI_CTRL_rready(S_AXI_CTRL_rready),
        .S_AXI_CTRL_rresp(S_AXI_CTRL_rresp),
        .S_AXI_CTRL_rvalid(S_AXI_CTRL_rvalid),
        .S_AXI_CTRL_wdata(S_AXI_CTRL_wdata),
        .S_AXI_CTRL_wready(S_AXI_CTRL_wready),
        .S_AXI_CTRL_wstrb(S_AXI_CTRL_wstrb),
        .S_AXI_CTRL_wvalid(S_AXI_CTRL_wvalid),
        .S_AXI_araddr(interconnect_DDR4_MEM00_M00_AXI_ARADDR),
        .S_AXI_arburst(interconnect_DDR4_MEM00_M00_AXI_ARBURST),
        .S_AXI_arcache(interconnect_DDR4_MEM00_M00_AXI_ARCACHE),
        .S_AXI_arlen(interconnect_DDR4_MEM00_M00_AXI_ARLEN),
        .S_AXI_arlock(interconnect_DDR4_MEM00_M00_AXI_ARLOCK),
        .S_AXI_arprot(interconnect_DDR4_MEM00_M00_AXI_ARPROT),
        .S_AXI_arqos(interconnect_DDR4_MEM00_M00_AXI_ARQOS),
        .S_AXI_arready(interconnect_DDR4_MEM00_M00_AXI_ARREADY),
        .S_AXI_arvalid(interconnect_DDR4_MEM00_M00_AXI_ARVALID),
        .S_AXI_awaddr(interconnect_DDR4_MEM00_M00_AXI_AWADDR),
        .S_AXI_awburst(interconnect_DDR4_MEM00_M00_AXI_AWBURST),
        .S_AXI_awcache(interconnect_DDR4_MEM00_M00_AXI_AWCACHE),
        .S_AXI_awlen(interconnect_DDR4_MEM00_M00_AXI_AWLEN),
        .S_AXI_awlock(interconnect_DDR4_MEM00_M00_AXI_AWLOCK),
        .S_AXI_awprot(interconnect_DDR4_MEM00_M00_AXI_AWPROT),
        .S_AXI_awqos(interconnect_DDR4_MEM00_M00_AXI_AWQOS),
        .S_AXI_awready(interconnect_DDR4_MEM00_M00_AXI_AWREADY),
        .S_AXI_awvalid(interconnect_DDR4_MEM00_M00_AXI_AWVALID),
        .S_AXI_bready(interconnect_DDR4_MEM00_M00_AXI_BREADY),
        .S_AXI_bresp(interconnect_DDR4_MEM00_M00_AXI_BRESP),
        .S_AXI_bvalid(interconnect_DDR4_MEM00_M00_AXI_BVALID),
        .S_AXI_rdata(interconnect_DDR4_MEM00_M00_AXI_RDATA),
        .S_AXI_rlast(interconnect_DDR4_MEM00_M00_AXI_RLAST),
        .S_AXI_rready(interconnect_DDR4_MEM00_M00_AXI_RREADY),
        .S_AXI_rresp(interconnect_DDR4_MEM00_M00_AXI_RRESP),
        .S_AXI_rvalid(interconnect_DDR4_MEM00_M00_AXI_RVALID),
        .S_AXI_wdata(interconnect_DDR4_MEM00_M00_AXI_WDATA),
        .S_AXI_wlast(interconnect_DDR4_MEM00_M00_AXI_WLAST),
        .S_AXI_wready(interconnect_DDR4_MEM00_M00_AXI_WREADY),
        .S_AXI_wstrb(interconnect_DDR4_MEM00_M00_AXI_WSTRB),
        .S_AXI_wvalid(interconnect_DDR4_MEM00_M00_AXI_WVALID),
        .aclk1(aclk1),
        .aresetn(aresetn),
        .ddr4_mem00_sys_rst(ddr4_mem00_sys_rst),
        .ddr4_mem00_ui_clk(ddr4_mem00_ui_clk),
        .ddr4_mem01_sys_rst(ddr4_mem01_sys_rst),
        .ddr4_mem01_ui_clk(ddr4_mem01_ui_clk),
        .ddr4_mem02_sys_rst(ddr4_mem02_sys_rst),
        .ddr4_mem02_ui_clk(ddr4_mem02_ui_clk),
        .ddr4_mem_calib_complete(ddr4_mem_calib_complete),
        .ddr4_mem_calib_vec(ddr4_mem_calib_vec));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_imp_1YKOSPE reset
       (.aclk(aclk),
        .aclk2(aclk2),
        .aresetn(aresetn),
        .interconnect_aresetn(psr_aclk_SLR0_interconnect_aresetn),
        .interconnect_aresetn1(psr_aclk_SLR1_interconnect_aresetn),
        .interconnect_aresetn2(psr_aclk_SLR2_interconnect_aresetn),
        .interconnect_aresetn3(psr_aclk2_SLR1_interconnect_aresetn));
endmodule

(* CHECK_LICENSE_TYPE = "bd_d216_calib_concat_0,xlconcat_v2_1_3_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_3_xlconcat,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_calib_concat_0
   (In0,
    In1,
    In2,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  output [2:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;
  wire [0:0]In2;

  assign dout[2] = In2;
  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_calib_reduce_0
   (Op1,
    Res);
  input [2:0]Op1;
  output Res;


endmodule

(* CHECK_LICENSE_TYPE = "bd_d216_calib_vector_concat_0,xlconcat_v2_1_3_xlconcat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "xlconcat_v2_1_3_xlconcat,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_calib_vector_concat_0
   (In0,
    In1,
    In2,
    dout);
  input [0:0]In0;
  input [0:0]In1;
  input [0:0]In2;
  output [2:0]dout;

  wire [0:0]In0;
  wire [0:0]In1;
  wire [0:0]In2;

  assign dout[2] = In2;
  assign dout[1] = In1;
  assign dout[0] = In0;
endmodule

(* X_CORE_INFO = "ddr4_v2_2_9,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem00_0
   (sys_rst,
    c0_sys_clk_p,
    c0_sys_clk_n,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_cke,
    c0_ddr4_odt,
    c0_ddr4_cs_n,
    c0_ddr4_ck_t,
    c0_ddr4_ck_c,
    c0_ddr4_reset_n,
    c0_ddr4_parity,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_init_calib_complete,
    c0_ddr4_ui_clk,
    c0_ddr4_ui_clk_sync_rst,
    addn_ui_clkout1,
    dbg_clk,
    c0_ddr4_s_axi_ctrl_awvalid,
    c0_ddr4_s_axi_ctrl_awready,
    c0_ddr4_s_axi_ctrl_awaddr,
    c0_ddr4_s_axi_ctrl_wvalid,
    c0_ddr4_s_axi_ctrl_wready,
    c0_ddr4_s_axi_ctrl_wdata,
    c0_ddr4_s_axi_ctrl_bvalid,
    c0_ddr4_s_axi_ctrl_bready,
    c0_ddr4_s_axi_ctrl_bresp,
    c0_ddr4_s_axi_ctrl_arvalid,
    c0_ddr4_s_axi_ctrl_arready,
    c0_ddr4_s_axi_ctrl_araddr,
    c0_ddr4_s_axi_ctrl_rvalid,
    c0_ddr4_s_axi_ctrl_rready,
    c0_ddr4_s_axi_ctrl_rdata,
    c0_ddr4_s_axi_ctrl_rresp,
    c0_ddr4_interrupt,
    c0_ddr4_aresetn,
    c0_ddr4_s_axi_awid,
    c0_ddr4_s_axi_awaddr,
    c0_ddr4_s_axi_awlen,
    c0_ddr4_s_axi_awsize,
    c0_ddr4_s_axi_awburst,
    c0_ddr4_s_axi_awlock,
    c0_ddr4_s_axi_awcache,
    c0_ddr4_s_axi_awprot,
    c0_ddr4_s_axi_awqos,
    c0_ddr4_s_axi_awvalid,
    c0_ddr4_s_axi_awready,
    c0_ddr4_s_axi_wdata,
    c0_ddr4_s_axi_wstrb,
    c0_ddr4_s_axi_wlast,
    c0_ddr4_s_axi_wvalid,
    c0_ddr4_s_axi_wready,
    c0_ddr4_s_axi_bready,
    c0_ddr4_s_axi_bid,
    c0_ddr4_s_axi_bresp,
    c0_ddr4_s_axi_bvalid,
    c0_ddr4_s_axi_arid,
    c0_ddr4_s_axi_araddr,
    c0_ddr4_s_axi_arlen,
    c0_ddr4_s_axi_arsize,
    c0_ddr4_s_axi_arburst,
    c0_ddr4_s_axi_arlock,
    c0_ddr4_s_axi_arcache,
    c0_ddr4_s_axi_arprot,
    c0_ddr4_s_axi_arqos,
    c0_ddr4_s_axi_arvalid,
    c0_ddr4_s_axi_arready,
    c0_ddr4_s_axi_rready,
    c0_ddr4_s_axi_rid,
    c0_ddr4_s_axi_rdata,
    c0_ddr4_s_axi_rresp,
    c0_ddr4_s_axi_rlast,
    c0_ddr4_s_axi_rvalid,
    dbg_bus);
  input sys_rst;
  input c0_sys_clk_p;
  input c0_sys_clk_n;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_odt;
  output [0:0]c0_ddr4_cs_n;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_ck_c;
  output c0_ddr4_reset_n;
  output c0_ddr4_parity;
  inout [71:0]c0_ddr4_dq;
  inout [17:0]c0_ddr4_dqs_c;
  inout [17:0]c0_ddr4_dqs_t;
  output c0_init_calib_complete;
  output c0_ddr4_ui_clk;
  output c0_ddr4_ui_clk_sync_rst;
  output addn_ui_clkout1;
  output dbg_clk;
  input c0_ddr4_s_axi_ctrl_awvalid;
  output c0_ddr4_s_axi_ctrl_awready;
  input [31:0]c0_ddr4_s_axi_ctrl_awaddr;
  input c0_ddr4_s_axi_ctrl_wvalid;
  output c0_ddr4_s_axi_ctrl_wready;
  input [31:0]c0_ddr4_s_axi_ctrl_wdata;
  output c0_ddr4_s_axi_ctrl_bvalid;
  input c0_ddr4_s_axi_ctrl_bready;
  output [1:0]c0_ddr4_s_axi_ctrl_bresp;
  input c0_ddr4_s_axi_ctrl_arvalid;
  output c0_ddr4_s_axi_ctrl_arready;
  input [31:0]c0_ddr4_s_axi_ctrl_araddr;
  output c0_ddr4_s_axi_ctrl_rvalid;
  input c0_ddr4_s_axi_ctrl_rready;
  output [31:0]c0_ddr4_s_axi_ctrl_rdata;
  output [1:0]c0_ddr4_s_axi_ctrl_rresp;
  output c0_ddr4_interrupt;
  input c0_ddr4_aresetn;
  input [0:0]c0_ddr4_s_axi_awid;
  input [33:0]c0_ddr4_s_axi_awaddr;
  input [7:0]c0_ddr4_s_axi_awlen;
  input [2:0]c0_ddr4_s_axi_awsize;
  input [1:0]c0_ddr4_s_axi_awburst;
  input [0:0]c0_ddr4_s_axi_awlock;
  input [3:0]c0_ddr4_s_axi_awcache;
  input [2:0]c0_ddr4_s_axi_awprot;
  input [3:0]c0_ddr4_s_axi_awqos;
  input c0_ddr4_s_axi_awvalid;
  output c0_ddr4_s_axi_awready;
  input [511:0]c0_ddr4_s_axi_wdata;
  input [63:0]c0_ddr4_s_axi_wstrb;
  input c0_ddr4_s_axi_wlast;
  input c0_ddr4_s_axi_wvalid;
  output c0_ddr4_s_axi_wready;
  input c0_ddr4_s_axi_bready;
  output [0:0]c0_ddr4_s_axi_bid;
  output [1:0]c0_ddr4_s_axi_bresp;
  output c0_ddr4_s_axi_bvalid;
  input [0:0]c0_ddr4_s_axi_arid;
  input [33:0]c0_ddr4_s_axi_araddr;
  input [7:0]c0_ddr4_s_axi_arlen;
  input [2:0]c0_ddr4_s_axi_arsize;
  input [1:0]c0_ddr4_s_axi_arburst;
  input [0:0]c0_ddr4_s_axi_arlock;
  input [3:0]c0_ddr4_s_axi_arcache;
  input [2:0]c0_ddr4_s_axi_arprot;
  input [3:0]c0_ddr4_s_axi_arqos;
  input c0_ddr4_s_axi_arvalid;
  output c0_ddr4_s_axi_arready;
  input c0_ddr4_s_axi_rready;
  output [0:0]c0_ddr4_s_axi_rid;
  output [511:0]c0_ddr4_s_axi_rdata;
  output [1:0]c0_ddr4_s_axi_rresp;
  output c0_ddr4_s_axi_rlast;
  output c0_ddr4_s_axi_rvalid;
  output [511:0]dbg_bus;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_20_axi_clock_converter,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem00_ctrl_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "ddr4_v2_2_9,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem01_0
   (sys_rst,
    c0_sys_clk_p,
    c0_sys_clk_n,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_cke,
    c0_ddr4_odt,
    c0_ddr4_cs_n,
    c0_ddr4_ck_t,
    c0_ddr4_ck_c,
    c0_ddr4_reset_n,
    c0_ddr4_parity,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_init_calib_complete,
    c0_ddr4_ui_clk,
    c0_ddr4_ui_clk_sync_rst,
    addn_ui_clkout1,
    dbg_clk,
    c0_ddr4_s_axi_ctrl_awvalid,
    c0_ddr4_s_axi_ctrl_awready,
    c0_ddr4_s_axi_ctrl_awaddr,
    c0_ddr4_s_axi_ctrl_wvalid,
    c0_ddr4_s_axi_ctrl_wready,
    c0_ddr4_s_axi_ctrl_wdata,
    c0_ddr4_s_axi_ctrl_bvalid,
    c0_ddr4_s_axi_ctrl_bready,
    c0_ddr4_s_axi_ctrl_bresp,
    c0_ddr4_s_axi_ctrl_arvalid,
    c0_ddr4_s_axi_ctrl_arready,
    c0_ddr4_s_axi_ctrl_araddr,
    c0_ddr4_s_axi_ctrl_rvalid,
    c0_ddr4_s_axi_ctrl_rready,
    c0_ddr4_s_axi_ctrl_rdata,
    c0_ddr4_s_axi_ctrl_rresp,
    c0_ddr4_interrupt,
    c0_ddr4_aresetn,
    c0_ddr4_s_axi_awid,
    c0_ddr4_s_axi_awaddr,
    c0_ddr4_s_axi_awlen,
    c0_ddr4_s_axi_awsize,
    c0_ddr4_s_axi_awburst,
    c0_ddr4_s_axi_awlock,
    c0_ddr4_s_axi_awcache,
    c0_ddr4_s_axi_awprot,
    c0_ddr4_s_axi_awqos,
    c0_ddr4_s_axi_awvalid,
    c0_ddr4_s_axi_awready,
    c0_ddr4_s_axi_wdata,
    c0_ddr4_s_axi_wstrb,
    c0_ddr4_s_axi_wlast,
    c0_ddr4_s_axi_wvalid,
    c0_ddr4_s_axi_wready,
    c0_ddr4_s_axi_bready,
    c0_ddr4_s_axi_bid,
    c0_ddr4_s_axi_bresp,
    c0_ddr4_s_axi_bvalid,
    c0_ddr4_s_axi_arid,
    c0_ddr4_s_axi_araddr,
    c0_ddr4_s_axi_arlen,
    c0_ddr4_s_axi_arsize,
    c0_ddr4_s_axi_arburst,
    c0_ddr4_s_axi_arlock,
    c0_ddr4_s_axi_arcache,
    c0_ddr4_s_axi_arprot,
    c0_ddr4_s_axi_arqos,
    c0_ddr4_s_axi_arvalid,
    c0_ddr4_s_axi_arready,
    c0_ddr4_s_axi_rready,
    c0_ddr4_s_axi_rid,
    c0_ddr4_s_axi_rdata,
    c0_ddr4_s_axi_rresp,
    c0_ddr4_s_axi_rlast,
    c0_ddr4_s_axi_rvalid,
    dbg_bus);
  input sys_rst;
  input c0_sys_clk_p;
  input c0_sys_clk_n;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_odt;
  output [0:0]c0_ddr4_cs_n;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_ck_c;
  output c0_ddr4_reset_n;
  output c0_ddr4_parity;
  inout [71:0]c0_ddr4_dq;
  inout [17:0]c0_ddr4_dqs_c;
  inout [17:0]c0_ddr4_dqs_t;
  output c0_init_calib_complete;
  output c0_ddr4_ui_clk;
  output c0_ddr4_ui_clk_sync_rst;
  output addn_ui_clkout1;
  output dbg_clk;
  input c0_ddr4_s_axi_ctrl_awvalid;
  output c0_ddr4_s_axi_ctrl_awready;
  input [31:0]c0_ddr4_s_axi_ctrl_awaddr;
  input c0_ddr4_s_axi_ctrl_wvalid;
  output c0_ddr4_s_axi_ctrl_wready;
  input [31:0]c0_ddr4_s_axi_ctrl_wdata;
  output c0_ddr4_s_axi_ctrl_bvalid;
  input c0_ddr4_s_axi_ctrl_bready;
  output [1:0]c0_ddr4_s_axi_ctrl_bresp;
  input c0_ddr4_s_axi_ctrl_arvalid;
  output c0_ddr4_s_axi_ctrl_arready;
  input [31:0]c0_ddr4_s_axi_ctrl_araddr;
  output c0_ddr4_s_axi_ctrl_rvalid;
  input c0_ddr4_s_axi_ctrl_rready;
  output [31:0]c0_ddr4_s_axi_ctrl_rdata;
  output [1:0]c0_ddr4_s_axi_ctrl_rresp;
  output c0_ddr4_interrupt;
  input c0_ddr4_aresetn;
  input [0:0]c0_ddr4_s_axi_awid;
  input [33:0]c0_ddr4_s_axi_awaddr;
  input [7:0]c0_ddr4_s_axi_awlen;
  input [2:0]c0_ddr4_s_axi_awsize;
  input [1:0]c0_ddr4_s_axi_awburst;
  input [0:0]c0_ddr4_s_axi_awlock;
  input [3:0]c0_ddr4_s_axi_awcache;
  input [2:0]c0_ddr4_s_axi_awprot;
  input [3:0]c0_ddr4_s_axi_awqos;
  input c0_ddr4_s_axi_awvalid;
  output c0_ddr4_s_axi_awready;
  input [511:0]c0_ddr4_s_axi_wdata;
  input [63:0]c0_ddr4_s_axi_wstrb;
  input c0_ddr4_s_axi_wlast;
  input c0_ddr4_s_axi_wvalid;
  output c0_ddr4_s_axi_wready;
  input c0_ddr4_s_axi_bready;
  output [0:0]c0_ddr4_s_axi_bid;
  output [1:0]c0_ddr4_s_axi_bresp;
  output c0_ddr4_s_axi_bvalid;
  input [0:0]c0_ddr4_s_axi_arid;
  input [33:0]c0_ddr4_s_axi_araddr;
  input [7:0]c0_ddr4_s_axi_arlen;
  input [2:0]c0_ddr4_s_axi_arsize;
  input [1:0]c0_ddr4_s_axi_arburst;
  input [0:0]c0_ddr4_s_axi_arlock;
  input [3:0]c0_ddr4_s_axi_arcache;
  input [2:0]c0_ddr4_s_axi_arprot;
  input [3:0]c0_ddr4_s_axi_arqos;
  input c0_ddr4_s_axi_arvalid;
  output c0_ddr4_s_axi_arready;
  input c0_ddr4_s_axi_rready;
  output [0:0]c0_ddr4_s_axi_rid;
  output [511:0]c0_ddr4_s_axi_rdata;
  output [1:0]c0_ddr4_s_axi_rresp;
  output c0_ddr4_s_axi_rlast;
  output c0_ddr4_s_axi_rvalid;
  output [511:0]dbg_bus;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_20_axi_clock_converter,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem01_ctrl_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "ddr4_v2_2_9,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem02_0
   (sys_rst,
    c0_sys_clk_p,
    c0_sys_clk_n,
    c0_ddr4_act_n,
    c0_ddr4_adr,
    c0_ddr4_ba,
    c0_ddr4_bg,
    c0_ddr4_cke,
    c0_ddr4_odt,
    c0_ddr4_cs_n,
    c0_ddr4_ck_t,
    c0_ddr4_ck_c,
    c0_ddr4_reset_n,
    c0_ddr4_parity,
    c0_ddr4_dq,
    c0_ddr4_dqs_c,
    c0_ddr4_dqs_t,
    c0_init_calib_complete,
    c0_ddr4_ui_clk,
    c0_ddr4_ui_clk_sync_rst,
    addn_ui_clkout1,
    dbg_clk,
    c0_ddr4_s_axi_ctrl_awvalid,
    c0_ddr4_s_axi_ctrl_awready,
    c0_ddr4_s_axi_ctrl_awaddr,
    c0_ddr4_s_axi_ctrl_wvalid,
    c0_ddr4_s_axi_ctrl_wready,
    c0_ddr4_s_axi_ctrl_wdata,
    c0_ddr4_s_axi_ctrl_bvalid,
    c0_ddr4_s_axi_ctrl_bready,
    c0_ddr4_s_axi_ctrl_bresp,
    c0_ddr4_s_axi_ctrl_arvalid,
    c0_ddr4_s_axi_ctrl_arready,
    c0_ddr4_s_axi_ctrl_araddr,
    c0_ddr4_s_axi_ctrl_rvalid,
    c0_ddr4_s_axi_ctrl_rready,
    c0_ddr4_s_axi_ctrl_rdata,
    c0_ddr4_s_axi_ctrl_rresp,
    c0_ddr4_interrupt,
    c0_ddr4_aresetn,
    c0_ddr4_s_axi_awid,
    c0_ddr4_s_axi_awaddr,
    c0_ddr4_s_axi_awlen,
    c0_ddr4_s_axi_awsize,
    c0_ddr4_s_axi_awburst,
    c0_ddr4_s_axi_awlock,
    c0_ddr4_s_axi_awcache,
    c0_ddr4_s_axi_awprot,
    c0_ddr4_s_axi_awqos,
    c0_ddr4_s_axi_awvalid,
    c0_ddr4_s_axi_awready,
    c0_ddr4_s_axi_wdata,
    c0_ddr4_s_axi_wstrb,
    c0_ddr4_s_axi_wlast,
    c0_ddr4_s_axi_wvalid,
    c0_ddr4_s_axi_wready,
    c0_ddr4_s_axi_bready,
    c0_ddr4_s_axi_bid,
    c0_ddr4_s_axi_bresp,
    c0_ddr4_s_axi_bvalid,
    c0_ddr4_s_axi_arid,
    c0_ddr4_s_axi_araddr,
    c0_ddr4_s_axi_arlen,
    c0_ddr4_s_axi_arsize,
    c0_ddr4_s_axi_arburst,
    c0_ddr4_s_axi_arlock,
    c0_ddr4_s_axi_arcache,
    c0_ddr4_s_axi_arprot,
    c0_ddr4_s_axi_arqos,
    c0_ddr4_s_axi_arvalid,
    c0_ddr4_s_axi_arready,
    c0_ddr4_s_axi_rready,
    c0_ddr4_s_axi_rid,
    c0_ddr4_s_axi_rdata,
    c0_ddr4_s_axi_rresp,
    c0_ddr4_s_axi_rlast,
    c0_ddr4_s_axi_rvalid,
    dbg_bus);
  input sys_rst;
  input c0_sys_clk_p;
  input c0_sys_clk_n;
  output c0_ddr4_act_n;
  output [16:0]c0_ddr4_adr;
  output [1:0]c0_ddr4_ba;
  output [1:0]c0_ddr4_bg;
  output [0:0]c0_ddr4_cke;
  output [0:0]c0_ddr4_odt;
  output [0:0]c0_ddr4_cs_n;
  output [0:0]c0_ddr4_ck_t;
  output [0:0]c0_ddr4_ck_c;
  output c0_ddr4_reset_n;
  output c0_ddr4_parity;
  inout [71:0]c0_ddr4_dq;
  inout [17:0]c0_ddr4_dqs_c;
  inout [17:0]c0_ddr4_dqs_t;
  output c0_init_calib_complete;
  output c0_ddr4_ui_clk;
  output c0_ddr4_ui_clk_sync_rst;
  output addn_ui_clkout1;
  output dbg_clk;
  input c0_ddr4_s_axi_ctrl_awvalid;
  output c0_ddr4_s_axi_ctrl_awready;
  input [31:0]c0_ddr4_s_axi_ctrl_awaddr;
  input c0_ddr4_s_axi_ctrl_wvalid;
  output c0_ddr4_s_axi_ctrl_wready;
  input [31:0]c0_ddr4_s_axi_ctrl_wdata;
  output c0_ddr4_s_axi_ctrl_bvalid;
  input c0_ddr4_s_axi_ctrl_bready;
  output [1:0]c0_ddr4_s_axi_ctrl_bresp;
  input c0_ddr4_s_axi_ctrl_arvalid;
  output c0_ddr4_s_axi_ctrl_arready;
  input [31:0]c0_ddr4_s_axi_ctrl_araddr;
  output c0_ddr4_s_axi_ctrl_rvalid;
  input c0_ddr4_s_axi_ctrl_rready;
  output [31:0]c0_ddr4_s_axi_ctrl_rdata;
  output [1:0]c0_ddr4_s_axi_ctrl_rresp;
  output c0_ddr4_interrupt;
  input c0_ddr4_aresetn;
  input [0:0]c0_ddr4_s_axi_awid;
  input [33:0]c0_ddr4_s_axi_awaddr;
  input [7:0]c0_ddr4_s_axi_awlen;
  input [2:0]c0_ddr4_s_axi_awsize;
  input [1:0]c0_ddr4_s_axi_awburst;
  input [0:0]c0_ddr4_s_axi_awlock;
  input [3:0]c0_ddr4_s_axi_awcache;
  input [2:0]c0_ddr4_s_axi_awprot;
  input [3:0]c0_ddr4_s_axi_awqos;
  input c0_ddr4_s_axi_awvalid;
  output c0_ddr4_s_axi_awready;
  input [511:0]c0_ddr4_s_axi_wdata;
  input [63:0]c0_ddr4_s_axi_wstrb;
  input c0_ddr4_s_axi_wlast;
  input c0_ddr4_s_axi_wvalid;
  output c0_ddr4_s_axi_wready;
  input c0_ddr4_s_axi_bready;
  output [0:0]c0_ddr4_s_axi_bid;
  output [1:0]c0_ddr4_s_axi_bresp;
  output c0_ddr4_s_axi_bvalid;
  input [0:0]c0_ddr4_s_axi_arid;
  input [33:0]c0_ddr4_s_axi_araddr;
  input [7:0]c0_ddr4_s_axi_arlen;
  input [2:0]c0_ddr4_s_axi_arsize;
  input [1:0]c0_ddr4_s_axi_arburst;
  input [0:0]c0_ddr4_s_axi_arlock;
  input [3:0]c0_ddr4_s_axi_arcache;
  input [2:0]c0_ddr4_s_axi_arprot;
  input [3:0]c0_ddr4_s_axi_arqos;
  input c0_ddr4_s_axi_arvalid;
  output c0_ddr4_s_axi_arready;
  input c0_ddr4_s_axi_rready;
  output [0:0]c0_ddr4_s_axi_rid;
  output [511:0]c0_ddr4_s_axi_rdata;
  output [1:0]c0_ddr4_s_axi_rresp;
  output c0_ddr4_s_axi_rlast;
  output c0_ddr4_s_axi_rvalid;
  output [511:0]dbg_bus;


endmodule

(* X_CORE_INFO = "axi_clock_converter_v2_1_20_axi_clock_converter,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem02_ctrl_cc_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_aclk,
    m_axi_aresetn,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input m_axi_aclk;
  input m_axi_aresetn;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "bd_27a1,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_DDR4_MEM00_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [3:0]S00_AXI_awid;
  input [38:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [3:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [3:0]S00_AXI_arid;
  input [38:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [3:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [38:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  output S01_AXI_awready;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  output S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input S01_AXI_bready;
  input [38:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  output S01_AXI_arready;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  input S01_AXI_rready;
  output [33:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [33:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_e7f0,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_DDR4_MEM01_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [3:0]S00_AXI_awid;
  input [38:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [3:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [3:0]S00_AXI_arid;
  input [38:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [3:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [38:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  output S01_AXI_awready;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  output S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input S01_AXI_bready;
  input [38:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  output S01_AXI_arready;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  input S01_AXI_rready;
  output [33:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [33:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_e700,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_DDR4_MEM02_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [3:0]S00_AXI_awid;
  input [38:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [3:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [3:0]S00_AXI_arid;
  input [38:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [3:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [38:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  output S01_AXI_awready;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  output S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input S01_AXI_bready;
  input [38:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  output S01_AXI_arready;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  input S01_AXI_rready;
  output [33:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [33:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "bd_2b97,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_M00_AXI_MEM00_0
   (aclk,
    aclk1,
    aresetn,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awsize,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arsize,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awsize,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arsize,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready);
  input aclk;
  input aclk1;
  input aresetn;
  input [3:0]S00_AXI_awid;
  input [38:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [2:0]S00_AXI_awsize;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  output S00_AXI_awready;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  output S00_AXI_wready;
  output [3:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  input S00_AXI_bready;
  input [3:0]S00_AXI_arid;
  input [38:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [2:0]S00_AXI_arsize;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  output S00_AXI_arready;
  output [3:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  input S00_AXI_rready;
  input [38:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [2:0]S01_AXI_awsize;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  output S01_AXI_awready;
  input [31:0]S01_AXI_wdata;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  output S01_AXI_wready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  input S01_AXI_bready;
  input [38:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [2:0]S01_AXI_arsize;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  output S01_AXI_arready;
  output [31:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  input S01_AXI_rready;
  output [38:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [2:0]M00_AXI_awsize;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  input M00_AXI_awready;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  output M00_AXI_bready;
  output [38:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [2:0]M00_AXI_arsize;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  output M00_AXI_rready;


endmodule

(* X_CORE_INFO = "axi_crossbar_v2_1_22_axi_crossbar,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_ddrmem_ctrl_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [24:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input [0:0]s_axi_awvalid;
  output [0:0]s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input [0:0]s_axi_wvalid;
  output [0:0]s_axi_wready;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_bvalid;
  input [0:0]s_axi_bready;
  input [24:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input [0:0]s_axi_arvalid;
  output [0:0]s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output [0:0]s_axi_rvalid;
  input [0:0]s_axi_rready;
  output [74:0]m_axi_awaddr;
  output [8:0]m_axi_awprot;
  output [2:0]m_axi_awvalid;
  input [2:0]m_axi_awready;
  output [95:0]m_axi_wdata;
  output [11:0]m_axi_wstrb;
  output [2:0]m_axi_wvalid;
  input [2:0]m_axi_wready;
  input [5:0]m_axi_bresp;
  input [2:0]m_axi_bvalid;
  output [2:0]m_axi_bready;
  output [74:0]m_axi_araddr;
  output [8:0]m_axi_arprot;
  output [2:0]m_axi_arvalid;
  input [2:0]m_axi_arready;
  input [95:0]m_axi_rdata;
  input [5:0]m_axi_rresp;
  input [2:0]m_axi_rvalid;
  output [2:0]m_axi_rready;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_aclk2_SLR1_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_aclk_SLR0_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_aclk_SLR1_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_aclk_SLR2_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_ctrl_interconnect_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_ddr4_mem00_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_ddr4_mem01_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_ddr4_mem02_0
   (slowest_sync_clk,
    ext_reset_in,
    aux_reset_in,
    mb_debug_sys_rst,
    dcm_locked,
    mb_reset,
    bus_struct_reset,
    peripheral_reset,
    interconnect_aresetn,
    peripheral_aresetn);
  input slowest_sync_clk;
  input ext_reset_in;
  input aux_reset_in;
  input mb_debug_sys_rst;
  input dcm_locked;
  output mb_reset;
  output [0:0]bus_struct_reset;
  output [0:0]peripheral_reset;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;


endmodule

(* X_CORE_INFO = "axi_register_slice_v2_1_21_axi_register_slice,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_rs_M00_AXI_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_DDR4_MEM00_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [33:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [33:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [33:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [33:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_DDR4_MEM01_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [33:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [33:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [33:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [33:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_DDR4_MEM02_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [33:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [33:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [33:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [33:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_M00_AXI_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S00_AXI_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S01_AXI_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S02_AXI_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S03_AXI_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [511:0]s_axi_wdata;
  input [63:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [511:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [511:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S04_AXI_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S05_AXI_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S06_AXI_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S07_AXI_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [38:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [38:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  output [38:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [38:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ctrl_DDR4_MEM00_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ctrl_DDR4_MEM01_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ctrl_DDR4_MEM02_0
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rvalid;
  output m_axi_rready;


endmodule

(* X_CORE_INFO = "clk_vip_v1_0_2_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_clk_DDR4_MEM00_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;


endmodule

(* X_CORE_INFO = "clk_vip_v1_0_2_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_clk_DDR4_MEM01_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;


endmodule

(* X_CORE_INFO = "clk_vip_v1_0_2_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_clk_DDR4_MEM02_0
   (clk_in,
    clk_out);
  input clk_in;
  output clk_out;


endmodule

(* X_CORE_INFO = "rst_vip_v1_0_4_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_rst_DDR4_MEM00_0
   (rst_in,
    rst_out);
  input rst_in;
  output rst_out;


endmodule

(* X_CORE_INFO = "rst_vip_v1_0_4_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_rst_DDR4_MEM01_0
   (rst_in,
    rst_out);
  input rst_in;
  output rst_out;


endmodule

(* X_CORE_INFO = "rst_vip_v1_0_4_top,Vivado 2020.1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_rst_DDR4_MEM02_0
   (rst_in,
    rst_out);
  input rst_in;
  output rst_out;


endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_interconnect_imp_6HQKUY
   (M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_rready,
    M00_AXI1_awaddr,
    M00_AXI1_awlen,
    M00_AXI1_awburst,
    M00_AXI1_awlock,
    M00_AXI1_awcache,
    M00_AXI1_awprot,
    M00_AXI1_awqos,
    M00_AXI1_awvalid,
    M00_AXI1_wdata,
    M00_AXI1_wstrb,
    M00_AXI1_wlast,
    M00_AXI1_wvalid,
    M00_AXI1_bready,
    M00_AXI1_araddr,
    M00_AXI1_arlen,
    M00_AXI1_arburst,
    M00_AXI1_arlock,
    M00_AXI1_arcache,
    M00_AXI1_arprot,
    M00_AXI1_arqos,
    M00_AXI1_arvalid,
    M00_AXI1_rready,
    M00_AXI2_awaddr,
    M00_AXI2_awlen,
    M00_AXI2_awburst,
    M00_AXI2_awlock,
    M00_AXI2_awcache,
    M00_AXI2_awprot,
    M00_AXI2_awqos,
    M00_AXI2_awvalid,
    M00_AXI2_wdata,
    M00_AXI2_wstrb,
    M00_AXI2_wlast,
    M00_AXI2_wvalid,
    M00_AXI2_bready,
    M00_AXI2_araddr,
    M00_AXI2_arlen,
    M00_AXI2_arburst,
    M00_AXI2_arlock,
    M00_AXI2_arcache,
    M00_AXI2_arprot,
    M00_AXI2_arqos,
    M00_AXI2_arvalid,
    M00_AXI2_rready,
    \bbstub_m_axi_awaddr[38] ,
    \bbstub_m_axi_awlen[7] ,
    M00_AXI_awsize,
    \bbstub_m_axi_awburst[1] ,
    \bbstub_m_axi_awlock[0] ,
    \bbstub_m_axi_awcache[3] ,
    \bbstub_m_axi_awprot[2] ,
    M00_AXI_awregion,
    \bbstub_m_axi_awqos[3] ,
    bbstub_m_axi_awvalid,
    \bbstub_m_axi_wdata[511] ,
    \bbstub_m_axi_wstrb[63] ,
    bbstub_m_axi_wlast,
    bbstub_m_axi_wvalid,
    bbstub_m_axi_bready,
    \bbstub_m_axi_araddr[38] ,
    \bbstub_m_axi_arlen[7] ,
    M00_AXI_arsize,
    \bbstub_m_axi_arburst[1] ,
    \bbstub_m_axi_arlock[0] ,
    \bbstub_m_axi_arcache[3] ,
    \bbstub_m_axi_arprot[2] ,
    M00_AXI_arregion,
    \bbstub_m_axi_arqos[3] ,
    bbstub_m_axi_arvalid,
    bbstub_m_axi_rready,
    S00_AXI_awready,
    S00_AXI_wready,
    S00_AXI_bid,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_arready,
    S00_AXI_rid,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S01_AXI_awready,
    S01_AXI_wready,
    S01_AXI_bid,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_arready,
    S01_AXI_rid,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S02_AXI_awready,
    S02_AXI_wready,
    S02_AXI_bid,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_arready,
    S02_AXI_rid,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    S03_AXI_awready,
    S03_AXI_wready,
    S03_AXI_bid,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_arready,
    S03_AXI_rid,
    S03_AXI_rdata,
    S03_AXI_rresp,
    S03_AXI_rlast,
    S03_AXI_rvalid,
    S04_AXI_awready,
    S04_AXI_wready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_arready,
    S04_AXI_rdata,
    S04_AXI_rresp,
    S04_AXI_rlast,
    S04_AXI_rvalid,
    S05_AXI_awready,
    S05_AXI_wready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_arready,
    S05_AXI_rdata,
    S05_AXI_rresp,
    S05_AXI_rlast,
    S05_AXI_rvalid,
    S06_AXI_awready,
    S06_AXI_wready,
    S06_AXI_bresp,
    S06_AXI_bvalid,
    S06_AXI_arready,
    S06_AXI_rdata,
    S06_AXI_rresp,
    S06_AXI_rlast,
    S06_AXI_rvalid,
    S07_AXI_awready,
    S07_AXI_wready,
    S07_AXI_bresp,
    S07_AXI_bvalid,
    S07_AXI_arready,
    S07_AXI_rdata,
    S07_AXI_rresp,
    S07_AXI_rlast,
    S07_AXI_rvalid,
    ddr4_mem00_ui_clk,
    aclk,
    interconnect_aresetn,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rlast,
    S_AXI_rvalid,
    ddr4_mem01_ui_clk,
    interconnect_aresetn1,
    S_AXI1_awready,
    S_AXI1_wready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_arready,
    S_AXI1_rdata,
    S_AXI1_rresp,
    S_AXI1_rlast,
    S_AXI1_rvalid,
    ddr4_mem02_ui_clk,
    interconnect_aresetn2,
    S_AXI2_awready,
    S_AXI2_wready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_arready,
    S_AXI2_rdata,
    S_AXI2_rresp,
    S_AXI2_rlast,
    S_AXI2_rvalid,
    aclk2,
    interconnect_aresetn3,
    M00_AXI_awready,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    S00_AXI_awid,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_bready,
    S00_AXI_arid,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_rready,
    S01_AXI_awid,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awregion,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_bready,
    S01_AXI_arid,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arregion,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_rready,
    S02_AXI_awid,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awregion,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_bready,
    S02_AXI_arid,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arregion,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_rready,
    S03_AXI_awid,
    S03_AXI_awaddr,
    S03_AXI_awlen,
    S03_AXI_awburst,
    S03_AXI_awlock,
    S03_AXI_awcache,
    S03_AXI_awprot,
    S03_AXI_awregion,
    S03_AXI_awqos,
    S03_AXI_awvalid,
    S03_AXI_wdata,
    S03_AXI_wstrb,
    S03_AXI_wlast,
    S03_AXI_wvalid,
    S03_AXI_bready,
    S03_AXI_arid,
    S03_AXI_araddr,
    S03_AXI_arlen,
    S03_AXI_arburst,
    S03_AXI_arlock,
    S03_AXI_arcache,
    S03_AXI_arprot,
    S03_AXI_arregion,
    S03_AXI_arqos,
    S03_AXI_arvalid,
    S03_AXI_rready,
    S04_AXI_awaddr,
    S04_AXI_awlen,
    S04_AXI_awlock,
    S04_AXI_awcache,
    S04_AXI_awprot,
    S04_AXI_awregion,
    S04_AXI_awqos,
    S04_AXI_awvalid,
    S04_AXI_wdata,
    S04_AXI_wstrb,
    S04_AXI_wlast,
    S04_AXI_wvalid,
    S04_AXI_bready,
    S04_AXI_araddr,
    S04_AXI_arlen,
    S04_AXI_arlock,
    S04_AXI_arcache,
    S04_AXI_arprot,
    S04_AXI_arregion,
    S04_AXI_arqos,
    S04_AXI_arvalid,
    S04_AXI_rready,
    S05_AXI_awaddr,
    S05_AXI_awlen,
    S05_AXI_awlock,
    S05_AXI_awcache,
    S05_AXI_awprot,
    S05_AXI_awregion,
    S05_AXI_awqos,
    S05_AXI_awvalid,
    S05_AXI_wdata,
    S05_AXI_wstrb,
    S05_AXI_wlast,
    S05_AXI_wvalid,
    S05_AXI_bready,
    S05_AXI_araddr,
    S05_AXI_arlen,
    S05_AXI_arlock,
    S05_AXI_arcache,
    S05_AXI_arprot,
    S05_AXI_arregion,
    S05_AXI_arqos,
    S05_AXI_arvalid,
    S05_AXI_rready,
    S06_AXI_awaddr,
    S06_AXI_awlen,
    S06_AXI_awlock,
    S06_AXI_awcache,
    S06_AXI_awprot,
    S06_AXI_awregion,
    S06_AXI_awqos,
    S06_AXI_awvalid,
    S06_AXI_wdata,
    S06_AXI_wstrb,
    S06_AXI_wlast,
    S06_AXI_wvalid,
    S06_AXI_bready,
    S06_AXI_araddr,
    S06_AXI_arlen,
    S06_AXI_arlock,
    S06_AXI_arcache,
    S06_AXI_arprot,
    S06_AXI_arregion,
    S06_AXI_arqos,
    S06_AXI_arvalid,
    S06_AXI_rready,
    S07_AXI_awaddr,
    S07_AXI_awlen,
    S07_AXI_awlock,
    S07_AXI_awcache,
    S07_AXI_awprot,
    S07_AXI_awregion,
    S07_AXI_awqos,
    S07_AXI_awvalid,
    S07_AXI_wdata,
    S07_AXI_wstrb,
    S07_AXI_wlast,
    S07_AXI_wvalid,
    S07_AXI_bready,
    S07_AXI_araddr,
    S07_AXI_arlen,
    S07_AXI_arlock,
    S07_AXI_arcache,
    S07_AXI_arprot,
    S07_AXI_arregion,
    S07_AXI_arqos,
    S07_AXI_arvalid,
    S07_AXI_rready);
  output [33:0]M00_AXI_awaddr;
  output [7:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awburst;
  output [0:0]M00_AXI_awlock;
  output [3:0]M00_AXI_awcache;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  output M00_AXI_awvalid;
  output [511:0]M00_AXI_wdata;
  output [63:0]M00_AXI_wstrb;
  output M00_AXI_wlast;
  output M00_AXI_wvalid;
  output M00_AXI_bready;
  output [33:0]M00_AXI_araddr;
  output [7:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arburst;
  output [0:0]M00_AXI_arlock;
  output [3:0]M00_AXI_arcache;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  output M00_AXI_arvalid;
  output M00_AXI_rready;
  output [33:0]M00_AXI1_awaddr;
  output [7:0]M00_AXI1_awlen;
  output [1:0]M00_AXI1_awburst;
  output [0:0]M00_AXI1_awlock;
  output [3:0]M00_AXI1_awcache;
  output [2:0]M00_AXI1_awprot;
  output [3:0]M00_AXI1_awqos;
  output M00_AXI1_awvalid;
  output [511:0]M00_AXI1_wdata;
  output [63:0]M00_AXI1_wstrb;
  output M00_AXI1_wlast;
  output M00_AXI1_wvalid;
  output M00_AXI1_bready;
  output [33:0]M00_AXI1_araddr;
  output [7:0]M00_AXI1_arlen;
  output [1:0]M00_AXI1_arburst;
  output [0:0]M00_AXI1_arlock;
  output [3:0]M00_AXI1_arcache;
  output [2:0]M00_AXI1_arprot;
  output [3:0]M00_AXI1_arqos;
  output M00_AXI1_arvalid;
  output M00_AXI1_rready;
  output [33:0]M00_AXI2_awaddr;
  output [7:0]M00_AXI2_awlen;
  output [1:0]M00_AXI2_awburst;
  output [0:0]M00_AXI2_awlock;
  output [3:0]M00_AXI2_awcache;
  output [2:0]M00_AXI2_awprot;
  output [3:0]M00_AXI2_awqos;
  output M00_AXI2_awvalid;
  output [511:0]M00_AXI2_wdata;
  output [63:0]M00_AXI2_wstrb;
  output M00_AXI2_wlast;
  output M00_AXI2_wvalid;
  output M00_AXI2_bready;
  output [33:0]M00_AXI2_araddr;
  output [7:0]M00_AXI2_arlen;
  output [1:0]M00_AXI2_arburst;
  output [0:0]M00_AXI2_arlock;
  output [3:0]M00_AXI2_arcache;
  output [2:0]M00_AXI2_arprot;
  output [3:0]M00_AXI2_arqos;
  output M00_AXI2_arvalid;
  output M00_AXI2_rready;
  output [38:0]\bbstub_m_axi_awaddr[38] ;
  output [7:0]\bbstub_m_axi_awlen[7] ;
  output [2:0]M00_AXI_awsize;
  output [1:0]\bbstub_m_axi_awburst[1] ;
  output [0:0]\bbstub_m_axi_awlock[0] ;
  output [3:0]\bbstub_m_axi_awcache[3] ;
  output [2:0]\bbstub_m_axi_awprot[2] ;
  output [3:0]M00_AXI_awregion;
  output [3:0]\bbstub_m_axi_awqos[3] ;
  output bbstub_m_axi_awvalid;
  output [511:0]\bbstub_m_axi_wdata[511] ;
  output [63:0]\bbstub_m_axi_wstrb[63] ;
  output bbstub_m_axi_wlast;
  output bbstub_m_axi_wvalid;
  output bbstub_m_axi_bready;
  output [38:0]\bbstub_m_axi_araddr[38] ;
  output [7:0]\bbstub_m_axi_arlen[7] ;
  output [2:0]M00_AXI_arsize;
  output [1:0]\bbstub_m_axi_arburst[1] ;
  output [0:0]\bbstub_m_axi_arlock[0] ;
  output [3:0]\bbstub_m_axi_arcache[3] ;
  output [2:0]\bbstub_m_axi_arprot[2] ;
  output [3:0]M00_AXI_arregion;
  output [3:0]\bbstub_m_axi_arqos[3] ;
  output bbstub_m_axi_arvalid;
  output bbstub_m_axi_rready;
  output S00_AXI_awready;
  output S00_AXI_wready;
  output [3:0]S00_AXI_bid;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output S00_AXI_arready;
  output [3:0]S00_AXI_rid;
  output [511:0]S00_AXI_rdata;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rlast;
  output S00_AXI_rvalid;
  output S01_AXI_awready;
  output S01_AXI_wready;
  output [3:0]S01_AXI_bid;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output S01_AXI_arready;
  output [3:0]S01_AXI_rid;
  output [511:0]S01_AXI_rdata;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rlast;
  output S01_AXI_rvalid;
  output S02_AXI_awready;
  output S02_AXI_wready;
  output [3:0]S02_AXI_bid;
  output [1:0]S02_AXI_bresp;
  output S02_AXI_bvalid;
  output S02_AXI_arready;
  output [3:0]S02_AXI_rid;
  output [511:0]S02_AXI_rdata;
  output [1:0]S02_AXI_rresp;
  output S02_AXI_rlast;
  output S02_AXI_rvalid;
  output S03_AXI_awready;
  output S03_AXI_wready;
  output [3:0]S03_AXI_bid;
  output [1:0]S03_AXI_bresp;
  output S03_AXI_bvalid;
  output S03_AXI_arready;
  output [3:0]S03_AXI_rid;
  output [511:0]S03_AXI_rdata;
  output [1:0]S03_AXI_rresp;
  output S03_AXI_rlast;
  output S03_AXI_rvalid;
  output S04_AXI_awready;
  output S04_AXI_wready;
  output [1:0]S04_AXI_bresp;
  output S04_AXI_bvalid;
  output S04_AXI_arready;
  output [31:0]S04_AXI_rdata;
  output [1:0]S04_AXI_rresp;
  output S04_AXI_rlast;
  output S04_AXI_rvalid;
  output S05_AXI_awready;
  output S05_AXI_wready;
  output [1:0]S05_AXI_bresp;
  output S05_AXI_bvalid;
  output S05_AXI_arready;
  output [31:0]S05_AXI_rdata;
  output [1:0]S05_AXI_rresp;
  output S05_AXI_rlast;
  output S05_AXI_rvalid;
  output S06_AXI_awready;
  output S06_AXI_wready;
  output [1:0]S06_AXI_bresp;
  output S06_AXI_bvalid;
  output S06_AXI_arready;
  output [31:0]S06_AXI_rdata;
  output [1:0]S06_AXI_rresp;
  output S06_AXI_rlast;
  output S06_AXI_rvalid;
  output S07_AXI_awready;
  output S07_AXI_wready;
  output [1:0]S07_AXI_bresp;
  output S07_AXI_bvalid;
  output S07_AXI_arready;
  output [31:0]S07_AXI_rdata;
  output [1:0]S07_AXI_rresp;
  output S07_AXI_rlast;
  output S07_AXI_rvalid;
  input ddr4_mem00_ui_clk;
  input aclk;
  input [0:0]interconnect_aresetn;
  input S_AXI_awready;
  input S_AXI_wready;
  input [1:0]S_AXI_bresp;
  input S_AXI_bvalid;
  input S_AXI_arready;
  input [511:0]S_AXI_rdata;
  input [1:0]S_AXI_rresp;
  input S_AXI_rlast;
  input S_AXI_rvalid;
  input ddr4_mem01_ui_clk;
  input [0:0]interconnect_aresetn1;
  input S_AXI1_awready;
  input S_AXI1_wready;
  input [1:0]S_AXI1_bresp;
  input S_AXI1_bvalid;
  input S_AXI1_arready;
  input [511:0]S_AXI1_rdata;
  input [1:0]S_AXI1_rresp;
  input S_AXI1_rlast;
  input S_AXI1_rvalid;
  input ddr4_mem02_ui_clk;
  input [0:0]interconnect_aresetn2;
  input S_AXI2_awready;
  input S_AXI2_wready;
  input [1:0]S_AXI2_bresp;
  input S_AXI2_bvalid;
  input S_AXI2_arready;
  input [511:0]S_AXI2_rdata;
  input [1:0]S_AXI2_rresp;
  input S_AXI2_rlast;
  input S_AXI2_rvalid;
  input aclk2;
  input [0:0]interconnect_aresetn3;
  input M00_AXI_awready;
  input M00_AXI_wready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input M00_AXI_arready;
  input [511:0]M00_AXI_rdata;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rlast;
  input M00_AXI_rvalid;
  input [3:0]S00_AXI_awid;
  input [38:0]S00_AXI_awaddr;
  input [7:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awburst;
  input [0:0]S00_AXI_awlock;
  input [3:0]S00_AXI_awcache;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awregion;
  input [3:0]S00_AXI_awqos;
  input S00_AXI_awvalid;
  input [511:0]S00_AXI_wdata;
  input [63:0]S00_AXI_wstrb;
  input S00_AXI_wlast;
  input S00_AXI_wvalid;
  input S00_AXI_bready;
  input [3:0]S00_AXI_arid;
  input [38:0]S00_AXI_araddr;
  input [7:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arburst;
  input [0:0]S00_AXI_arlock;
  input [3:0]S00_AXI_arcache;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arregion;
  input [3:0]S00_AXI_arqos;
  input S00_AXI_arvalid;
  input S00_AXI_rready;
  input [3:0]S01_AXI_awid;
  input [38:0]S01_AXI_awaddr;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awburst;
  input [0:0]S01_AXI_awlock;
  input [3:0]S01_AXI_awcache;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awregion;
  input [3:0]S01_AXI_awqos;
  input S01_AXI_awvalid;
  input [511:0]S01_AXI_wdata;
  input [63:0]S01_AXI_wstrb;
  input S01_AXI_wlast;
  input S01_AXI_wvalid;
  input S01_AXI_bready;
  input [3:0]S01_AXI_arid;
  input [38:0]S01_AXI_araddr;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arburst;
  input [0:0]S01_AXI_arlock;
  input [3:0]S01_AXI_arcache;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arregion;
  input [3:0]S01_AXI_arqos;
  input S01_AXI_arvalid;
  input S01_AXI_rready;
  input [3:0]S02_AXI_awid;
  input [38:0]S02_AXI_awaddr;
  input [7:0]S02_AXI_awlen;
  input [1:0]S02_AXI_awburst;
  input [0:0]S02_AXI_awlock;
  input [3:0]S02_AXI_awcache;
  input [2:0]S02_AXI_awprot;
  input [3:0]S02_AXI_awregion;
  input [3:0]S02_AXI_awqos;
  input S02_AXI_awvalid;
  input [511:0]S02_AXI_wdata;
  input [63:0]S02_AXI_wstrb;
  input S02_AXI_wlast;
  input S02_AXI_wvalid;
  input S02_AXI_bready;
  input [3:0]S02_AXI_arid;
  input [38:0]S02_AXI_araddr;
  input [7:0]S02_AXI_arlen;
  input [1:0]S02_AXI_arburst;
  input [0:0]S02_AXI_arlock;
  input [3:0]S02_AXI_arcache;
  input [2:0]S02_AXI_arprot;
  input [3:0]S02_AXI_arregion;
  input [3:0]S02_AXI_arqos;
  input S02_AXI_arvalid;
  input S02_AXI_rready;
  input [3:0]S03_AXI_awid;
  input [38:0]S03_AXI_awaddr;
  input [7:0]S03_AXI_awlen;
  input [1:0]S03_AXI_awburst;
  input [0:0]S03_AXI_awlock;
  input [3:0]S03_AXI_awcache;
  input [2:0]S03_AXI_awprot;
  input [3:0]S03_AXI_awregion;
  input [3:0]S03_AXI_awqos;
  input S03_AXI_awvalid;
  input [511:0]S03_AXI_wdata;
  input [63:0]S03_AXI_wstrb;
  input S03_AXI_wlast;
  input S03_AXI_wvalid;
  input S03_AXI_bready;
  input [3:0]S03_AXI_arid;
  input [38:0]S03_AXI_araddr;
  input [7:0]S03_AXI_arlen;
  input [1:0]S03_AXI_arburst;
  input [0:0]S03_AXI_arlock;
  input [3:0]S03_AXI_arcache;
  input [2:0]S03_AXI_arprot;
  input [3:0]S03_AXI_arregion;
  input [3:0]S03_AXI_arqos;
  input S03_AXI_arvalid;
  input S03_AXI_rready;
  input [38:0]S04_AXI_awaddr;
  input [7:0]S04_AXI_awlen;
  input [0:0]S04_AXI_awlock;
  input [3:0]S04_AXI_awcache;
  input [2:0]S04_AXI_awprot;
  input [3:0]S04_AXI_awregion;
  input [3:0]S04_AXI_awqos;
  input S04_AXI_awvalid;
  input [31:0]S04_AXI_wdata;
  input [3:0]S04_AXI_wstrb;
  input S04_AXI_wlast;
  input S04_AXI_wvalid;
  input S04_AXI_bready;
  input [38:0]S04_AXI_araddr;
  input [7:0]S04_AXI_arlen;
  input [0:0]S04_AXI_arlock;
  input [3:0]S04_AXI_arcache;
  input [2:0]S04_AXI_arprot;
  input [3:0]S04_AXI_arregion;
  input [3:0]S04_AXI_arqos;
  input S04_AXI_arvalid;
  input S04_AXI_rready;
  input [38:0]S05_AXI_awaddr;
  input [7:0]S05_AXI_awlen;
  input [0:0]S05_AXI_awlock;
  input [3:0]S05_AXI_awcache;
  input [2:0]S05_AXI_awprot;
  input [3:0]S05_AXI_awregion;
  input [3:0]S05_AXI_awqos;
  input S05_AXI_awvalid;
  input [31:0]S05_AXI_wdata;
  input [3:0]S05_AXI_wstrb;
  input S05_AXI_wlast;
  input S05_AXI_wvalid;
  input S05_AXI_bready;
  input [38:0]S05_AXI_araddr;
  input [7:0]S05_AXI_arlen;
  input [0:0]S05_AXI_arlock;
  input [3:0]S05_AXI_arcache;
  input [2:0]S05_AXI_arprot;
  input [3:0]S05_AXI_arregion;
  input [3:0]S05_AXI_arqos;
  input S05_AXI_arvalid;
  input S05_AXI_rready;
  input [38:0]S06_AXI_awaddr;
  input [7:0]S06_AXI_awlen;
  input [0:0]S06_AXI_awlock;
  input [3:0]S06_AXI_awcache;
  input [2:0]S06_AXI_awprot;
  input [3:0]S06_AXI_awregion;
  input [3:0]S06_AXI_awqos;
  input S06_AXI_awvalid;
  input [31:0]S06_AXI_wdata;
  input [3:0]S06_AXI_wstrb;
  input S06_AXI_wlast;
  input S06_AXI_wvalid;
  input S06_AXI_bready;
  input [38:0]S06_AXI_araddr;
  input [7:0]S06_AXI_arlen;
  input [0:0]S06_AXI_arlock;
  input [3:0]S06_AXI_arcache;
  input [2:0]S06_AXI_arprot;
  input [3:0]S06_AXI_arregion;
  input [3:0]S06_AXI_arqos;
  input S06_AXI_arvalid;
  input S06_AXI_rready;
  input [38:0]S07_AXI_awaddr;
  input [7:0]S07_AXI_awlen;
  input [0:0]S07_AXI_awlock;
  input [3:0]S07_AXI_awcache;
  input [2:0]S07_AXI_awprot;
  input [3:0]S07_AXI_awregion;
  input [3:0]S07_AXI_awqos;
  input S07_AXI_awvalid;
  input [31:0]S07_AXI_wdata;
  input [3:0]S07_AXI_wstrb;
  input S07_AXI_wlast;
  input S07_AXI_wvalid;
  input S07_AXI_bready;
  input [38:0]S07_AXI_araddr;
  input [7:0]S07_AXI_arlen;
  input [0:0]S07_AXI_arlock;
  input [3:0]S07_AXI_arcache;
  input [2:0]S07_AXI_arprot;
  input [3:0]S07_AXI_arregion;
  input [3:0]S07_AXI_arqos;
  input S07_AXI_arvalid;
  input S07_AXI_rready;

  wire [33:0]M00_AXI1_araddr;
  wire [1:0]M00_AXI1_arburst;
  wire [3:0]M00_AXI1_arcache;
  wire [7:0]M00_AXI1_arlen;
  wire [0:0]M00_AXI1_arlock;
  wire [2:0]M00_AXI1_arprot;
  wire [3:0]M00_AXI1_arqos;
  wire M00_AXI1_arvalid;
  wire [33:0]M00_AXI1_awaddr;
  wire [1:0]M00_AXI1_awburst;
  wire [3:0]M00_AXI1_awcache;
  wire [7:0]M00_AXI1_awlen;
  wire [0:0]M00_AXI1_awlock;
  wire [2:0]M00_AXI1_awprot;
  wire [3:0]M00_AXI1_awqos;
  wire M00_AXI1_awvalid;
  wire M00_AXI1_bready;
  wire M00_AXI1_rready;
  wire [511:0]M00_AXI1_wdata;
  wire M00_AXI1_wlast;
  wire [63:0]M00_AXI1_wstrb;
  wire M00_AXI1_wvalid;
  wire [33:0]M00_AXI2_araddr;
  wire [1:0]M00_AXI2_arburst;
  wire [3:0]M00_AXI2_arcache;
  wire [7:0]M00_AXI2_arlen;
  wire [0:0]M00_AXI2_arlock;
  wire [2:0]M00_AXI2_arprot;
  wire [3:0]M00_AXI2_arqos;
  wire M00_AXI2_arvalid;
  wire [33:0]M00_AXI2_awaddr;
  wire [1:0]M00_AXI2_awburst;
  wire [3:0]M00_AXI2_awcache;
  wire [7:0]M00_AXI2_awlen;
  wire [0:0]M00_AXI2_awlock;
  wire [2:0]M00_AXI2_awprot;
  wire [3:0]M00_AXI2_awqos;
  wire M00_AXI2_awvalid;
  wire M00_AXI2_bready;
  wire M00_AXI2_rready;
  wire [511:0]M00_AXI2_wdata;
  wire M00_AXI2_wlast;
  wire [63:0]M00_AXI2_wstrb;
  wire M00_AXI2_wvalid;
  wire [33:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [33:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [38:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [3:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire S00_AXI_arvalid;
  wire [38:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [3:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire S00_AXI_awvalid;
  wire [3:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [3:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [38:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire S01_AXI_arvalid;
  wire [38:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire S01_AXI_awvalid;
  wire [3:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [511:0]S01_AXI_rdata;
  wire [3:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [511:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [63:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [38:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [3:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire S02_AXI_arvalid;
  wire [38:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [3:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire S02_AXI_awvalid;
  wire [3:0]S02_AXI_bid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [511:0]S02_AXI_rdata;
  wire [3:0]S02_AXI_rid;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [511:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [63:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire [38:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [3:0]S03_AXI_arid;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire S03_AXI_arready;
  wire [3:0]S03_AXI_arregion;
  wire S03_AXI_arvalid;
  wire [38:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [3:0]S03_AXI_awid;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire S03_AXI_awready;
  wire [3:0]S03_AXI_awregion;
  wire S03_AXI_awvalid;
  wire [3:0]S03_AXI_bid;
  wire S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire S03_AXI_bvalid;
  wire [511:0]S03_AXI_rdata;
  wire [3:0]S03_AXI_rid;
  wire S03_AXI_rlast;
  wire S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire S03_AXI_rvalid;
  wire [511:0]S03_AXI_wdata;
  wire S03_AXI_wlast;
  wire S03_AXI_wready;
  wire [63:0]S03_AXI_wstrb;
  wire S03_AXI_wvalid;
  wire [38:0]S04_AXI_araddr;
  wire [3:0]S04_AXI_arcache;
  wire [7:0]S04_AXI_arlen;
  wire [0:0]S04_AXI_arlock;
  wire [2:0]S04_AXI_arprot;
  wire [3:0]S04_AXI_arqos;
  wire S04_AXI_arready;
  wire [3:0]S04_AXI_arregion;
  wire S04_AXI_arvalid;
  wire [38:0]S04_AXI_awaddr;
  wire [3:0]S04_AXI_awcache;
  wire [7:0]S04_AXI_awlen;
  wire [0:0]S04_AXI_awlock;
  wire [2:0]S04_AXI_awprot;
  wire [3:0]S04_AXI_awqos;
  wire S04_AXI_awready;
  wire [3:0]S04_AXI_awregion;
  wire S04_AXI_awvalid;
  wire S04_AXI_bready;
  wire [1:0]S04_AXI_bresp;
  wire S04_AXI_bvalid;
  wire [31:0]S04_AXI_rdata;
  wire S04_AXI_rlast;
  wire S04_AXI_rready;
  wire [1:0]S04_AXI_rresp;
  wire S04_AXI_rvalid;
  wire [31:0]S04_AXI_wdata;
  wire S04_AXI_wlast;
  wire S04_AXI_wready;
  wire [3:0]S04_AXI_wstrb;
  wire S04_AXI_wvalid;
  wire [38:0]S05_AXI_araddr;
  wire [3:0]S05_AXI_arcache;
  wire [7:0]S05_AXI_arlen;
  wire [0:0]S05_AXI_arlock;
  wire [2:0]S05_AXI_arprot;
  wire [3:0]S05_AXI_arqos;
  wire S05_AXI_arready;
  wire [3:0]S05_AXI_arregion;
  wire S05_AXI_arvalid;
  wire [38:0]S05_AXI_awaddr;
  wire [3:0]S05_AXI_awcache;
  wire [7:0]S05_AXI_awlen;
  wire [0:0]S05_AXI_awlock;
  wire [2:0]S05_AXI_awprot;
  wire [3:0]S05_AXI_awqos;
  wire S05_AXI_awready;
  wire [3:0]S05_AXI_awregion;
  wire S05_AXI_awvalid;
  wire S05_AXI_bready;
  wire [1:0]S05_AXI_bresp;
  wire S05_AXI_bvalid;
  wire [31:0]S05_AXI_rdata;
  wire S05_AXI_rlast;
  wire S05_AXI_rready;
  wire [1:0]S05_AXI_rresp;
  wire S05_AXI_rvalid;
  wire [31:0]S05_AXI_wdata;
  wire S05_AXI_wlast;
  wire S05_AXI_wready;
  wire [3:0]S05_AXI_wstrb;
  wire S05_AXI_wvalid;
  wire [38:0]S06_AXI_araddr;
  wire [3:0]S06_AXI_arcache;
  wire [7:0]S06_AXI_arlen;
  wire [0:0]S06_AXI_arlock;
  wire [2:0]S06_AXI_arprot;
  wire [3:0]S06_AXI_arqos;
  wire S06_AXI_arready;
  wire [3:0]S06_AXI_arregion;
  wire S06_AXI_arvalid;
  wire [38:0]S06_AXI_awaddr;
  wire [3:0]S06_AXI_awcache;
  wire [7:0]S06_AXI_awlen;
  wire [0:0]S06_AXI_awlock;
  wire [2:0]S06_AXI_awprot;
  wire [3:0]S06_AXI_awqos;
  wire S06_AXI_awready;
  wire [3:0]S06_AXI_awregion;
  wire S06_AXI_awvalid;
  wire S06_AXI_bready;
  wire [1:0]S06_AXI_bresp;
  wire S06_AXI_bvalid;
  wire [31:0]S06_AXI_rdata;
  wire S06_AXI_rlast;
  wire S06_AXI_rready;
  wire [1:0]S06_AXI_rresp;
  wire S06_AXI_rvalid;
  wire [31:0]S06_AXI_wdata;
  wire S06_AXI_wlast;
  wire S06_AXI_wready;
  wire [3:0]S06_AXI_wstrb;
  wire S06_AXI_wvalid;
  wire [38:0]S07_AXI_araddr;
  wire [3:0]S07_AXI_arcache;
  wire [7:0]S07_AXI_arlen;
  wire [0:0]S07_AXI_arlock;
  wire [2:0]S07_AXI_arprot;
  wire [3:0]S07_AXI_arqos;
  wire S07_AXI_arready;
  wire [3:0]S07_AXI_arregion;
  wire S07_AXI_arvalid;
  wire [38:0]S07_AXI_awaddr;
  wire [3:0]S07_AXI_awcache;
  wire [7:0]S07_AXI_awlen;
  wire [0:0]S07_AXI_awlock;
  wire [2:0]S07_AXI_awprot;
  wire [3:0]S07_AXI_awqos;
  wire S07_AXI_awready;
  wire [3:0]S07_AXI_awregion;
  wire S07_AXI_awvalid;
  wire S07_AXI_bready;
  wire [1:0]S07_AXI_bresp;
  wire S07_AXI_bvalid;
  wire [31:0]S07_AXI_rdata;
  wire S07_AXI_rlast;
  wire S07_AXI_rready;
  wire [1:0]S07_AXI_rresp;
  wire S07_AXI_rvalid;
  wire [31:0]S07_AXI_wdata;
  wire S07_AXI_wlast;
  wire S07_AXI_wready;
  wire [3:0]S07_AXI_wstrb;
  wire S07_AXI_wvalid;
  wire S_AXI1_arready;
  wire S_AXI1_awready;
  wire [1:0]S_AXI1_bresp;
  wire S_AXI1_bvalid;
  wire [511:0]S_AXI1_rdata;
  wire S_AXI1_rlast;
  wire [1:0]S_AXI1_rresp;
  wire S_AXI1_rvalid;
  wire S_AXI1_wready;
  wire S_AXI2_arready;
  wire S_AXI2_awready;
  wire [1:0]S_AXI2_bresp;
  wire S_AXI2_bvalid;
  wire [511:0]S_AXI2_rdata;
  wire S_AXI2_rlast;
  wire [1:0]S_AXI2_rresp;
  wire S_AXI2_rvalid;
  wire S_AXI2_wready;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [511:0]S_AXI_rdata;
  wire S_AXI_rlast;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;
  wire aclk;
  wire aclk2;
  wire [38:0]\bbstub_m_axi_araddr[38] ;
  wire [1:0]\bbstub_m_axi_arburst[1] ;
  wire [3:0]\bbstub_m_axi_arcache[3] ;
  wire [7:0]\bbstub_m_axi_arlen[7] ;
  wire [0:0]\bbstub_m_axi_arlock[0] ;
  wire [2:0]\bbstub_m_axi_arprot[2] ;
  wire [3:0]\bbstub_m_axi_arqos[3] ;
  wire bbstub_m_axi_arvalid;
  wire [38:0]\bbstub_m_axi_awaddr[38] ;
  wire [1:0]\bbstub_m_axi_awburst[1] ;
  wire [3:0]\bbstub_m_axi_awcache[3] ;
  wire [7:0]\bbstub_m_axi_awlen[7] ;
  wire [0:0]\bbstub_m_axi_awlock[0] ;
  wire [2:0]\bbstub_m_axi_awprot[2] ;
  wire [3:0]\bbstub_m_axi_awqos[3] ;
  wire bbstub_m_axi_awvalid;
  wire bbstub_m_axi_bready;
  wire bbstub_m_axi_rready;
  wire [511:0]\bbstub_m_axi_wdata[511] ;
  wire bbstub_m_axi_wlast;
  wire [63:0]\bbstub_m_axi_wstrb[63] ;
  wire bbstub_m_axi_wvalid;
  wire ddr4_mem00_ui_clk;
  wire ddr4_mem01_ui_clk;
  wire ddr4_mem02_ui_clk;
  wire [38:0]interconnect_M00_AXI_MEM00_M00_AXI_ARADDR;
  wire [1:0]interconnect_M00_AXI_MEM00_M00_AXI_ARBURST;
  wire [3:0]interconnect_M00_AXI_MEM00_M00_AXI_ARCACHE;
  wire [7:0]interconnect_M00_AXI_MEM00_M00_AXI_ARLEN;
  wire interconnect_M00_AXI_MEM00_M00_AXI_ARLOCK;
  wire [2:0]interconnect_M00_AXI_MEM00_M00_AXI_ARPROT;
  wire [3:0]interconnect_M00_AXI_MEM00_M00_AXI_ARQOS;
  wire interconnect_M00_AXI_MEM00_M00_AXI_ARREADY;
  wire interconnect_M00_AXI_MEM00_M00_AXI_ARVALID;
  wire [38:0]interconnect_M00_AXI_MEM00_M00_AXI_AWADDR;
  wire [1:0]interconnect_M00_AXI_MEM00_M00_AXI_AWBURST;
  wire [3:0]interconnect_M00_AXI_MEM00_M00_AXI_AWCACHE;
  wire [7:0]interconnect_M00_AXI_MEM00_M00_AXI_AWLEN;
  wire interconnect_M00_AXI_MEM00_M00_AXI_AWLOCK;
  wire [2:0]interconnect_M00_AXI_MEM00_M00_AXI_AWPROT;
  wire [3:0]interconnect_M00_AXI_MEM00_M00_AXI_AWQOS;
  wire interconnect_M00_AXI_MEM00_M00_AXI_AWREADY;
  wire interconnect_M00_AXI_MEM00_M00_AXI_AWVALID;
  wire interconnect_M00_AXI_MEM00_M00_AXI_BREADY;
  wire [1:0]interconnect_M00_AXI_MEM00_M00_AXI_BRESP;
  wire interconnect_M00_AXI_MEM00_M00_AXI_BVALID;
  wire [511:0]interconnect_M00_AXI_MEM00_M00_AXI_RDATA;
  wire interconnect_M00_AXI_MEM00_M00_AXI_RLAST;
  wire interconnect_M00_AXI_MEM00_M00_AXI_RREADY;
  wire [1:0]interconnect_M00_AXI_MEM00_M00_AXI_RRESP;
  wire interconnect_M00_AXI_MEM00_M00_AXI_RVALID;
  wire [511:0]interconnect_M00_AXI_MEM00_M00_AXI_WDATA;
  wire interconnect_M00_AXI_MEM00_M00_AXI_WLAST;
  wire interconnect_M00_AXI_MEM00_M00_AXI_WREADY;
  wire [63:0]interconnect_M00_AXI_MEM00_M00_AXI_WSTRB;
  wire interconnect_M00_AXI_MEM00_M00_AXI_WVALID;
  wire [0:0]interconnect_aresetn;
  wire [0:0]interconnect_aresetn1;
  wire [0:0]interconnect_aresetn2;
  wire [0:0]interconnect_aresetn3;
  wire [38:0]vip_M00_AXI_M_AXI_ARADDR;
  wire [1:0]vip_M00_AXI_M_AXI_ARBURST;
  wire [3:0]vip_M00_AXI_M_AXI_ARCACHE;
  wire [7:0]vip_M00_AXI_M_AXI_ARLEN;
  wire vip_M00_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_M00_AXI_M_AXI_ARPROT;
  wire [3:0]vip_M00_AXI_M_AXI_ARQOS;
  wire vip_M00_AXI_M_AXI_ARREADY;
  wire vip_M00_AXI_M_AXI_ARVALID;
  wire [38:0]vip_M00_AXI_M_AXI_AWADDR;
  wire [1:0]vip_M00_AXI_M_AXI_AWBURST;
  wire [3:0]vip_M00_AXI_M_AXI_AWCACHE;
  wire [7:0]vip_M00_AXI_M_AXI_AWLEN;
  wire vip_M00_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_M00_AXI_M_AXI_AWPROT;
  wire [3:0]vip_M00_AXI_M_AXI_AWQOS;
  wire vip_M00_AXI_M_AXI_AWREADY;
  wire vip_M00_AXI_M_AXI_AWVALID;
  wire vip_M00_AXI_M_AXI_BREADY;
  wire [1:0]vip_M00_AXI_M_AXI_BRESP;
  wire vip_M00_AXI_M_AXI_BVALID;
  wire [511:0]vip_M00_AXI_M_AXI_RDATA;
  wire vip_M00_AXI_M_AXI_RLAST;
  wire vip_M00_AXI_M_AXI_RREADY;
  wire [1:0]vip_M00_AXI_M_AXI_RRESP;
  wire vip_M00_AXI_M_AXI_RVALID;
  wire [511:0]vip_M00_AXI_M_AXI_WDATA;
  wire vip_M00_AXI_M_AXI_WLAST;
  wire vip_M00_AXI_M_AXI_WREADY;
  wire [63:0]vip_M00_AXI_M_AXI_WSTRB;
  wire vip_M00_AXI_M_AXI_WVALID;
  wire [38:0]vip_S00_AXI_M_AXI_ARADDR;
  wire [1:0]vip_S00_AXI_M_AXI_ARBURST;
  wire [3:0]vip_S00_AXI_M_AXI_ARCACHE;
  wire [3:0]vip_S00_AXI_M_AXI_ARID;
  wire [7:0]vip_S00_AXI_M_AXI_ARLEN;
  wire vip_S00_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S00_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S00_AXI_M_AXI_ARQOS;
  wire vip_S00_AXI_M_AXI_ARREADY;
  wire vip_S00_AXI_M_AXI_ARVALID;
  wire [38:0]vip_S00_AXI_M_AXI_AWADDR;
  wire [1:0]vip_S00_AXI_M_AXI_AWBURST;
  wire [3:0]vip_S00_AXI_M_AXI_AWCACHE;
  wire [3:0]vip_S00_AXI_M_AXI_AWID;
  wire [7:0]vip_S00_AXI_M_AXI_AWLEN;
  wire vip_S00_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S00_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S00_AXI_M_AXI_AWQOS;
  wire vip_S00_AXI_M_AXI_AWREADY;
  wire vip_S00_AXI_M_AXI_AWVALID;
  wire [3:0]vip_S00_AXI_M_AXI_BID;
  wire vip_S00_AXI_M_AXI_BREADY;
  wire [1:0]vip_S00_AXI_M_AXI_BRESP;
  wire vip_S00_AXI_M_AXI_BVALID;
  wire [511:0]vip_S00_AXI_M_AXI_RDATA;
  wire [3:0]vip_S00_AXI_M_AXI_RID;
  wire vip_S00_AXI_M_AXI_RLAST;
  wire vip_S00_AXI_M_AXI_RREADY;
  wire [1:0]vip_S00_AXI_M_AXI_RRESP;
  wire vip_S00_AXI_M_AXI_RVALID;
  wire [511:0]vip_S00_AXI_M_AXI_WDATA;
  wire vip_S00_AXI_M_AXI_WLAST;
  wire vip_S00_AXI_M_AXI_WREADY;
  wire [63:0]vip_S00_AXI_M_AXI_WSTRB;
  wire vip_S00_AXI_M_AXI_WVALID;
  wire [38:0]vip_S01_AXI_M_AXI_ARADDR;
  wire [1:0]vip_S01_AXI_M_AXI_ARBURST;
  wire [3:0]vip_S01_AXI_M_AXI_ARCACHE;
  wire [3:0]vip_S01_AXI_M_AXI_ARID;
  wire [7:0]vip_S01_AXI_M_AXI_ARLEN;
  wire vip_S01_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S01_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S01_AXI_M_AXI_ARQOS;
  wire vip_S01_AXI_M_AXI_ARREADY;
  wire vip_S01_AXI_M_AXI_ARVALID;
  wire [38:0]vip_S01_AXI_M_AXI_AWADDR;
  wire [1:0]vip_S01_AXI_M_AXI_AWBURST;
  wire [3:0]vip_S01_AXI_M_AXI_AWCACHE;
  wire [3:0]vip_S01_AXI_M_AXI_AWID;
  wire [7:0]vip_S01_AXI_M_AXI_AWLEN;
  wire vip_S01_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S01_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S01_AXI_M_AXI_AWQOS;
  wire vip_S01_AXI_M_AXI_AWREADY;
  wire vip_S01_AXI_M_AXI_AWVALID;
  wire [3:0]vip_S01_AXI_M_AXI_BID;
  wire vip_S01_AXI_M_AXI_BREADY;
  wire [1:0]vip_S01_AXI_M_AXI_BRESP;
  wire vip_S01_AXI_M_AXI_BVALID;
  wire [511:0]vip_S01_AXI_M_AXI_RDATA;
  wire [3:0]vip_S01_AXI_M_AXI_RID;
  wire vip_S01_AXI_M_AXI_RLAST;
  wire vip_S01_AXI_M_AXI_RREADY;
  wire [1:0]vip_S01_AXI_M_AXI_RRESP;
  wire vip_S01_AXI_M_AXI_RVALID;
  wire [511:0]vip_S01_AXI_M_AXI_WDATA;
  wire vip_S01_AXI_M_AXI_WLAST;
  wire vip_S01_AXI_M_AXI_WREADY;
  wire [63:0]vip_S01_AXI_M_AXI_WSTRB;
  wire vip_S01_AXI_M_AXI_WVALID;
  wire [38:0]vip_S02_AXI_M_AXI_ARADDR;
  wire [1:0]vip_S02_AXI_M_AXI_ARBURST;
  wire [3:0]vip_S02_AXI_M_AXI_ARCACHE;
  wire [3:0]vip_S02_AXI_M_AXI_ARID;
  wire [7:0]vip_S02_AXI_M_AXI_ARLEN;
  wire vip_S02_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S02_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S02_AXI_M_AXI_ARQOS;
  wire vip_S02_AXI_M_AXI_ARREADY;
  wire vip_S02_AXI_M_AXI_ARVALID;
  wire [38:0]vip_S02_AXI_M_AXI_AWADDR;
  wire [1:0]vip_S02_AXI_M_AXI_AWBURST;
  wire [3:0]vip_S02_AXI_M_AXI_AWCACHE;
  wire [3:0]vip_S02_AXI_M_AXI_AWID;
  wire [7:0]vip_S02_AXI_M_AXI_AWLEN;
  wire vip_S02_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S02_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S02_AXI_M_AXI_AWQOS;
  wire vip_S02_AXI_M_AXI_AWREADY;
  wire vip_S02_AXI_M_AXI_AWVALID;
  wire [3:0]vip_S02_AXI_M_AXI_BID;
  wire vip_S02_AXI_M_AXI_BREADY;
  wire [1:0]vip_S02_AXI_M_AXI_BRESP;
  wire vip_S02_AXI_M_AXI_BVALID;
  wire [511:0]vip_S02_AXI_M_AXI_RDATA;
  wire [3:0]vip_S02_AXI_M_AXI_RID;
  wire vip_S02_AXI_M_AXI_RLAST;
  wire vip_S02_AXI_M_AXI_RREADY;
  wire [1:0]vip_S02_AXI_M_AXI_RRESP;
  wire vip_S02_AXI_M_AXI_RVALID;
  wire [511:0]vip_S02_AXI_M_AXI_WDATA;
  wire vip_S02_AXI_M_AXI_WLAST;
  wire vip_S02_AXI_M_AXI_WREADY;
  wire [63:0]vip_S02_AXI_M_AXI_WSTRB;
  wire vip_S02_AXI_M_AXI_WVALID;
  wire [38:0]vip_S03_AXI_M_AXI_ARADDR;
  wire [1:0]vip_S03_AXI_M_AXI_ARBURST;
  wire [3:0]vip_S03_AXI_M_AXI_ARCACHE;
  wire [3:0]vip_S03_AXI_M_AXI_ARID;
  wire [7:0]vip_S03_AXI_M_AXI_ARLEN;
  wire vip_S03_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S03_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S03_AXI_M_AXI_ARQOS;
  wire vip_S03_AXI_M_AXI_ARREADY;
  wire vip_S03_AXI_M_AXI_ARVALID;
  wire [38:0]vip_S03_AXI_M_AXI_AWADDR;
  wire [1:0]vip_S03_AXI_M_AXI_AWBURST;
  wire [3:0]vip_S03_AXI_M_AXI_AWCACHE;
  wire [3:0]vip_S03_AXI_M_AXI_AWID;
  wire [7:0]vip_S03_AXI_M_AXI_AWLEN;
  wire vip_S03_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S03_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S03_AXI_M_AXI_AWQOS;
  wire vip_S03_AXI_M_AXI_AWREADY;
  wire vip_S03_AXI_M_AXI_AWVALID;
  wire [3:0]vip_S03_AXI_M_AXI_BID;
  wire vip_S03_AXI_M_AXI_BREADY;
  wire [1:0]vip_S03_AXI_M_AXI_BRESP;
  wire vip_S03_AXI_M_AXI_BVALID;
  wire [511:0]vip_S03_AXI_M_AXI_RDATA;
  wire [3:0]vip_S03_AXI_M_AXI_RID;
  wire vip_S03_AXI_M_AXI_RLAST;
  wire vip_S03_AXI_M_AXI_RREADY;
  wire [1:0]vip_S03_AXI_M_AXI_RRESP;
  wire vip_S03_AXI_M_AXI_RVALID;
  wire [511:0]vip_S03_AXI_M_AXI_WDATA;
  wire vip_S03_AXI_M_AXI_WLAST;
  wire vip_S03_AXI_M_AXI_WREADY;
  wire [63:0]vip_S03_AXI_M_AXI_WSTRB;
  wire vip_S03_AXI_M_AXI_WVALID;
  wire [38:0]vip_S04_AXI_M_AXI_ARADDR;
  wire [3:0]vip_S04_AXI_M_AXI_ARCACHE;
  wire [7:0]vip_S04_AXI_M_AXI_ARLEN;
  wire vip_S04_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S04_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S04_AXI_M_AXI_ARQOS;
  wire vip_S04_AXI_M_AXI_ARREADY;
  wire vip_S04_AXI_M_AXI_ARVALID;
  wire [38:0]vip_S04_AXI_M_AXI_AWADDR;
  wire [3:0]vip_S04_AXI_M_AXI_AWCACHE;
  wire [7:0]vip_S04_AXI_M_AXI_AWLEN;
  wire vip_S04_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S04_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S04_AXI_M_AXI_AWQOS;
  wire vip_S04_AXI_M_AXI_AWREADY;
  wire vip_S04_AXI_M_AXI_AWVALID;
  wire vip_S04_AXI_M_AXI_BREADY;
  wire [1:0]vip_S04_AXI_M_AXI_BRESP;
  wire vip_S04_AXI_M_AXI_BVALID;
  wire [31:0]vip_S04_AXI_M_AXI_RDATA;
  wire vip_S04_AXI_M_AXI_RLAST;
  wire vip_S04_AXI_M_AXI_RREADY;
  wire [1:0]vip_S04_AXI_M_AXI_RRESP;
  wire vip_S04_AXI_M_AXI_RVALID;
  wire [31:0]vip_S04_AXI_M_AXI_WDATA;
  wire vip_S04_AXI_M_AXI_WLAST;
  wire vip_S04_AXI_M_AXI_WREADY;
  wire [3:0]vip_S04_AXI_M_AXI_WSTRB;
  wire vip_S04_AXI_M_AXI_WVALID;
  wire [38:0]vip_S05_AXI_M_AXI_ARADDR;
  wire [3:0]vip_S05_AXI_M_AXI_ARCACHE;
  wire [7:0]vip_S05_AXI_M_AXI_ARLEN;
  wire vip_S05_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S05_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S05_AXI_M_AXI_ARQOS;
  wire vip_S05_AXI_M_AXI_ARREADY;
  wire vip_S05_AXI_M_AXI_ARVALID;
  wire [38:0]vip_S05_AXI_M_AXI_AWADDR;
  wire [3:0]vip_S05_AXI_M_AXI_AWCACHE;
  wire [7:0]vip_S05_AXI_M_AXI_AWLEN;
  wire vip_S05_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S05_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S05_AXI_M_AXI_AWQOS;
  wire vip_S05_AXI_M_AXI_AWREADY;
  wire vip_S05_AXI_M_AXI_AWVALID;
  wire vip_S05_AXI_M_AXI_BREADY;
  wire [1:0]vip_S05_AXI_M_AXI_BRESP;
  wire vip_S05_AXI_M_AXI_BVALID;
  wire [31:0]vip_S05_AXI_M_AXI_RDATA;
  wire vip_S05_AXI_M_AXI_RLAST;
  wire vip_S05_AXI_M_AXI_RREADY;
  wire [1:0]vip_S05_AXI_M_AXI_RRESP;
  wire vip_S05_AXI_M_AXI_RVALID;
  wire [31:0]vip_S05_AXI_M_AXI_WDATA;
  wire vip_S05_AXI_M_AXI_WLAST;
  wire vip_S05_AXI_M_AXI_WREADY;
  wire [3:0]vip_S05_AXI_M_AXI_WSTRB;
  wire vip_S05_AXI_M_AXI_WVALID;
  wire [38:0]vip_S06_AXI_M_AXI_ARADDR;
  wire [3:0]vip_S06_AXI_M_AXI_ARCACHE;
  wire [7:0]vip_S06_AXI_M_AXI_ARLEN;
  wire vip_S06_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S06_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S06_AXI_M_AXI_ARQOS;
  wire vip_S06_AXI_M_AXI_ARREADY;
  wire vip_S06_AXI_M_AXI_ARVALID;
  wire [38:0]vip_S06_AXI_M_AXI_AWADDR;
  wire [3:0]vip_S06_AXI_M_AXI_AWCACHE;
  wire [7:0]vip_S06_AXI_M_AXI_AWLEN;
  wire vip_S06_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S06_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S06_AXI_M_AXI_AWQOS;
  wire vip_S06_AXI_M_AXI_AWREADY;
  wire vip_S06_AXI_M_AXI_AWVALID;
  wire vip_S06_AXI_M_AXI_BREADY;
  wire [1:0]vip_S06_AXI_M_AXI_BRESP;
  wire vip_S06_AXI_M_AXI_BVALID;
  wire [31:0]vip_S06_AXI_M_AXI_RDATA;
  wire vip_S06_AXI_M_AXI_RLAST;
  wire vip_S06_AXI_M_AXI_RREADY;
  wire [1:0]vip_S06_AXI_M_AXI_RRESP;
  wire vip_S06_AXI_M_AXI_RVALID;
  wire [31:0]vip_S06_AXI_M_AXI_WDATA;
  wire vip_S06_AXI_M_AXI_WLAST;
  wire vip_S06_AXI_M_AXI_WREADY;
  wire [3:0]vip_S06_AXI_M_AXI_WSTRB;
  wire vip_S06_AXI_M_AXI_WVALID;
  wire [38:0]vip_S07_AXI_M_AXI_ARADDR;
  wire [3:0]vip_S07_AXI_M_AXI_ARCACHE;
  wire [7:0]vip_S07_AXI_M_AXI_ARLEN;
  wire vip_S07_AXI_M_AXI_ARLOCK;
  wire [2:0]vip_S07_AXI_M_AXI_ARPROT;
  wire [3:0]vip_S07_AXI_M_AXI_ARQOS;
  wire vip_S07_AXI_M_AXI_ARREADY;
  wire vip_S07_AXI_M_AXI_ARVALID;
  wire [38:0]vip_S07_AXI_M_AXI_AWADDR;
  wire [3:0]vip_S07_AXI_M_AXI_AWCACHE;
  wire [7:0]vip_S07_AXI_M_AXI_AWLEN;
  wire vip_S07_AXI_M_AXI_AWLOCK;
  wire [2:0]vip_S07_AXI_M_AXI_AWPROT;
  wire [3:0]vip_S07_AXI_M_AXI_AWQOS;
  wire vip_S07_AXI_M_AXI_AWREADY;
  wire vip_S07_AXI_M_AXI_AWVALID;
  wire vip_S07_AXI_M_AXI_BREADY;
  wire [1:0]vip_S07_AXI_M_AXI_BRESP;
  wire vip_S07_AXI_M_AXI_BVALID;
  wire [31:0]vip_S07_AXI_M_AXI_RDATA;
  wire vip_S07_AXI_M_AXI_RLAST;
  wire vip_S07_AXI_M_AXI_RREADY;
  wire [1:0]vip_S07_AXI_M_AXI_RRESP;
  wire vip_S07_AXI_M_AXI_RVALID;
  wire [31:0]vip_S07_AXI_M_AXI_WDATA;
  wire vip_S07_AXI_M_AXI_WLAST;
  wire vip_S07_AXI_M_AXI_WREADY;
  wire [3:0]vip_S07_AXI_M_AXI_WSTRB;
  wire vip_S07_AXI_M_AXI_WVALID;
  wire [2:0]NLW_interconnect_ddr4_mem00_M00_AXI_arsize_UNCONNECTED;
  wire [2:0]NLW_interconnect_ddr4_mem00_M00_AXI_awsize_UNCONNECTED;
  wire [2:0]NLW_interconnect_ddr4_mem01_M00_AXI_arsize_UNCONNECTED;
  wire [2:0]NLW_interconnect_ddr4_mem01_M00_AXI_awsize_UNCONNECTED;
  wire [2:0]NLW_interconnect_ddr4_mem02_M00_AXI_arsize_UNCONNECTED;
  wire [2:0]NLW_interconnect_ddr4_mem02_M00_AXI_awsize_UNCONNECTED;
  wire [2:0]NLW_interconnect_m00_axi_mem00_M00_AXI_arsize_UNCONNECTED;
  wire [2:0]NLW_interconnect_m00_axi_mem00_M00_AXI_awsize_UNCONNECTED;
  wire [3:0]NLW_vip_s00_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s00_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s01_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s01_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s02_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s02_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s03_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s03_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s04_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s04_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s05_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s05_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s06_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s06_axi_m_axi_awregion_UNCONNECTED;
  wire [3:0]NLW_vip_s07_axi_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_vip_s07_axi_m_axi_awregion_UNCONNECTED;

  (* X_CORE_INFO = "bd_27a1,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_DDR4_MEM00_0 interconnect_ddr4_mem00
       (.M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(S_AXI_arready),
        .M00_AXI_arsize(NLW_interconnect_ddr4_mem00_M00_AXI_arsize_UNCONNECTED[2:0]),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(S_AXI_awready),
        .M00_AXI_awsize(NLW_interconnect_ddr4_mem00_M00_AXI_awsize_UNCONNECTED[2:0]),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(S_AXI_bresp),
        .M00_AXI_bvalid(S_AXI_bvalid),
        .M00_AXI_rdata(S_AXI_rdata),
        .M00_AXI_rlast(S_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(S_AXI_rresp),
        .M00_AXI_rvalid(S_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(S_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S00_AXI_araddr(vip_S00_AXI_M_AXI_ARADDR),
        .S00_AXI_arburst(vip_S00_AXI_M_AXI_ARBURST),
        .S00_AXI_arcache(vip_S00_AXI_M_AXI_ARCACHE),
        .S00_AXI_arid(vip_S00_AXI_M_AXI_ARID),
        .S00_AXI_arlen(vip_S00_AXI_M_AXI_ARLEN),
        .S00_AXI_arlock(vip_S00_AXI_M_AXI_ARLOCK),
        .S00_AXI_arprot(vip_S00_AXI_M_AXI_ARPROT),
        .S00_AXI_arqos(vip_S00_AXI_M_AXI_ARQOS),
        .S00_AXI_arready(vip_S00_AXI_M_AXI_ARREADY),
        .S00_AXI_arsize({1'b1,1'b1,1'b0}),
        .S00_AXI_arvalid(vip_S00_AXI_M_AXI_ARVALID),
        .S00_AXI_awaddr(vip_S00_AXI_M_AXI_AWADDR),
        .S00_AXI_awburst(vip_S00_AXI_M_AXI_AWBURST),
        .S00_AXI_awcache(vip_S00_AXI_M_AXI_AWCACHE),
        .S00_AXI_awid(vip_S00_AXI_M_AXI_AWID),
        .S00_AXI_awlen(vip_S00_AXI_M_AXI_AWLEN),
        .S00_AXI_awlock(vip_S00_AXI_M_AXI_AWLOCK),
        .S00_AXI_awprot(vip_S00_AXI_M_AXI_AWPROT),
        .S00_AXI_awqos(vip_S00_AXI_M_AXI_AWQOS),
        .S00_AXI_awready(vip_S00_AXI_M_AXI_AWREADY),
        .S00_AXI_awsize({1'b1,1'b1,1'b0}),
        .S00_AXI_awvalid(vip_S00_AXI_M_AXI_AWVALID),
        .S00_AXI_bid(vip_S00_AXI_M_AXI_BID),
        .S00_AXI_bready(vip_S00_AXI_M_AXI_BREADY),
        .S00_AXI_bresp(vip_S00_AXI_M_AXI_BRESP),
        .S00_AXI_bvalid(vip_S00_AXI_M_AXI_BVALID),
        .S00_AXI_rdata(vip_S00_AXI_M_AXI_RDATA),
        .S00_AXI_rid(vip_S00_AXI_M_AXI_RID),
        .S00_AXI_rlast(vip_S00_AXI_M_AXI_RLAST),
        .S00_AXI_rready(vip_S00_AXI_M_AXI_RREADY),
        .S00_AXI_rresp(vip_S00_AXI_M_AXI_RRESP),
        .S00_AXI_rvalid(vip_S00_AXI_M_AXI_RVALID),
        .S00_AXI_wdata(vip_S00_AXI_M_AXI_WDATA),
        .S00_AXI_wlast(vip_S00_AXI_M_AXI_WLAST),
        .S00_AXI_wready(vip_S00_AXI_M_AXI_WREADY),
        .S00_AXI_wstrb(vip_S00_AXI_M_AXI_WSTRB),
        .S00_AXI_wvalid(vip_S00_AXI_M_AXI_WVALID),
        .S01_AXI_araddr(vip_S04_AXI_M_AXI_ARADDR),
        .S01_AXI_arburst({1'b0,1'b1}),
        .S01_AXI_arcache(vip_S04_AXI_M_AXI_ARCACHE),
        .S01_AXI_arlen(vip_S04_AXI_M_AXI_ARLEN),
        .S01_AXI_arlock(vip_S04_AXI_M_AXI_ARLOCK),
        .S01_AXI_arprot(vip_S04_AXI_M_AXI_ARPROT),
        .S01_AXI_arqos(vip_S04_AXI_M_AXI_ARQOS),
        .S01_AXI_arready(vip_S04_AXI_M_AXI_ARREADY),
        .S01_AXI_arsize({1'b0,1'b1,1'b0}),
        .S01_AXI_arvalid(vip_S04_AXI_M_AXI_ARVALID),
        .S01_AXI_awaddr(vip_S04_AXI_M_AXI_AWADDR),
        .S01_AXI_awburst({1'b0,1'b1}),
        .S01_AXI_awcache(vip_S04_AXI_M_AXI_AWCACHE),
        .S01_AXI_awlen(vip_S04_AXI_M_AXI_AWLEN),
        .S01_AXI_awlock(vip_S04_AXI_M_AXI_AWLOCK),
        .S01_AXI_awprot(vip_S04_AXI_M_AXI_AWPROT),
        .S01_AXI_awqos(vip_S04_AXI_M_AXI_AWQOS),
        .S01_AXI_awready(vip_S04_AXI_M_AXI_AWREADY),
        .S01_AXI_awsize({1'b0,1'b1,1'b0}),
        .S01_AXI_awvalid(vip_S04_AXI_M_AXI_AWVALID),
        .S01_AXI_bready(vip_S04_AXI_M_AXI_BREADY),
        .S01_AXI_bresp(vip_S04_AXI_M_AXI_BRESP),
        .S01_AXI_bvalid(vip_S04_AXI_M_AXI_BVALID),
        .S01_AXI_rdata(vip_S04_AXI_M_AXI_RDATA),
        .S01_AXI_rlast(vip_S04_AXI_M_AXI_RLAST),
        .S01_AXI_rready(vip_S04_AXI_M_AXI_RREADY),
        .S01_AXI_rresp(vip_S04_AXI_M_AXI_RRESP),
        .S01_AXI_rvalid(vip_S04_AXI_M_AXI_RVALID),
        .S01_AXI_wdata(vip_S04_AXI_M_AXI_WDATA),
        .S01_AXI_wlast(vip_S04_AXI_M_AXI_WLAST),
        .S01_AXI_wready(vip_S04_AXI_M_AXI_WREADY),
        .S01_AXI_wstrb(vip_S04_AXI_M_AXI_WSTRB),
        .S01_AXI_wvalid(vip_S04_AXI_M_AXI_WVALID),
        .aclk(ddr4_mem00_ui_clk),
        .aclk1(aclk),
        .aresetn(interconnect_aresetn));
  (* X_CORE_INFO = "bd_e7f0,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_DDR4_MEM01_0 interconnect_ddr4_mem01
       (.M00_AXI_araddr(M00_AXI1_araddr),
        .M00_AXI_arburst(M00_AXI1_arburst),
        .M00_AXI_arcache(M00_AXI1_arcache),
        .M00_AXI_arlen(M00_AXI1_arlen),
        .M00_AXI_arlock(M00_AXI1_arlock),
        .M00_AXI_arprot(M00_AXI1_arprot),
        .M00_AXI_arqos(M00_AXI1_arqos),
        .M00_AXI_arready(S_AXI1_arready),
        .M00_AXI_arsize(NLW_interconnect_ddr4_mem01_M00_AXI_arsize_UNCONNECTED[2:0]),
        .M00_AXI_arvalid(M00_AXI1_arvalid),
        .M00_AXI_awaddr(M00_AXI1_awaddr),
        .M00_AXI_awburst(M00_AXI1_awburst),
        .M00_AXI_awcache(M00_AXI1_awcache),
        .M00_AXI_awlen(M00_AXI1_awlen),
        .M00_AXI_awlock(M00_AXI1_awlock),
        .M00_AXI_awprot(M00_AXI1_awprot),
        .M00_AXI_awqos(M00_AXI1_awqos),
        .M00_AXI_awready(S_AXI1_awready),
        .M00_AXI_awsize(NLW_interconnect_ddr4_mem01_M00_AXI_awsize_UNCONNECTED[2:0]),
        .M00_AXI_awvalid(M00_AXI1_awvalid),
        .M00_AXI_bready(M00_AXI1_bready),
        .M00_AXI_bresp(S_AXI1_bresp),
        .M00_AXI_bvalid(S_AXI1_bvalid),
        .M00_AXI_rdata(S_AXI1_rdata),
        .M00_AXI_rlast(S_AXI1_rlast),
        .M00_AXI_rready(M00_AXI1_rready),
        .M00_AXI_rresp(S_AXI1_rresp),
        .M00_AXI_rvalid(S_AXI1_rvalid),
        .M00_AXI_wdata(M00_AXI1_wdata),
        .M00_AXI_wlast(M00_AXI1_wlast),
        .M00_AXI_wready(S_AXI1_wready),
        .M00_AXI_wstrb(M00_AXI1_wstrb),
        .M00_AXI_wvalid(M00_AXI1_wvalid),
        .S00_AXI_araddr(vip_S02_AXI_M_AXI_ARADDR),
        .S00_AXI_arburst(vip_S02_AXI_M_AXI_ARBURST),
        .S00_AXI_arcache(vip_S02_AXI_M_AXI_ARCACHE),
        .S00_AXI_arid(vip_S02_AXI_M_AXI_ARID),
        .S00_AXI_arlen(vip_S02_AXI_M_AXI_ARLEN),
        .S00_AXI_arlock(vip_S02_AXI_M_AXI_ARLOCK),
        .S00_AXI_arprot(vip_S02_AXI_M_AXI_ARPROT),
        .S00_AXI_arqos(vip_S02_AXI_M_AXI_ARQOS),
        .S00_AXI_arready(vip_S02_AXI_M_AXI_ARREADY),
        .S00_AXI_arsize({1'b1,1'b1,1'b0}),
        .S00_AXI_arvalid(vip_S02_AXI_M_AXI_ARVALID),
        .S00_AXI_awaddr(vip_S02_AXI_M_AXI_AWADDR),
        .S00_AXI_awburst(vip_S02_AXI_M_AXI_AWBURST),
        .S00_AXI_awcache(vip_S02_AXI_M_AXI_AWCACHE),
        .S00_AXI_awid(vip_S02_AXI_M_AXI_AWID),
        .S00_AXI_awlen(vip_S02_AXI_M_AXI_AWLEN),
        .S00_AXI_awlock(vip_S02_AXI_M_AXI_AWLOCK),
        .S00_AXI_awprot(vip_S02_AXI_M_AXI_AWPROT),
        .S00_AXI_awqos(vip_S02_AXI_M_AXI_AWQOS),
        .S00_AXI_awready(vip_S02_AXI_M_AXI_AWREADY),
        .S00_AXI_awsize({1'b1,1'b1,1'b0}),
        .S00_AXI_awvalid(vip_S02_AXI_M_AXI_AWVALID),
        .S00_AXI_bid(vip_S02_AXI_M_AXI_BID),
        .S00_AXI_bready(vip_S02_AXI_M_AXI_BREADY),
        .S00_AXI_bresp(vip_S02_AXI_M_AXI_BRESP),
        .S00_AXI_bvalid(vip_S02_AXI_M_AXI_BVALID),
        .S00_AXI_rdata(vip_S02_AXI_M_AXI_RDATA),
        .S00_AXI_rid(vip_S02_AXI_M_AXI_RID),
        .S00_AXI_rlast(vip_S02_AXI_M_AXI_RLAST),
        .S00_AXI_rready(vip_S02_AXI_M_AXI_RREADY),
        .S00_AXI_rresp(vip_S02_AXI_M_AXI_RRESP),
        .S00_AXI_rvalid(vip_S02_AXI_M_AXI_RVALID),
        .S00_AXI_wdata(vip_S02_AXI_M_AXI_WDATA),
        .S00_AXI_wlast(vip_S02_AXI_M_AXI_WLAST),
        .S00_AXI_wready(vip_S02_AXI_M_AXI_WREADY),
        .S00_AXI_wstrb(vip_S02_AXI_M_AXI_WSTRB),
        .S00_AXI_wvalid(vip_S02_AXI_M_AXI_WVALID),
        .S01_AXI_araddr(vip_S06_AXI_M_AXI_ARADDR),
        .S01_AXI_arburst({1'b0,1'b1}),
        .S01_AXI_arcache(vip_S06_AXI_M_AXI_ARCACHE),
        .S01_AXI_arlen(vip_S06_AXI_M_AXI_ARLEN),
        .S01_AXI_arlock(vip_S06_AXI_M_AXI_ARLOCK),
        .S01_AXI_arprot(vip_S06_AXI_M_AXI_ARPROT),
        .S01_AXI_arqos(vip_S06_AXI_M_AXI_ARQOS),
        .S01_AXI_arready(vip_S06_AXI_M_AXI_ARREADY),
        .S01_AXI_arsize({1'b0,1'b1,1'b0}),
        .S01_AXI_arvalid(vip_S06_AXI_M_AXI_ARVALID),
        .S01_AXI_awaddr(vip_S06_AXI_M_AXI_AWADDR),
        .S01_AXI_awburst({1'b0,1'b1}),
        .S01_AXI_awcache(vip_S06_AXI_M_AXI_AWCACHE),
        .S01_AXI_awlen(vip_S06_AXI_M_AXI_AWLEN),
        .S01_AXI_awlock(vip_S06_AXI_M_AXI_AWLOCK),
        .S01_AXI_awprot(vip_S06_AXI_M_AXI_AWPROT),
        .S01_AXI_awqos(vip_S06_AXI_M_AXI_AWQOS),
        .S01_AXI_awready(vip_S06_AXI_M_AXI_AWREADY),
        .S01_AXI_awsize({1'b0,1'b1,1'b0}),
        .S01_AXI_awvalid(vip_S06_AXI_M_AXI_AWVALID),
        .S01_AXI_bready(vip_S06_AXI_M_AXI_BREADY),
        .S01_AXI_bresp(vip_S06_AXI_M_AXI_BRESP),
        .S01_AXI_bvalid(vip_S06_AXI_M_AXI_BVALID),
        .S01_AXI_rdata(vip_S06_AXI_M_AXI_RDATA),
        .S01_AXI_rlast(vip_S06_AXI_M_AXI_RLAST),
        .S01_AXI_rready(vip_S06_AXI_M_AXI_RREADY),
        .S01_AXI_rresp(vip_S06_AXI_M_AXI_RRESP),
        .S01_AXI_rvalid(vip_S06_AXI_M_AXI_RVALID),
        .S01_AXI_wdata(vip_S06_AXI_M_AXI_WDATA),
        .S01_AXI_wlast(vip_S06_AXI_M_AXI_WLAST),
        .S01_AXI_wready(vip_S06_AXI_M_AXI_WREADY),
        .S01_AXI_wstrb(vip_S06_AXI_M_AXI_WSTRB),
        .S01_AXI_wvalid(vip_S06_AXI_M_AXI_WVALID),
        .aclk(ddr4_mem01_ui_clk),
        .aclk1(aclk),
        .aresetn(interconnect_aresetn1));
  (* X_CORE_INFO = "bd_e700,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_DDR4_MEM02_0 interconnect_ddr4_mem02
       (.M00_AXI_araddr(M00_AXI2_araddr),
        .M00_AXI_arburst(M00_AXI2_arburst),
        .M00_AXI_arcache(M00_AXI2_arcache),
        .M00_AXI_arlen(M00_AXI2_arlen),
        .M00_AXI_arlock(M00_AXI2_arlock),
        .M00_AXI_arprot(M00_AXI2_arprot),
        .M00_AXI_arqos(M00_AXI2_arqos),
        .M00_AXI_arready(S_AXI2_arready),
        .M00_AXI_arsize(NLW_interconnect_ddr4_mem02_M00_AXI_arsize_UNCONNECTED[2:0]),
        .M00_AXI_arvalid(M00_AXI2_arvalid),
        .M00_AXI_awaddr(M00_AXI2_awaddr),
        .M00_AXI_awburst(M00_AXI2_awburst),
        .M00_AXI_awcache(M00_AXI2_awcache),
        .M00_AXI_awlen(M00_AXI2_awlen),
        .M00_AXI_awlock(M00_AXI2_awlock),
        .M00_AXI_awprot(M00_AXI2_awprot),
        .M00_AXI_awqos(M00_AXI2_awqos),
        .M00_AXI_awready(S_AXI2_awready),
        .M00_AXI_awsize(NLW_interconnect_ddr4_mem02_M00_AXI_awsize_UNCONNECTED[2:0]),
        .M00_AXI_awvalid(M00_AXI2_awvalid),
        .M00_AXI_bready(M00_AXI2_bready),
        .M00_AXI_bresp(S_AXI2_bresp),
        .M00_AXI_bvalid(S_AXI2_bvalid),
        .M00_AXI_rdata(S_AXI2_rdata),
        .M00_AXI_rlast(S_AXI2_rlast),
        .M00_AXI_rready(M00_AXI2_rready),
        .M00_AXI_rresp(S_AXI2_rresp),
        .M00_AXI_rvalid(S_AXI2_rvalid),
        .M00_AXI_wdata(M00_AXI2_wdata),
        .M00_AXI_wlast(M00_AXI2_wlast),
        .M00_AXI_wready(S_AXI2_wready),
        .M00_AXI_wstrb(M00_AXI2_wstrb),
        .M00_AXI_wvalid(M00_AXI2_wvalid),
        .S00_AXI_araddr(vip_S03_AXI_M_AXI_ARADDR),
        .S00_AXI_arburst(vip_S03_AXI_M_AXI_ARBURST),
        .S00_AXI_arcache(vip_S03_AXI_M_AXI_ARCACHE),
        .S00_AXI_arid(vip_S03_AXI_M_AXI_ARID),
        .S00_AXI_arlen(vip_S03_AXI_M_AXI_ARLEN),
        .S00_AXI_arlock(vip_S03_AXI_M_AXI_ARLOCK),
        .S00_AXI_arprot(vip_S03_AXI_M_AXI_ARPROT),
        .S00_AXI_arqos(vip_S03_AXI_M_AXI_ARQOS),
        .S00_AXI_arready(vip_S03_AXI_M_AXI_ARREADY),
        .S00_AXI_arsize({1'b1,1'b1,1'b0}),
        .S00_AXI_arvalid(vip_S03_AXI_M_AXI_ARVALID),
        .S00_AXI_awaddr(vip_S03_AXI_M_AXI_AWADDR),
        .S00_AXI_awburst(vip_S03_AXI_M_AXI_AWBURST),
        .S00_AXI_awcache(vip_S03_AXI_M_AXI_AWCACHE),
        .S00_AXI_awid(vip_S03_AXI_M_AXI_AWID),
        .S00_AXI_awlen(vip_S03_AXI_M_AXI_AWLEN),
        .S00_AXI_awlock(vip_S03_AXI_M_AXI_AWLOCK),
        .S00_AXI_awprot(vip_S03_AXI_M_AXI_AWPROT),
        .S00_AXI_awqos(vip_S03_AXI_M_AXI_AWQOS),
        .S00_AXI_awready(vip_S03_AXI_M_AXI_AWREADY),
        .S00_AXI_awsize({1'b1,1'b1,1'b0}),
        .S00_AXI_awvalid(vip_S03_AXI_M_AXI_AWVALID),
        .S00_AXI_bid(vip_S03_AXI_M_AXI_BID),
        .S00_AXI_bready(vip_S03_AXI_M_AXI_BREADY),
        .S00_AXI_bresp(vip_S03_AXI_M_AXI_BRESP),
        .S00_AXI_bvalid(vip_S03_AXI_M_AXI_BVALID),
        .S00_AXI_rdata(vip_S03_AXI_M_AXI_RDATA),
        .S00_AXI_rid(vip_S03_AXI_M_AXI_RID),
        .S00_AXI_rlast(vip_S03_AXI_M_AXI_RLAST),
        .S00_AXI_rready(vip_S03_AXI_M_AXI_RREADY),
        .S00_AXI_rresp(vip_S03_AXI_M_AXI_RRESP),
        .S00_AXI_rvalid(vip_S03_AXI_M_AXI_RVALID),
        .S00_AXI_wdata(vip_S03_AXI_M_AXI_WDATA),
        .S00_AXI_wlast(vip_S03_AXI_M_AXI_WLAST),
        .S00_AXI_wready(vip_S03_AXI_M_AXI_WREADY),
        .S00_AXI_wstrb(vip_S03_AXI_M_AXI_WSTRB),
        .S00_AXI_wvalid(vip_S03_AXI_M_AXI_WVALID),
        .S01_AXI_araddr(vip_S07_AXI_M_AXI_ARADDR),
        .S01_AXI_arburst({1'b0,1'b1}),
        .S01_AXI_arcache(vip_S07_AXI_M_AXI_ARCACHE),
        .S01_AXI_arlen(vip_S07_AXI_M_AXI_ARLEN),
        .S01_AXI_arlock(vip_S07_AXI_M_AXI_ARLOCK),
        .S01_AXI_arprot(vip_S07_AXI_M_AXI_ARPROT),
        .S01_AXI_arqos(vip_S07_AXI_M_AXI_ARQOS),
        .S01_AXI_arready(vip_S07_AXI_M_AXI_ARREADY),
        .S01_AXI_arsize({1'b0,1'b1,1'b0}),
        .S01_AXI_arvalid(vip_S07_AXI_M_AXI_ARVALID),
        .S01_AXI_awaddr(vip_S07_AXI_M_AXI_AWADDR),
        .S01_AXI_awburst({1'b0,1'b1}),
        .S01_AXI_awcache(vip_S07_AXI_M_AXI_AWCACHE),
        .S01_AXI_awlen(vip_S07_AXI_M_AXI_AWLEN),
        .S01_AXI_awlock(vip_S07_AXI_M_AXI_AWLOCK),
        .S01_AXI_awprot(vip_S07_AXI_M_AXI_AWPROT),
        .S01_AXI_awqos(vip_S07_AXI_M_AXI_AWQOS),
        .S01_AXI_awready(vip_S07_AXI_M_AXI_AWREADY),
        .S01_AXI_awsize({1'b0,1'b1,1'b0}),
        .S01_AXI_awvalid(vip_S07_AXI_M_AXI_AWVALID),
        .S01_AXI_bready(vip_S07_AXI_M_AXI_BREADY),
        .S01_AXI_bresp(vip_S07_AXI_M_AXI_BRESP),
        .S01_AXI_bvalid(vip_S07_AXI_M_AXI_BVALID),
        .S01_AXI_rdata(vip_S07_AXI_M_AXI_RDATA),
        .S01_AXI_rlast(vip_S07_AXI_M_AXI_RLAST),
        .S01_AXI_rready(vip_S07_AXI_M_AXI_RREADY),
        .S01_AXI_rresp(vip_S07_AXI_M_AXI_RRESP),
        .S01_AXI_rvalid(vip_S07_AXI_M_AXI_RVALID),
        .S01_AXI_wdata(vip_S07_AXI_M_AXI_WDATA),
        .S01_AXI_wlast(vip_S07_AXI_M_AXI_WLAST),
        .S01_AXI_wready(vip_S07_AXI_M_AXI_WREADY),
        .S01_AXI_wstrb(vip_S07_AXI_M_AXI_WSTRB),
        .S01_AXI_wvalid(vip_S07_AXI_M_AXI_WVALID),
        .aclk(ddr4_mem02_ui_clk),
        .aclk1(aclk),
        .aresetn(interconnect_aresetn2));
  (* X_CORE_INFO = "bd_2b97,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_M00_AXI_MEM00_0 interconnect_m00_axi_mem00
       (.M00_AXI_araddr(interconnect_M00_AXI_MEM00_M00_AXI_ARADDR),
        .M00_AXI_arburst(interconnect_M00_AXI_MEM00_M00_AXI_ARBURST),
        .M00_AXI_arcache(interconnect_M00_AXI_MEM00_M00_AXI_ARCACHE),
        .M00_AXI_arlen(interconnect_M00_AXI_MEM00_M00_AXI_ARLEN),
        .M00_AXI_arlock(interconnect_M00_AXI_MEM00_M00_AXI_ARLOCK),
        .M00_AXI_arprot(interconnect_M00_AXI_MEM00_M00_AXI_ARPROT),
        .M00_AXI_arqos(interconnect_M00_AXI_MEM00_M00_AXI_ARQOS),
        .M00_AXI_arready(interconnect_M00_AXI_MEM00_M00_AXI_ARREADY),
        .M00_AXI_arsize(NLW_interconnect_m00_axi_mem00_M00_AXI_arsize_UNCONNECTED[2:0]),
        .M00_AXI_arvalid(interconnect_M00_AXI_MEM00_M00_AXI_ARVALID),
        .M00_AXI_awaddr(interconnect_M00_AXI_MEM00_M00_AXI_AWADDR),
        .M00_AXI_awburst(interconnect_M00_AXI_MEM00_M00_AXI_AWBURST),
        .M00_AXI_awcache(interconnect_M00_AXI_MEM00_M00_AXI_AWCACHE),
        .M00_AXI_awlen(interconnect_M00_AXI_MEM00_M00_AXI_AWLEN),
        .M00_AXI_awlock(interconnect_M00_AXI_MEM00_M00_AXI_AWLOCK),
        .M00_AXI_awprot(interconnect_M00_AXI_MEM00_M00_AXI_AWPROT),
        .M00_AXI_awqos(interconnect_M00_AXI_MEM00_M00_AXI_AWQOS),
        .M00_AXI_awready(interconnect_M00_AXI_MEM00_M00_AXI_AWREADY),
        .M00_AXI_awsize(NLW_interconnect_m00_axi_mem00_M00_AXI_awsize_UNCONNECTED[2:0]),
        .M00_AXI_awvalid(interconnect_M00_AXI_MEM00_M00_AXI_AWVALID),
        .M00_AXI_bready(interconnect_M00_AXI_MEM00_M00_AXI_BREADY),
        .M00_AXI_bresp(interconnect_M00_AXI_MEM00_M00_AXI_BRESP),
        .M00_AXI_bvalid(interconnect_M00_AXI_MEM00_M00_AXI_BVALID),
        .M00_AXI_rdata(interconnect_M00_AXI_MEM00_M00_AXI_RDATA),
        .M00_AXI_rlast(interconnect_M00_AXI_MEM00_M00_AXI_RLAST),
        .M00_AXI_rready(interconnect_M00_AXI_MEM00_M00_AXI_RREADY),
        .M00_AXI_rresp(interconnect_M00_AXI_MEM00_M00_AXI_RRESP),
        .M00_AXI_rvalid(interconnect_M00_AXI_MEM00_M00_AXI_RVALID),
        .M00_AXI_wdata(interconnect_M00_AXI_MEM00_M00_AXI_WDATA),
        .M00_AXI_wlast(interconnect_M00_AXI_MEM00_M00_AXI_WLAST),
        .M00_AXI_wready(interconnect_M00_AXI_MEM00_M00_AXI_WREADY),
        .M00_AXI_wstrb(interconnect_M00_AXI_MEM00_M00_AXI_WSTRB),
        .M00_AXI_wvalid(interconnect_M00_AXI_MEM00_M00_AXI_WVALID),
        .S00_AXI_araddr(vip_S01_AXI_M_AXI_ARADDR),
        .S00_AXI_arburst(vip_S01_AXI_M_AXI_ARBURST),
        .S00_AXI_arcache(vip_S01_AXI_M_AXI_ARCACHE),
        .S00_AXI_arid(vip_S01_AXI_M_AXI_ARID),
        .S00_AXI_arlen(vip_S01_AXI_M_AXI_ARLEN),
        .S00_AXI_arlock(vip_S01_AXI_M_AXI_ARLOCK),
        .S00_AXI_arprot(vip_S01_AXI_M_AXI_ARPROT),
        .S00_AXI_arqos(vip_S01_AXI_M_AXI_ARQOS),
        .S00_AXI_arready(vip_S01_AXI_M_AXI_ARREADY),
        .S00_AXI_arsize({1'b1,1'b1,1'b0}),
        .S00_AXI_arvalid(vip_S01_AXI_M_AXI_ARVALID),
        .S00_AXI_awaddr(vip_S01_AXI_M_AXI_AWADDR),
        .S00_AXI_awburst(vip_S01_AXI_M_AXI_AWBURST),
        .S00_AXI_awcache(vip_S01_AXI_M_AXI_AWCACHE),
        .S00_AXI_awid(vip_S01_AXI_M_AXI_AWID),
        .S00_AXI_awlen(vip_S01_AXI_M_AXI_AWLEN),
        .S00_AXI_awlock(vip_S01_AXI_M_AXI_AWLOCK),
        .S00_AXI_awprot(vip_S01_AXI_M_AXI_AWPROT),
        .S00_AXI_awqos(vip_S01_AXI_M_AXI_AWQOS),
        .S00_AXI_awready(vip_S01_AXI_M_AXI_AWREADY),
        .S00_AXI_awsize({1'b1,1'b1,1'b0}),
        .S00_AXI_awvalid(vip_S01_AXI_M_AXI_AWVALID),
        .S00_AXI_bid(vip_S01_AXI_M_AXI_BID),
        .S00_AXI_bready(vip_S01_AXI_M_AXI_BREADY),
        .S00_AXI_bresp(vip_S01_AXI_M_AXI_BRESP),
        .S00_AXI_bvalid(vip_S01_AXI_M_AXI_BVALID),
        .S00_AXI_rdata(vip_S01_AXI_M_AXI_RDATA),
        .S00_AXI_rid(vip_S01_AXI_M_AXI_RID),
        .S00_AXI_rlast(vip_S01_AXI_M_AXI_RLAST),
        .S00_AXI_rready(vip_S01_AXI_M_AXI_RREADY),
        .S00_AXI_rresp(vip_S01_AXI_M_AXI_RRESP),
        .S00_AXI_rvalid(vip_S01_AXI_M_AXI_RVALID),
        .S00_AXI_wdata(vip_S01_AXI_M_AXI_WDATA),
        .S00_AXI_wlast(vip_S01_AXI_M_AXI_WLAST),
        .S00_AXI_wready(vip_S01_AXI_M_AXI_WREADY),
        .S00_AXI_wstrb(vip_S01_AXI_M_AXI_WSTRB),
        .S00_AXI_wvalid(vip_S01_AXI_M_AXI_WVALID),
        .S01_AXI_araddr(vip_S05_AXI_M_AXI_ARADDR),
        .S01_AXI_arburst({1'b0,1'b1}),
        .S01_AXI_arcache(vip_S05_AXI_M_AXI_ARCACHE),
        .S01_AXI_arlen(vip_S05_AXI_M_AXI_ARLEN),
        .S01_AXI_arlock(vip_S05_AXI_M_AXI_ARLOCK),
        .S01_AXI_arprot(vip_S05_AXI_M_AXI_ARPROT),
        .S01_AXI_arqos(vip_S05_AXI_M_AXI_ARQOS),
        .S01_AXI_arready(vip_S05_AXI_M_AXI_ARREADY),
        .S01_AXI_arsize({1'b0,1'b1,1'b0}),
        .S01_AXI_arvalid(vip_S05_AXI_M_AXI_ARVALID),
        .S01_AXI_awaddr(vip_S05_AXI_M_AXI_AWADDR),
        .S01_AXI_awburst({1'b0,1'b1}),
        .S01_AXI_awcache(vip_S05_AXI_M_AXI_AWCACHE),
        .S01_AXI_awlen(vip_S05_AXI_M_AXI_AWLEN),
        .S01_AXI_awlock(vip_S05_AXI_M_AXI_AWLOCK),
        .S01_AXI_awprot(vip_S05_AXI_M_AXI_AWPROT),
        .S01_AXI_awqos(vip_S05_AXI_M_AXI_AWQOS),
        .S01_AXI_awready(vip_S05_AXI_M_AXI_AWREADY),
        .S01_AXI_awsize({1'b0,1'b1,1'b0}),
        .S01_AXI_awvalid(vip_S05_AXI_M_AXI_AWVALID),
        .S01_AXI_bready(vip_S05_AXI_M_AXI_BREADY),
        .S01_AXI_bresp(vip_S05_AXI_M_AXI_BRESP),
        .S01_AXI_bvalid(vip_S05_AXI_M_AXI_BVALID),
        .S01_AXI_rdata(vip_S05_AXI_M_AXI_RDATA),
        .S01_AXI_rlast(vip_S05_AXI_M_AXI_RLAST),
        .S01_AXI_rready(vip_S05_AXI_M_AXI_RREADY),
        .S01_AXI_rresp(vip_S05_AXI_M_AXI_RRESP),
        .S01_AXI_rvalid(vip_S05_AXI_M_AXI_RVALID),
        .S01_AXI_wdata(vip_S05_AXI_M_AXI_WDATA),
        .S01_AXI_wlast(vip_S05_AXI_M_AXI_WLAST),
        .S01_AXI_wready(vip_S05_AXI_M_AXI_WREADY),
        .S01_AXI_wstrb(vip_S05_AXI_M_AXI_WSTRB),
        .S01_AXI_wvalid(vip_S05_AXI_M_AXI_WVALID),
        .aclk(aclk2),
        .aclk1(aclk),
        .aresetn(interconnect_aresetn3));
  (* X_CORE_INFO = "axi_register_slice_v2_1_21_axi_register_slice,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_rs_M00_AXI_0 rs_m00_axi
       (.aclk(aclk2),
        .aresetn(interconnect_aresetn3),
        .m_axi_araddr(\bbstub_m_axi_araddr[38] ),
        .m_axi_arburst(\bbstub_m_axi_arburst[1] ),
        .m_axi_arcache(\bbstub_m_axi_arcache[3] ),
        .m_axi_arlen(\bbstub_m_axi_arlen[7] ),
        .m_axi_arlock(\bbstub_m_axi_arlock[0] ),
        .m_axi_arprot(\bbstub_m_axi_arprot[2] ),
        .m_axi_arqos(\bbstub_m_axi_arqos[3] ),
        .m_axi_arready(M00_AXI_arready),
        .m_axi_arregion(M00_AXI_arregion),
        .m_axi_arsize(M00_AXI_arsize),
        .m_axi_arvalid(bbstub_m_axi_arvalid),
        .m_axi_awaddr(\bbstub_m_axi_awaddr[38] ),
        .m_axi_awburst(\bbstub_m_axi_awburst[1] ),
        .m_axi_awcache(\bbstub_m_axi_awcache[3] ),
        .m_axi_awlen(\bbstub_m_axi_awlen[7] ),
        .m_axi_awlock(\bbstub_m_axi_awlock[0] ),
        .m_axi_awprot(\bbstub_m_axi_awprot[2] ),
        .m_axi_awqos(\bbstub_m_axi_awqos[3] ),
        .m_axi_awready(M00_AXI_awready),
        .m_axi_awregion(M00_AXI_awregion),
        .m_axi_awsize(M00_AXI_awsize),
        .m_axi_awvalid(bbstub_m_axi_awvalid),
        .m_axi_bready(bbstub_m_axi_bready),
        .m_axi_bresp(M00_AXI_bresp),
        .m_axi_bvalid(M00_AXI_bvalid),
        .m_axi_rdata(M00_AXI_rdata),
        .m_axi_rlast(M00_AXI_rlast),
        .m_axi_rready(bbstub_m_axi_rready),
        .m_axi_rresp(M00_AXI_rresp),
        .m_axi_rvalid(M00_AXI_rvalid),
        .m_axi_wdata(\bbstub_m_axi_wdata[511] ),
        .m_axi_wlast(bbstub_m_axi_wlast),
        .m_axi_wready(M00_AXI_wready),
        .m_axi_wstrb(\bbstub_m_axi_wstrb[63] ),
        .m_axi_wvalid(bbstub_m_axi_wvalid),
        .s_axi_araddr(vip_M00_AXI_M_AXI_ARADDR),
        .s_axi_arburst(vip_M00_AXI_M_AXI_ARBURST),
        .s_axi_arcache(vip_M00_AXI_M_AXI_ARCACHE),
        .s_axi_arlen(vip_M00_AXI_M_AXI_ARLEN),
        .s_axi_arlock(vip_M00_AXI_M_AXI_ARLOCK),
        .s_axi_arprot(vip_M00_AXI_M_AXI_ARPROT),
        .s_axi_arqos(vip_M00_AXI_M_AXI_ARQOS),
        .s_axi_arready(vip_M00_AXI_M_AXI_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b1,1'b1,1'b0}),
        .s_axi_arvalid(vip_M00_AXI_M_AXI_ARVALID),
        .s_axi_awaddr(vip_M00_AXI_M_AXI_AWADDR),
        .s_axi_awburst(vip_M00_AXI_M_AXI_AWBURST),
        .s_axi_awcache(vip_M00_AXI_M_AXI_AWCACHE),
        .s_axi_awlen(vip_M00_AXI_M_AXI_AWLEN),
        .s_axi_awlock(vip_M00_AXI_M_AXI_AWLOCK),
        .s_axi_awprot(vip_M00_AXI_M_AXI_AWPROT),
        .s_axi_awqos(vip_M00_AXI_M_AXI_AWQOS),
        .s_axi_awready(vip_M00_AXI_M_AXI_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b1,1'b1,1'b0}),
        .s_axi_awvalid(vip_M00_AXI_M_AXI_AWVALID),
        .s_axi_bready(vip_M00_AXI_M_AXI_BREADY),
        .s_axi_bresp(vip_M00_AXI_M_AXI_BRESP),
        .s_axi_bvalid(vip_M00_AXI_M_AXI_BVALID),
        .s_axi_rdata(vip_M00_AXI_M_AXI_RDATA),
        .s_axi_rlast(vip_M00_AXI_M_AXI_RLAST),
        .s_axi_rready(vip_M00_AXI_M_AXI_RREADY),
        .s_axi_rresp(vip_M00_AXI_M_AXI_RRESP),
        .s_axi_rvalid(vip_M00_AXI_M_AXI_RVALID),
        .s_axi_wdata(vip_M00_AXI_M_AXI_WDATA),
        .s_axi_wlast(vip_M00_AXI_M_AXI_WLAST),
        .s_axi_wready(vip_M00_AXI_M_AXI_WREADY),
        .s_axi_wstrb(vip_M00_AXI_M_AXI_WSTRB),
        .s_axi_wvalid(vip_M00_AXI_M_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_M00_AXI_0 vip_m00_axi
       (.aclk(aclk2),
        .aresetn(interconnect_aresetn3),
        .m_axi_araddr(vip_M00_AXI_M_AXI_ARADDR),
        .m_axi_arburst(vip_M00_AXI_M_AXI_ARBURST),
        .m_axi_arcache(vip_M00_AXI_M_AXI_ARCACHE),
        .m_axi_arlen(vip_M00_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_M00_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_M00_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_M00_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_M00_AXI_M_AXI_ARREADY),
        .m_axi_arvalid(vip_M00_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_M00_AXI_M_AXI_AWADDR),
        .m_axi_awburst(vip_M00_AXI_M_AXI_AWBURST),
        .m_axi_awcache(vip_M00_AXI_M_AXI_AWCACHE),
        .m_axi_awlen(vip_M00_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_M00_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_M00_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_M00_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_M00_AXI_M_AXI_AWREADY),
        .m_axi_awvalid(vip_M00_AXI_M_AXI_AWVALID),
        .m_axi_bready(vip_M00_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_M00_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_M00_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_M00_AXI_M_AXI_RDATA),
        .m_axi_rlast(vip_M00_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_M00_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_M00_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_M00_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_M00_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_M00_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_M00_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_M00_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_M00_AXI_M_AXI_WVALID),
        .s_axi_araddr(interconnect_M00_AXI_MEM00_M00_AXI_ARADDR),
        .s_axi_arburst(interconnect_M00_AXI_MEM00_M00_AXI_ARBURST),
        .s_axi_arcache(interconnect_M00_AXI_MEM00_M00_AXI_ARCACHE),
        .s_axi_arlen(interconnect_M00_AXI_MEM00_M00_AXI_ARLEN),
        .s_axi_arlock(interconnect_M00_AXI_MEM00_M00_AXI_ARLOCK),
        .s_axi_arprot(interconnect_M00_AXI_MEM00_M00_AXI_ARPROT),
        .s_axi_arqos(interconnect_M00_AXI_MEM00_M00_AXI_ARQOS),
        .s_axi_arready(interconnect_M00_AXI_MEM00_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_M00_AXI_MEM00_M00_AXI_ARVALID),
        .s_axi_awaddr(interconnect_M00_AXI_MEM00_M00_AXI_AWADDR),
        .s_axi_awburst(interconnect_M00_AXI_MEM00_M00_AXI_AWBURST),
        .s_axi_awcache(interconnect_M00_AXI_MEM00_M00_AXI_AWCACHE),
        .s_axi_awlen(interconnect_M00_AXI_MEM00_M00_AXI_AWLEN),
        .s_axi_awlock(interconnect_M00_AXI_MEM00_M00_AXI_AWLOCK),
        .s_axi_awprot(interconnect_M00_AXI_MEM00_M00_AXI_AWPROT),
        .s_axi_awqos(interconnect_M00_AXI_MEM00_M00_AXI_AWQOS),
        .s_axi_awready(interconnect_M00_AXI_MEM00_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_M00_AXI_MEM00_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_M00_AXI_MEM00_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_M00_AXI_MEM00_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_M00_AXI_MEM00_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_M00_AXI_MEM00_M00_AXI_RDATA),
        .s_axi_rlast(interconnect_M00_AXI_MEM00_M00_AXI_RLAST),
        .s_axi_rready(interconnect_M00_AXI_MEM00_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_M00_AXI_MEM00_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_M00_AXI_MEM00_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_M00_AXI_MEM00_M00_AXI_WDATA),
        .s_axi_wlast(interconnect_M00_AXI_MEM00_M00_AXI_WLAST),
        .s_axi_wready(interconnect_M00_AXI_MEM00_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_M00_AXI_MEM00_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_M00_AXI_MEM00_M00_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S00_AXI_0 vip_s00_axi
       (.aclk(aclk),
        .aresetn(interconnect_aresetn),
        .m_axi_araddr(vip_S00_AXI_M_AXI_ARADDR),
        .m_axi_arburst(vip_S00_AXI_M_AXI_ARBURST),
        .m_axi_arcache(vip_S00_AXI_M_AXI_ARCACHE),
        .m_axi_arid(vip_S00_AXI_M_AXI_ARID),
        .m_axi_arlen(vip_S00_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S00_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S00_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S00_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S00_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s00_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S00_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S00_AXI_M_AXI_AWADDR),
        .m_axi_awburst(vip_S00_AXI_M_AXI_AWBURST),
        .m_axi_awcache(vip_S00_AXI_M_AXI_AWCACHE),
        .m_axi_awid(vip_S00_AXI_M_AXI_AWID),
        .m_axi_awlen(vip_S00_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S00_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S00_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S00_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S00_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s00_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S00_AXI_M_AXI_AWVALID),
        .m_axi_bid(vip_S00_AXI_M_AXI_BID),
        .m_axi_bready(vip_S00_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S00_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S00_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S00_AXI_M_AXI_RDATA),
        .m_axi_rid(vip_S00_AXI_M_AXI_RID),
        .m_axi_rlast(vip_S00_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S00_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S00_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S00_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S00_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S00_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S00_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S00_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S00_AXI_M_AXI_WVALID),
        .s_axi_araddr(S00_AXI_araddr),
        .s_axi_arburst(S00_AXI_arburst),
        .s_axi_arcache(S00_AXI_arcache),
        .s_axi_arid(S00_AXI_arid),
        .s_axi_arlen(S00_AXI_arlen),
        .s_axi_arlock(S00_AXI_arlock),
        .s_axi_arprot(S00_AXI_arprot),
        .s_axi_arqos(S00_AXI_arqos),
        .s_axi_arready(S00_AXI_arready),
        .s_axi_arregion(S00_AXI_arregion),
        .s_axi_arvalid(S00_AXI_arvalid),
        .s_axi_awaddr(S00_AXI_awaddr),
        .s_axi_awburst(S00_AXI_awburst),
        .s_axi_awcache(S00_AXI_awcache),
        .s_axi_awid(S00_AXI_awid),
        .s_axi_awlen(S00_AXI_awlen),
        .s_axi_awlock(S00_AXI_awlock),
        .s_axi_awprot(S00_AXI_awprot),
        .s_axi_awqos(S00_AXI_awqos),
        .s_axi_awready(S00_AXI_awready),
        .s_axi_awregion(S00_AXI_awregion),
        .s_axi_awvalid(S00_AXI_awvalid),
        .s_axi_bid(S00_AXI_bid),
        .s_axi_bready(S00_AXI_bready),
        .s_axi_bresp(S00_AXI_bresp),
        .s_axi_bvalid(S00_AXI_bvalid),
        .s_axi_rdata(S00_AXI_rdata),
        .s_axi_rid(S00_AXI_rid),
        .s_axi_rlast(S00_AXI_rlast),
        .s_axi_rready(S00_AXI_rready),
        .s_axi_rresp(S00_AXI_rresp),
        .s_axi_rvalid(S00_AXI_rvalid),
        .s_axi_wdata(S00_AXI_wdata),
        .s_axi_wlast(S00_AXI_wlast),
        .s_axi_wready(S00_AXI_wready),
        .s_axi_wstrb(S00_AXI_wstrb),
        .s_axi_wvalid(S00_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S01_AXI_0 vip_s01_axi
       (.aclk(aclk),
        .aresetn(interconnect_aresetn1),
        .m_axi_araddr(vip_S01_AXI_M_AXI_ARADDR),
        .m_axi_arburst(vip_S01_AXI_M_AXI_ARBURST),
        .m_axi_arcache(vip_S01_AXI_M_AXI_ARCACHE),
        .m_axi_arid(vip_S01_AXI_M_AXI_ARID),
        .m_axi_arlen(vip_S01_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S01_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S01_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S01_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S01_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s01_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S01_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S01_AXI_M_AXI_AWADDR),
        .m_axi_awburst(vip_S01_AXI_M_AXI_AWBURST),
        .m_axi_awcache(vip_S01_AXI_M_AXI_AWCACHE),
        .m_axi_awid(vip_S01_AXI_M_AXI_AWID),
        .m_axi_awlen(vip_S01_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S01_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S01_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S01_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S01_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s01_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S01_AXI_M_AXI_AWVALID),
        .m_axi_bid(vip_S01_AXI_M_AXI_BID),
        .m_axi_bready(vip_S01_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S01_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S01_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S01_AXI_M_AXI_RDATA),
        .m_axi_rid(vip_S01_AXI_M_AXI_RID),
        .m_axi_rlast(vip_S01_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S01_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S01_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S01_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S01_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S01_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S01_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S01_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S01_AXI_M_AXI_WVALID),
        .s_axi_araddr(S01_AXI_araddr),
        .s_axi_arburst(S01_AXI_arburst),
        .s_axi_arcache(S01_AXI_arcache),
        .s_axi_arid(S01_AXI_arid),
        .s_axi_arlen(S01_AXI_arlen),
        .s_axi_arlock(S01_AXI_arlock),
        .s_axi_arprot(S01_AXI_arprot),
        .s_axi_arqos(S01_AXI_arqos),
        .s_axi_arready(S01_AXI_arready),
        .s_axi_arregion(S01_AXI_arregion),
        .s_axi_arvalid(S01_AXI_arvalid),
        .s_axi_awaddr(S01_AXI_awaddr),
        .s_axi_awburst(S01_AXI_awburst),
        .s_axi_awcache(S01_AXI_awcache),
        .s_axi_awid(S01_AXI_awid),
        .s_axi_awlen(S01_AXI_awlen),
        .s_axi_awlock(S01_AXI_awlock),
        .s_axi_awprot(S01_AXI_awprot),
        .s_axi_awqos(S01_AXI_awqos),
        .s_axi_awready(S01_AXI_awready),
        .s_axi_awregion(S01_AXI_awregion),
        .s_axi_awvalid(S01_AXI_awvalid),
        .s_axi_bid(S01_AXI_bid),
        .s_axi_bready(S01_AXI_bready),
        .s_axi_bresp(S01_AXI_bresp),
        .s_axi_bvalid(S01_AXI_bvalid),
        .s_axi_rdata(S01_AXI_rdata),
        .s_axi_rid(S01_AXI_rid),
        .s_axi_rlast(S01_AXI_rlast),
        .s_axi_rready(S01_AXI_rready),
        .s_axi_rresp(S01_AXI_rresp),
        .s_axi_rvalid(S01_AXI_rvalid),
        .s_axi_wdata(S01_AXI_wdata),
        .s_axi_wlast(S01_AXI_wlast),
        .s_axi_wready(S01_AXI_wready),
        .s_axi_wstrb(S01_AXI_wstrb),
        .s_axi_wvalid(S01_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S02_AXI_0 vip_s02_axi
       (.aclk(aclk),
        .aresetn(interconnect_aresetn1),
        .m_axi_araddr(vip_S02_AXI_M_AXI_ARADDR),
        .m_axi_arburst(vip_S02_AXI_M_AXI_ARBURST),
        .m_axi_arcache(vip_S02_AXI_M_AXI_ARCACHE),
        .m_axi_arid(vip_S02_AXI_M_AXI_ARID),
        .m_axi_arlen(vip_S02_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S02_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S02_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S02_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S02_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s02_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S02_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S02_AXI_M_AXI_AWADDR),
        .m_axi_awburst(vip_S02_AXI_M_AXI_AWBURST),
        .m_axi_awcache(vip_S02_AXI_M_AXI_AWCACHE),
        .m_axi_awid(vip_S02_AXI_M_AXI_AWID),
        .m_axi_awlen(vip_S02_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S02_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S02_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S02_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S02_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s02_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S02_AXI_M_AXI_AWVALID),
        .m_axi_bid(vip_S02_AXI_M_AXI_BID),
        .m_axi_bready(vip_S02_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S02_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S02_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S02_AXI_M_AXI_RDATA),
        .m_axi_rid(vip_S02_AXI_M_AXI_RID),
        .m_axi_rlast(vip_S02_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S02_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S02_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S02_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S02_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S02_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S02_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S02_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S02_AXI_M_AXI_WVALID),
        .s_axi_araddr(S02_AXI_araddr),
        .s_axi_arburst(S02_AXI_arburst),
        .s_axi_arcache(S02_AXI_arcache),
        .s_axi_arid(S02_AXI_arid),
        .s_axi_arlen(S02_AXI_arlen),
        .s_axi_arlock(S02_AXI_arlock),
        .s_axi_arprot(S02_AXI_arprot),
        .s_axi_arqos(S02_AXI_arqos),
        .s_axi_arready(S02_AXI_arready),
        .s_axi_arregion(S02_AXI_arregion),
        .s_axi_arvalid(S02_AXI_arvalid),
        .s_axi_awaddr(S02_AXI_awaddr),
        .s_axi_awburst(S02_AXI_awburst),
        .s_axi_awcache(S02_AXI_awcache),
        .s_axi_awid(S02_AXI_awid),
        .s_axi_awlen(S02_AXI_awlen),
        .s_axi_awlock(S02_AXI_awlock),
        .s_axi_awprot(S02_AXI_awprot),
        .s_axi_awqos(S02_AXI_awqos),
        .s_axi_awready(S02_AXI_awready),
        .s_axi_awregion(S02_AXI_awregion),
        .s_axi_awvalid(S02_AXI_awvalid),
        .s_axi_bid(S02_AXI_bid),
        .s_axi_bready(S02_AXI_bready),
        .s_axi_bresp(S02_AXI_bresp),
        .s_axi_bvalid(S02_AXI_bvalid),
        .s_axi_rdata(S02_AXI_rdata),
        .s_axi_rid(S02_AXI_rid),
        .s_axi_rlast(S02_AXI_rlast),
        .s_axi_rready(S02_AXI_rready),
        .s_axi_rresp(S02_AXI_rresp),
        .s_axi_rvalid(S02_AXI_rvalid),
        .s_axi_wdata(S02_AXI_wdata),
        .s_axi_wlast(S02_AXI_wlast),
        .s_axi_wready(S02_AXI_wready),
        .s_axi_wstrb(S02_AXI_wstrb),
        .s_axi_wvalid(S02_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S03_AXI_0 vip_s03_axi
       (.aclk(aclk),
        .aresetn(interconnect_aresetn2),
        .m_axi_araddr(vip_S03_AXI_M_AXI_ARADDR),
        .m_axi_arburst(vip_S03_AXI_M_AXI_ARBURST),
        .m_axi_arcache(vip_S03_AXI_M_AXI_ARCACHE),
        .m_axi_arid(vip_S03_AXI_M_AXI_ARID),
        .m_axi_arlen(vip_S03_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S03_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S03_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S03_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S03_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s03_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S03_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S03_AXI_M_AXI_AWADDR),
        .m_axi_awburst(vip_S03_AXI_M_AXI_AWBURST),
        .m_axi_awcache(vip_S03_AXI_M_AXI_AWCACHE),
        .m_axi_awid(vip_S03_AXI_M_AXI_AWID),
        .m_axi_awlen(vip_S03_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S03_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S03_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S03_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S03_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s03_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S03_AXI_M_AXI_AWVALID),
        .m_axi_bid(vip_S03_AXI_M_AXI_BID),
        .m_axi_bready(vip_S03_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S03_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S03_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S03_AXI_M_AXI_RDATA),
        .m_axi_rid(vip_S03_AXI_M_AXI_RID),
        .m_axi_rlast(vip_S03_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S03_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S03_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S03_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S03_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S03_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S03_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S03_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S03_AXI_M_AXI_WVALID),
        .s_axi_araddr(S03_AXI_araddr),
        .s_axi_arburst(S03_AXI_arburst),
        .s_axi_arcache(S03_AXI_arcache),
        .s_axi_arid(S03_AXI_arid),
        .s_axi_arlen(S03_AXI_arlen),
        .s_axi_arlock(S03_AXI_arlock),
        .s_axi_arprot(S03_AXI_arprot),
        .s_axi_arqos(S03_AXI_arqos),
        .s_axi_arready(S03_AXI_arready),
        .s_axi_arregion(S03_AXI_arregion),
        .s_axi_arvalid(S03_AXI_arvalid),
        .s_axi_awaddr(S03_AXI_awaddr),
        .s_axi_awburst(S03_AXI_awburst),
        .s_axi_awcache(S03_AXI_awcache),
        .s_axi_awid(S03_AXI_awid),
        .s_axi_awlen(S03_AXI_awlen),
        .s_axi_awlock(S03_AXI_awlock),
        .s_axi_awprot(S03_AXI_awprot),
        .s_axi_awqos(S03_AXI_awqos),
        .s_axi_awready(S03_AXI_awready),
        .s_axi_awregion(S03_AXI_awregion),
        .s_axi_awvalid(S03_AXI_awvalid),
        .s_axi_bid(S03_AXI_bid),
        .s_axi_bready(S03_AXI_bready),
        .s_axi_bresp(S03_AXI_bresp),
        .s_axi_bvalid(S03_AXI_bvalid),
        .s_axi_rdata(S03_AXI_rdata),
        .s_axi_rid(S03_AXI_rid),
        .s_axi_rlast(S03_AXI_rlast),
        .s_axi_rready(S03_AXI_rready),
        .s_axi_rresp(S03_AXI_rresp),
        .s_axi_rvalid(S03_AXI_rvalid),
        .s_axi_wdata(S03_AXI_wdata),
        .s_axi_wlast(S03_AXI_wlast),
        .s_axi_wready(S03_AXI_wready),
        .s_axi_wstrb(S03_AXI_wstrb),
        .s_axi_wvalid(S03_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S04_AXI_0 vip_s04_axi
       (.aclk(aclk),
        .aresetn(interconnect_aresetn),
        .m_axi_araddr(vip_S04_AXI_M_AXI_ARADDR),
        .m_axi_arcache(vip_S04_AXI_M_AXI_ARCACHE),
        .m_axi_arlen(vip_S04_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S04_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S04_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S04_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S04_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s04_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S04_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S04_AXI_M_AXI_AWADDR),
        .m_axi_awcache(vip_S04_AXI_M_AXI_AWCACHE),
        .m_axi_awlen(vip_S04_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S04_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S04_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S04_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S04_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s04_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S04_AXI_M_AXI_AWVALID),
        .m_axi_bready(vip_S04_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S04_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S04_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S04_AXI_M_AXI_RDATA),
        .m_axi_rlast(vip_S04_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S04_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S04_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S04_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S04_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S04_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S04_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S04_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S04_AXI_M_AXI_WVALID),
        .s_axi_araddr(S04_AXI_araddr),
        .s_axi_arcache(S04_AXI_arcache),
        .s_axi_arlen(S04_AXI_arlen),
        .s_axi_arlock(S04_AXI_arlock),
        .s_axi_arprot(S04_AXI_arprot),
        .s_axi_arqos(S04_AXI_arqos),
        .s_axi_arready(S04_AXI_arready),
        .s_axi_arregion(S04_AXI_arregion),
        .s_axi_arvalid(S04_AXI_arvalid),
        .s_axi_awaddr(S04_AXI_awaddr),
        .s_axi_awcache(S04_AXI_awcache),
        .s_axi_awlen(S04_AXI_awlen),
        .s_axi_awlock(S04_AXI_awlock),
        .s_axi_awprot(S04_AXI_awprot),
        .s_axi_awqos(S04_AXI_awqos),
        .s_axi_awready(S04_AXI_awready),
        .s_axi_awregion(S04_AXI_awregion),
        .s_axi_awvalid(S04_AXI_awvalid),
        .s_axi_bready(S04_AXI_bready),
        .s_axi_bresp(S04_AXI_bresp),
        .s_axi_bvalid(S04_AXI_bvalid),
        .s_axi_rdata(S04_AXI_rdata),
        .s_axi_rlast(S04_AXI_rlast),
        .s_axi_rready(S04_AXI_rready),
        .s_axi_rresp(S04_AXI_rresp),
        .s_axi_rvalid(S04_AXI_rvalid),
        .s_axi_wdata(S04_AXI_wdata),
        .s_axi_wlast(S04_AXI_wlast),
        .s_axi_wready(S04_AXI_wready),
        .s_axi_wstrb(S04_AXI_wstrb),
        .s_axi_wvalid(S04_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S05_AXI_0 vip_s05_axi
       (.aclk(aclk),
        .aresetn(interconnect_aresetn1),
        .m_axi_araddr(vip_S05_AXI_M_AXI_ARADDR),
        .m_axi_arcache(vip_S05_AXI_M_AXI_ARCACHE),
        .m_axi_arlen(vip_S05_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S05_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S05_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S05_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S05_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s05_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S05_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S05_AXI_M_AXI_AWADDR),
        .m_axi_awcache(vip_S05_AXI_M_AXI_AWCACHE),
        .m_axi_awlen(vip_S05_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S05_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S05_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S05_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S05_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s05_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S05_AXI_M_AXI_AWVALID),
        .m_axi_bready(vip_S05_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S05_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S05_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S05_AXI_M_AXI_RDATA),
        .m_axi_rlast(vip_S05_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S05_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S05_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S05_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S05_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S05_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S05_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S05_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S05_AXI_M_AXI_WVALID),
        .s_axi_araddr(S05_AXI_araddr),
        .s_axi_arcache(S05_AXI_arcache),
        .s_axi_arlen(S05_AXI_arlen),
        .s_axi_arlock(S05_AXI_arlock),
        .s_axi_arprot(S05_AXI_arprot),
        .s_axi_arqos(S05_AXI_arqos),
        .s_axi_arready(S05_AXI_arready),
        .s_axi_arregion(S05_AXI_arregion),
        .s_axi_arvalid(S05_AXI_arvalid),
        .s_axi_awaddr(S05_AXI_awaddr),
        .s_axi_awcache(S05_AXI_awcache),
        .s_axi_awlen(S05_AXI_awlen),
        .s_axi_awlock(S05_AXI_awlock),
        .s_axi_awprot(S05_AXI_awprot),
        .s_axi_awqos(S05_AXI_awqos),
        .s_axi_awready(S05_AXI_awready),
        .s_axi_awregion(S05_AXI_awregion),
        .s_axi_awvalid(S05_AXI_awvalid),
        .s_axi_bready(S05_AXI_bready),
        .s_axi_bresp(S05_AXI_bresp),
        .s_axi_bvalid(S05_AXI_bvalid),
        .s_axi_rdata(S05_AXI_rdata),
        .s_axi_rlast(S05_AXI_rlast),
        .s_axi_rready(S05_AXI_rready),
        .s_axi_rresp(S05_AXI_rresp),
        .s_axi_rvalid(S05_AXI_rvalid),
        .s_axi_wdata(S05_AXI_wdata),
        .s_axi_wlast(S05_AXI_wlast),
        .s_axi_wready(S05_AXI_wready),
        .s_axi_wstrb(S05_AXI_wstrb),
        .s_axi_wvalid(S05_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S06_AXI_0 vip_s06_axi
       (.aclk(aclk),
        .aresetn(interconnect_aresetn1),
        .m_axi_araddr(vip_S06_AXI_M_AXI_ARADDR),
        .m_axi_arcache(vip_S06_AXI_M_AXI_ARCACHE),
        .m_axi_arlen(vip_S06_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S06_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S06_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S06_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S06_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s06_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S06_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S06_AXI_M_AXI_AWADDR),
        .m_axi_awcache(vip_S06_AXI_M_AXI_AWCACHE),
        .m_axi_awlen(vip_S06_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S06_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S06_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S06_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S06_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s06_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S06_AXI_M_AXI_AWVALID),
        .m_axi_bready(vip_S06_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S06_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S06_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S06_AXI_M_AXI_RDATA),
        .m_axi_rlast(vip_S06_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S06_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S06_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S06_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S06_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S06_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S06_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S06_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S06_AXI_M_AXI_WVALID),
        .s_axi_araddr(S06_AXI_araddr),
        .s_axi_arcache(S06_AXI_arcache),
        .s_axi_arlen(S06_AXI_arlen),
        .s_axi_arlock(S06_AXI_arlock),
        .s_axi_arprot(S06_AXI_arprot),
        .s_axi_arqos(S06_AXI_arqos),
        .s_axi_arready(S06_AXI_arready),
        .s_axi_arregion(S06_AXI_arregion),
        .s_axi_arvalid(S06_AXI_arvalid),
        .s_axi_awaddr(S06_AXI_awaddr),
        .s_axi_awcache(S06_AXI_awcache),
        .s_axi_awlen(S06_AXI_awlen),
        .s_axi_awlock(S06_AXI_awlock),
        .s_axi_awprot(S06_AXI_awprot),
        .s_axi_awqos(S06_AXI_awqos),
        .s_axi_awready(S06_AXI_awready),
        .s_axi_awregion(S06_AXI_awregion),
        .s_axi_awvalid(S06_AXI_awvalid),
        .s_axi_bready(S06_AXI_bready),
        .s_axi_bresp(S06_AXI_bresp),
        .s_axi_bvalid(S06_AXI_bvalid),
        .s_axi_rdata(S06_AXI_rdata),
        .s_axi_rlast(S06_AXI_rlast),
        .s_axi_rready(S06_AXI_rready),
        .s_axi_rresp(S06_AXI_rresp),
        .s_axi_rvalid(S06_AXI_rvalid),
        .s_axi_wdata(S06_AXI_wdata),
        .s_axi_wlast(S06_AXI_wlast),
        .s_axi_wready(S06_AXI_wready),
        .s_axi_wstrb(S06_AXI_wstrb),
        .s_axi_wvalid(S06_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_S07_AXI_0 vip_s07_axi
       (.aclk(aclk),
        .aresetn(interconnect_aresetn2),
        .m_axi_araddr(vip_S07_AXI_M_AXI_ARADDR),
        .m_axi_arcache(vip_S07_AXI_M_AXI_ARCACHE),
        .m_axi_arlen(vip_S07_AXI_M_AXI_ARLEN),
        .m_axi_arlock(vip_S07_AXI_M_AXI_ARLOCK),
        .m_axi_arprot(vip_S07_AXI_M_AXI_ARPROT),
        .m_axi_arqos(vip_S07_AXI_M_AXI_ARQOS),
        .m_axi_arready(vip_S07_AXI_M_AXI_ARREADY),
        .m_axi_arregion(NLW_vip_s07_axi_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arvalid(vip_S07_AXI_M_AXI_ARVALID),
        .m_axi_awaddr(vip_S07_AXI_M_AXI_AWADDR),
        .m_axi_awcache(vip_S07_AXI_M_AXI_AWCACHE),
        .m_axi_awlen(vip_S07_AXI_M_AXI_AWLEN),
        .m_axi_awlock(vip_S07_AXI_M_AXI_AWLOCK),
        .m_axi_awprot(vip_S07_AXI_M_AXI_AWPROT),
        .m_axi_awqos(vip_S07_AXI_M_AXI_AWQOS),
        .m_axi_awready(vip_S07_AXI_M_AXI_AWREADY),
        .m_axi_awregion(NLW_vip_s07_axi_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awvalid(vip_S07_AXI_M_AXI_AWVALID),
        .m_axi_bready(vip_S07_AXI_M_AXI_BREADY),
        .m_axi_bresp(vip_S07_AXI_M_AXI_BRESP),
        .m_axi_bvalid(vip_S07_AXI_M_AXI_BVALID),
        .m_axi_rdata(vip_S07_AXI_M_AXI_RDATA),
        .m_axi_rlast(vip_S07_AXI_M_AXI_RLAST),
        .m_axi_rready(vip_S07_AXI_M_AXI_RREADY),
        .m_axi_rresp(vip_S07_AXI_M_AXI_RRESP),
        .m_axi_rvalid(vip_S07_AXI_M_AXI_RVALID),
        .m_axi_wdata(vip_S07_AXI_M_AXI_WDATA),
        .m_axi_wlast(vip_S07_AXI_M_AXI_WLAST),
        .m_axi_wready(vip_S07_AXI_M_AXI_WREADY),
        .m_axi_wstrb(vip_S07_AXI_M_AXI_WSTRB),
        .m_axi_wvalid(vip_S07_AXI_M_AXI_WVALID),
        .s_axi_araddr(S07_AXI_araddr),
        .s_axi_arcache(S07_AXI_arcache),
        .s_axi_arlen(S07_AXI_arlen),
        .s_axi_arlock(S07_AXI_arlock),
        .s_axi_arprot(S07_AXI_arprot),
        .s_axi_arqos(S07_AXI_arqos),
        .s_axi_arready(S07_AXI_arready),
        .s_axi_arregion(S07_AXI_arregion),
        .s_axi_arvalid(S07_AXI_arvalid),
        .s_axi_awaddr(S07_AXI_awaddr),
        .s_axi_awcache(S07_AXI_awcache),
        .s_axi_awlen(S07_AXI_awlen),
        .s_axi_awlock(S07_AXI_awlock),
        .s_axi_awprot(S07_AXI_awprot),
        .s_axi_awqos(S07_AXI_awqos),
        .s_axi_awready(S07_AXI_awready),
        .s_axi_awregion(S07_AXI_awregion),
        .s_axi_awvalid(S07_AXI_awvalid),
        .s_axi_bready(S07_AXI_bready),
        .s_axi_bresp(S07_AXI_bresp),
        .s_axi_bvalid(S07_AXI_bvalid),
        .s_axi_rdata(S07_AXI_rdata),
        .s_axi_rlast(S07_AXI_rlast),
        .s_axi_rready(S07_AXI_rready),
        .s_axi_rresp(S07_AXI_rresp),
        .s_axi_rvalid(S07_AXI_rvalid),
        .s_axi_wdata(S07_AXI_wdata),
        .s_axi_wlast(S07_AXI_wlast),
        .s_axi_wready(S07_AXI_wready),
        .s_axi_wstrb(S07_AXI_wstrb),
        .s_axi_wvalid(S07_AXI_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_memory_imp_1K98CM8
   (ddr4_mem_calib_vec,
    ddr4_mem_calib_complete,
    DDR4_MEM00_act_n,
    DDR4_MEM00_adr,
    DDR4_MEM00_ba,
    DDR4_MEM00_bg,
    DDR4_MEM00_cke,
    DDR4_MEM00_odt,
    DDR4_MEM00_cs_n,
    DDR4_MEM00_ck_t,
    DDR4_MEM00_ck_c,
    DDR4_MEM00_reset_n,
    DDR4_MEM00_par,
    ddr4_mem00_ui_clk,
    DDR4_MEM01_act_n,
    DDR4_MEM01_adr,
    DDR4_MEM01_ba,
    DDR4_MEM01_bg,
    DDR4_MEM01_cke,
    DDR4_MEM01_odt,
    DDR4_MEM01_cs_n,
    DDR4_MEM01_ck_t,
    DDR4_MEM01_ck_c,
    DDR4_MEM01_reset_n,
    DDR4_MEM01_par,
    ddr4_mem01_ui_clk,
    DDR4_MEM02_act_n,
    DDR4_MEM02_adr,
    DDR4_MEM02_ba,
    DDR4_MEM02_bg,
    DDR4_MEM02_cke,
    DDR4_MEM02_odt,
    DDR4_MEM02_cs_n,
    DDR4_MEM02_ck_t,
    DDR4_MEM02_ck_c,
    DDR4_MEM02_reset_n,
    DDR4_MEM02_par,
    ddr4_mem02_ui_clk,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_awready,
    S_AXI_wready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_arready,
    S_AXI_rdata,
    S_AXI_rresp,
    S_AXI_rlast,
    S_AXI_rvalid,
    S_AXI1_awready,
    S_AXI1_wready,
    S_AXI1_bresp,
    S_AXI1_bvalid,
    S_AXI1_arready,
    S_AXI1_rdata,
    S_AXI1_rresp,
    S_AXI1_rlast,
    S_AXI1_rvalid,
    S_AXI2_awready,
    S_AXI2_wready,
    S_AXI2_bresp,
    S_AXI2_bvalid,
    S_AXI2_arready,
    S_AXI2_rdata,
    S_AXI2_rresp,
    S_AXI2_rlast,
    S_AXI2_rvalid,
    DDR4_MEM00_dq,
    DDR4_MEM00_dqs_c,
    DDR4_MEM00_dqs_t,
    DDR4_MEM01_dq,
    DDR4_MEM01_dqs_c,
    DDR4_MEM01_dqs_t,
    DDR4_MEM02_dq,
    DDR4_MEM02_dqs_c,
    DDR4_MEM02_dqs_t,
    ddr4_mem00_sys_rst,
    DDR4_MEM00_DIFF_CLK_clk_p,
    DDR4_MEM00_DIFF_CLK_clk_n,
    aclk1,
    ddr4_mem01_sys_rst,
    DDR4_MEM01_DIFF_CLK_clk_p,
    DDR4_MEM01_DIFF_CLK_clk_n,
    ddr4_mem02_sys_rst,
    DDR4_MEM02_DIFF_CLK_clk_p,
    DDR4_MEM02_DIFF_CLK_clk_n,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awprot,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wstrb,
    S_AXI_CTRL_wvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arprot,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_rready,
    aresetn,
    S_AXI_awaddr,
    S_AXI_awlen,
    S_AXI_awburst,
    S_AXI_awlock,
    S_AXI_awcache,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awvalid,
    S_AXI_wdata,
    S_AXI_wstrb,
    S_AXI_wlast,
    S_AXI_wvalid,
    S_AXI_bready,
    S_AXI_araddr,
    S_AXI_arlen,
    S_AXI_arburst,
    S_AXI_arlock,
    S_AXI_arcache,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arvalid,
    S_AXI_rready,
    S_AXI1_awaddr,
    S_AXI1_awlen,
    S_AXI1_awburst,
    S_AXI1_awlock,
    S_AXI1_awcache,
    S_AXI1_awprot,
    S_AXI1_awqos,
    S_AXI1_awvalid,
    S_AXI1_wdata,
    S_AXI1_wstrb,
    S_AXI1_wlast,
    S_AXI1_wvalid,
    S_AXI1_bready,
    S_AXI1_araddr,
    S_AXI1_arlen,
    S_AXI1_arburst,
    S_AXI1_arlock,
    S_AXI1_arcache,
    S_AXI1_arprot,
    S_AXI1_arqos,
    S_AXI1_arvalid,
    S_AXI1_rready,
    S_AXI2_awaddr,
    S_AXI2_awlen,
    S_AXI2_awburst,
    S_AXI2_awlock,
    S_AXI2_awcache,
    S_AXI2_awprot,
    S_AXI2_awqos,
    S_AXI2_awvalid,
    S_AXI2_wdata,
    S_AXI2_wstrb,
    S_AXI2_wlast,
    S_AXI2_wvalid,
    S_AXI2_bready,
    S_AXI2_araddr,
    S_AXI2_arlen,
    S_AXI2_arburst,
    S_AXI2_arlock,
    S_AXI2_arcache,
    S_AXI2_arprot,
    S_AXI2_arqos,
    S_AXI2_arvalid,
    S_AXI2_rready);
  output [2:0]ddr4_mem_calib_vec;
  output ddr4_mem_calib_complete;
  output DDR4_MEM00_act_n;
  output [16:0]DDR4_MEM00_adr;
  output [1:0]DDR4_MEM00_ba;
  output [1:0]DDR4_MEM00_bg;
  output [0:0]DDR4_MEM00_cke;
  output [0:0]DDR4_MEM00_odt;
  output [0:0]DDR4_MEM00_cs_n;
  output [0:0]DDR4_MEM00_ck_t;
  output [0:0]DDR4_MEM00_ck_c;
  output DDR4_MEM00_reset_n;
  output DDR4_MEM00_par;
  output ddr4_mem00_ui_clk;
  output DDR4_MEM01_act_n;
  output [16:0]DDR4_MEM01_adr;
  output [1:0]DDR4_MEM01_ba;
  output [1:0]DDR4_MEM01_bg;
  output [0:0]DDR4_MEM01_cke;
  output [0:0]DDR4_MEM01_odt;
  output [0:0]DDR4_MEM01_cs_n;
  output [0:0]DDR4_MEM01_ck_t;
  output [0:0]DDR4_MEM01_ck_c;
  output DDR4_MEM01_reset_n;
  output DDR4_MEM01_par;
  output ddr4_mem01_ui_clk;
  output DDR4_MEM02_act_n;
  output [16:0]DDR4_MEM02_adr;
  output [1:0]DDR4_MEM02_ba;
  output [1:0]DDR4_MEM02_bg;
  output [0:0]DDR4_MEM02_cke;
  output [0:0]DDR4_MEM02_odt;
  output [0:0]DDR4_MEM02_cs_n;
  output [0:0]DDR4_MEM02_ck_t;
  output [0:0]DDR4_MEM02_ck_c;
  output DDR4_MEM02_reset_n;
  output DDR4_MEM02_par;
  output ddr4_mem02_ui_clk;
  output [0:0]S_AXI_CTRL_awready;
  output [0:0]S_AXI_CTRL_wready;
  output [1:0]S_AXI_CTRL_bresp;
  output [0:0]S_AXI_CTRL_bvalid;
  output [0:0]S_AXI_CTRL_arready;
  output [31:0]S_AXI_CTRL_rdata;
  output [1:0]S_AXI_CTRL_rresp;
  output [0:0]S_AXI_CTRL_rvalid;
  output S_AXI_awready;
  output S_AXI_wready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output S_AXI_arready;
  output [511:0]S_AXI_rdata;
  output [1:0]S_AXI_rresp;
  output S_AXI_rlast;
  output S_AXI_rvalid;
  output S_AXI1_awready;
  output S_AXI1_wready;
  output [1:0]S_AXI1_bresp;
  output S_AXI1_bvalid;
  output S_AXI1_arready;
  output [511:0]S_AXI1_rdata;
  output [1:0]S_AXI1_rresp;
  output S_AXI1_rlast;
  output S_AXI1_rvalid;
  output S_AXI2_awready;
  output S_AXI2_wready;
  output [1:0]S_AXI2_bresp;
  output S_AXI2_bvalid;
  output S_AXI2_arready;
  output [511:0]S_AXI2_rdata;
  output [1:0]S_AXI2_rresp;
  output S_AXI2_rlast;
  output S_AXI2_rvalid;
  inout [71:0]DDR4_MEM00_dq;
  inout [17:0]DDR4_MEM00_dqs_c;
  inout [17:0]DDR4_MEM00_dqs_t;
  inout [71:0]DDR4_MEM01_dq;
  inout [17:0]DDR4_MEM01_dqs_c;
  inout [17:0]DDR4_MEM01_dqs_t;
  inout [71:0]DDR4_MEM02_dq;
  inout [17:0]DDR4_MEM02_dqs_c;
  inout [17:0]DDR4_MEM02_dqs_t;
  input ddr4_mem00_sys_rst;
  input DDR4_MEM00_DIFF_CLK_clk_p;
  input DDR4_MEM00_DIFF_CLK_clk_n;
  input aclk1;
  input ddr4_mem01_sys_rst;
  input DDR4_MEM01_DIFF_CLK_clk_p;
  input DDR4_MEM01_DIFF_CLK_clk_n;
  input ddr4_mem02_sys_rst;
  input DDR4_MEM02_DIFF_CLK_clk_p;
  input DDR4_MEM02_DIFF_CLK_clk_n;
  input [24:0]S_AXI_CTRL_awaddr;
  input [2:0]S_AXI_CTRL_awprot;
  input [0:0]S_AXI_CTRL_awvalid;
  input [31:0]S_AXI_CTRL_wdata;
  input [3:0]S_AXI_CTRL_wstrb;
  input [0:0]S_AXI_CTRL_wvalid;
  input [0:0]S_AXI_CTRL_bready;
  input [24:0]S_AXI_CTRL_araddr;
  input [2:0]S_AXI_CTRL_arprot;
  input [0:0]S_AXI_CTRL_arvalid;
  input [0:0]S_AXI_CTRL_rready;
  input aresetn;
  input [33:0]S_AXI_awaddr;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awburst;
  input [0:0]S_AXI_awlock;
  input [3:0]S_AXI_awcache;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  input S_AXI_awvalid;
  input [511:0]S_AXI_wdata;
  input [63:0]S_AXI_wstrb;
  input S_AXI_wlast;
  input S_AXI_wvalid;
  input S_AXI_bready;
  input [33:0]S_AXI_araddr;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arburst;
  input [0:0]S_AXI_arlock;
  input [3:0]S_AXI_arcache;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  input S_AXI_arvalid;
  input S_AXI_rready;
  input [33:0]S_AXI1_awaddr;
  input [7:0]S_AXI1_awlen;
  input [1:0]S_AXI1_awburst;
  input [0:0]S_AXI1_awlock;
  input [3:0]S_AXI1_awcache;
  input [2:0]S_AXI1_awprot;
  input [3:0]S_AXI1_awqos;
  input S_AXI1_awvalid;
  input [511:0]S_AXI1_wdata;
  input [63:0]S_AXI1_wstrb;
  input S_AXI1_wlast;
  input S_AXI1_wvalid;
  input S_AXI1_bready;
  input [33:0]S_AXI1_araddr;
  input [7:0]S_AXI1_arlen;
  input [1:0]S_AXI1_arburst;
  input [0:0]S_AXI1_arlock;
  input [3:0]S_AXI1_arcache;
  input [2:0]S_AXI1_arprot;
  input [3:0]S_AXI1_arqos;
  input S_AXI1_arvalid;
  input S_AXI1_rready;
  input [33:0]S_AXI2_awaddr;
  input [7:0]S_AXI2_awlen;
  input [1:0]S_AXI2_awburst;
  input [0:0]S_AXI2_awlock;
  input [3:0]S_AXI2_awcache;
  input [2:0]S_AXI2_awprot;
  input [3:0]S_AXI2_awqos;
  input S_AXI2_awvalid;
  input [511:0]S_AXI2_wdata;
  input [63:0]S_AXI2_wstrb;
  input S_AXI2_wlast;
  input S_AXI2_wvalid;
  input S_AXI2_bready;
  input [33:0]S_AXI2_araddr;
  input [7:0]S_AXI2_arlen;
  input [1:0]S_AXI2_arburst;
  input [0:0]S_AXI2_arlock;
  input [3:0]S_AXI2_arcache;
  input [2:0]S_AXI2_arprot;
  input [3:0]S_AXI2_arqos;
  input S_AXI2_arvalid;
  input S_AXI2_rready;

  wire DDR4_MEM00_DIFF_CLK_clk_n;
  wire DDR4_MEM00_DIFF_CLK_clk_p;
  wire DDR4_MEM00_act_n;
  wire [16:0]DDR4_MEM00_adr;
  wire [1:0]DDR4_MEM00_ba;
  wire [1:0]DDR4_MEM00_bg;
  wire [0:0]DDR4_MEM00_ck_c;
  wire [0:0]DDR4_MEM00_ck_t;
  wire [0:0]DDR4_MEM00_cke;
  wire [0:0]DDR4_MEM00_cs_n;
  wire [71:0]DDR4_MEM00_dq;
  wire [17:0]DDR4_MEM00_dqs_c;
  wire [17:0]DDR4_MEM00_dqs_t;
  wire [0:0]DDR4_MEM00_odt;
  wire DDR4_MEM00_par;
  wire DDR4_MEM00_reset_n;
  wire DDR4_MEM01_DIFF_CLK_clk_n;
  wire DDR4_MEM01_DIFF_CLK_clk_p;
  wire DDR4_MEM01_act_n;
  wire [16:0]DDR4_MEM01_adr;
  wire [1:0]DDR4_MEM01_ba;
  wire [1:0]DDR4_MEM01_bg;
  wire [0:0]DDR4_MEM01_ck_c;
  wire [0:0]DDR4_MEM01_ck_t;
  wire [0:0]DDR4_MEM01_cke;
  wire [0:0]DDR4_MEM01_cs_n;
  wire [71:0]DDR4_MEM01_dq;
  wire [17:0]DDR4_MEM01_dqs_c;
  wire [17:0]DDR4_MEM01_dqs_t;
  wire [0:0]DDR4_MEM01_odt;
  wire DDR4_MEM01_par;
  wire DDR4_MEM01_reset_n;
  wire DDR4_MEM02_DIFF_CLK_clk_n;
  wire DDR4_MEM02_DIFF_CLK_clk_p;
  wire DDR4_MEM02_act_n;
  wire [16:0]DDR4_MEM02_adr;
  wire [1:0]DDR4_MEM02_ba;
  wire [1:0]DDR4_MEM02_bg;
  wire [0:0]DDR4_MEM02_ck_c;
  wire [0:0]DDR4_MEM02_ck_t;
  wire [0:0]DDR4_MEM02_cke;
  wire [0:0]DDR4_MEM02_cs_n;
  wire [71:0]DDR4_MEM02_dq;
  wire [17:0]DDR4_MEM02_dqs_c;
  wire [17:0]DDR4_MEM02_dqs_t;
  wire [0:0]DDR4_MEM02_odt;
  wire DDR4_MEM02_par;
  wire DDR4_MEM02_reset_n;
  wire [33:0]S_AXI1_araddr;
  wire [1:0]S_AXI1_arburst;
  wire [3:0]S_AXI1_arcache;
  wire [7:0]S_AXI1_arlen;
  wire [0:0]S_AXI1_arlock;
  wire [2:0]S_AXI1_arprot;
  wire [3:0]S_AXI1_arqos;
  wire S_AXI1_arready;
  wire S_AXI1_arvalid;
  wire [33:0]S_AXI1_awaddr;
  wire [1:0]S_AXI1_awburst;
  wire [3:0]S_AXI1_awcache;
  wire [7:0]S_AXI1_awlen;
  wire [0:0]S_AXI1_awlock;
  wire [2:0]S_AXI1_awprot;
  wire [3:0]S_AXI1_awqos;
  wire S_AXI1_awready;
  wire S_AXI1_awvalid;
  wire S_AXI1_bready;
  wire [1:0]S_AXI1_bresp;
  wire S_AXI1_bvalid;
  wire [511:0]S_AXI1_rdata;
  wire S_AXI1_rlast;
  wire S_AXI1_rready;
  wire [1:0]S_AXI1_rresp;
  wire S_AXI1_rvalid;
  wire [511:0]S_AXI1_wdata;
  wire S_AXI1_wlast;
  wire S_AXI1_wready;
  wire [63:0]S_AXI1_wstrb;
  wire S_AXI1_wvalid;
  wire [33:0]S_AXI2_araddr;
  wire [1:0]S_AXI2_arburst;
  wire [3:0]S_AXI2_arcache;
  wire [7:0]S_AXI2_arlen;
  wire [0:0]S_AXI2_arlock;
  wire [2:0]S_AXI2_arprot;
  wire [3:0]S_AXI2_arqos;
  wire S_AXI2_arready;
  wire S_AXI2_arvalid;
  wire [33:0]S_AXI2_awaddr;
  wire [1:0]S_AXI2_awburst;
  wire [3:0]S_AXI2_awcache;
  wire [7:0]S_AXI2_awlen;
  wire [0:0]S_AXI2_awlock;
  wire [2:0]S_AXI2_awprot;
  wire [3:0]S_AXI2_awqos;
  wire S_AXI2_awready;
  wire S_AXI2_awvalid;
  wire S_AXI2_bready;
  wire [1:0]S_AXI2_bresp;
  wire S_AXI2_bvalid;
  wire [511:0]S_AXI2_rdata;
  wire S_AXI2_rlast;
  wire S_AXI2_rready;
  wire [1:0]S_AXI2_rresp;
  wire S_AXI2_rvalid;
  wire [511:0]S_AXI2_wdata;
  wire S_AXI2_wlast;
  wire S_AXI2_wready;
  wire [63:0]S_AXI2_wstrb;
  wire S_AXI2_wvalid;
  wire [24:0]S_AXI_CTRL_araddr;
  wire [2:0]S_AXI_CTRL_arprot;
  wire [0:0]S_AXI_CTRL_arready;
  wire [0:0]S_AXI_CTRL_arvalid;
  wire [24:0]S_AXI_CTRL_awaddr;
  wire [2:0]S_AXI_CTRL_awprot;
  wire [0:0]S_AXI_CTRL_awready;
  wire [0:0]S_AXI_CTRL_awvalid;
  wire [0:0]S_AXI_CTRL_bready;
  wire [1:0]S_AXI_CTRL_bresp;
  wire [0:0]S_AXI_CTRL_bvalid;
  wire [31:0]S_AXI_CTRL_rdata;
  wire [0:0]S_AXI_CTRL_rready;
  wire [1:0]S_AXI_CTRL_rresp;
  wire [0:0]S_AXI_CTRL_rvalid;
  wire [31:0]S_AXI_CTRL_wdata;
  wire [0:0]S_AXI_CTRL_wready;
  wire [3:0]S_AXI_CTRL_wstrb;
  wire [0:0]S_AXI_CTRL_wvalid;
  wire [33:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [7:0]S_AXI_arlen;
  wire [0:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire [3:0]S_AXI_arqos;
  wire S_AXI_arready;
  wire S_AXI_arvalid;
  wire [33:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [7:0]S_AXI_awlen;
  wire [0:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire [3:0]S_AXI_awqos;
  wire S_AXI_awready;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [511:0]S_AXI_rdata;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [511:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [63:0]S_AXI_wstrb;
  wire S_AXI_wvalid;
  wire aclk1;
  wire aresetn;
  wire [2:0]calib_concat_dout;
  wire ddr4_mem00_c0_ddr4_ui_clk;
  wire ddr4_mem00_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_mem00_c0_init_calib_complete;
  wire [31:0]ddr4_mem00_ctrl_cc_M_AXI_ARADDR;
  wire ddr4_mem00_ctrl_cc_M_AXI_ARREADY;
  wire ddr4_mem00_ctrl_cc_M_AXI_ARVALID;
  wire [31:0]ddr4_mem00_ctrl_cc_M_AXI_AWADDR;
  wire ddr4_mem00_ctrl_cc_M_AXI_AWREADY;
  wire ddr4_mem00_ctrl_cc_M_AXI_AWVALID;
  wire ddr4_mem00_ctrl_cc_M_AXI_BREADY;
  wire [1:0]ddr4_mem00_ctrl_cc_M_AXI_BRESP;
  wire ddr4_mem00_ctrl_cc_M_AXI_BVALID;
  wire [31:0]ddr4_mem00_ctrl_cc_M_AXI_RDATA;
  wire ddr4_mem00_ctrl_cc_M_AXI_RREADY;
  wire [1:0]ddr4_mem00_ctrl_cc_M_AXI_RRESP;
  wire ddr4_mem00_ctrl_cc_M_AXI_RVALID;
  wire [31:0]ddr4_mem00_ctrl_cc_M_AXI_WDATA;
  wire ddr4_mem00_ctrl_cc_M_AXI_WREADY;
  wire ddr4_mem00_ctrl_cc_M_AXI_WVALID;
  wire ddr4_mem00_sys_rst;
  wire ddr4_mem00_ui_clk;
  wire ddr4_mem01_c0_ddr4_ui_clk;
  wire ddr4_mem01_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_mem01_c0_init_calib_complete;
  wire [31:0]ddr4_mem01_ctrl_cc_M_AXI_ARADDR;
  wire ddr4_mem01_ctrl_cc_M_AXI_ARREADY;
  wire ddr4_mem01_ctrl_cc_M_AXI_ARVALID;
  wire [31:0]ddr4_mem01_ctrl_cc_M_AXI_AWADDR;
  wire ddr4_mem01_ctrl_cc_M_AXI_AWREADY;
  wire ddr4_mem01_ctrl_cc_M_AXI_AWVALID;
  wire ddr4_mem01_ctrl_cc_M_AXI_BREADY;
  wire [1:0]ddr4_mem01_ctrl_cc_M_AXI_BRESP;
  wire ddr4_mem01_ctrl_cc_M_AXI_BVALID;
  wire [31:0]ddr4_mem01_ctrl_cc_M_AXI_RDATA;
  wire ddr4_mem01_ctrl_cc_M_AXI_RREADY;
  wire [1:0]ddr4_mem01_ctrl_cc_M_AXI_RRESP;
  wire ddr4_mem01_ctrl_cc_M_AXI_RVALID;
  wire [31:0]ddr4_mem01_ctrl_cc_M_AXI_WDATA;
  wire ddr4_mem01_ctrl_cc_M_AXI_WREADY;
  wire ddr4_mem01_ctrl_cc_M_AXI_WVALID;
  wire ddr4_mem01_sys_rst;
  wire ddr4_mem01_ui_clk;
  wire ddr4_mem02_c0_ddr4_ui_clk;
  wire ddr4_mem02_c0_ddr4_ui_clk_sync_rst;
  wire ddr4_mem02_c0_init_calib_complete;
  wire [31:0]ddr4_mem02_ctrl_cc_M_AXI_ARADDR;
  wire ddr4_mem02_ctrl_cc_M_AXI_ARREADY;
  wire ddr4_mem02_ctrl_cc_M_AXI_ARVALID;
  wire [31:0]ddr4_mem02_ctrl_cc_M_AXI_AWADDR;
  wire ddr4_mem02_ctrl_cc_M_AXI_AWREADY;
  wire ddr4_mem02_ctrl_cc_M_AXI_AWVALID;
  wire ddr4_mem02_ctrl_cc_M_AXI_BREADY;
  wire [1:0]ddr4_mem02_ctrl_cc_M_AXI_BRESP;
  wire ddr4_mem02_ctrl_cc_M_AXI_BVALID;
  wire [31:0]ddr4_mem02_ctrl_cc_M_AXI_RDATA;
  wire ddr4_mem02_ctrl_cc_M_AXI_RREADY;
  wire [1:0]ddr4_mem02_ctrl_cc_M_AXI_RRESP;
  wire ddr4_mem02_ctrl_cc_M_AXI_RVALID;
  wire [31:0]ddr4_mem02_ctrl_cc_M_AXI_WDATA;
  wire ddr4_mem02_ctrl_cc_M_AXI_WREADY;
  wire ddr4_mem02_ctrl_cc_M_AXI_WVALID;
  wire ddr4_mem02_sys_rst;
  wire ddr4_mem02_ui_clk;
  wire ddr4_mem_calib_complete;
  wire [2:0]ddr4_mem_calib_vec;
  wire [24:0]interconnect_ddrmem_ctrl_M00_AXI_ARADDR;
  wire [2:0]interconnect_ddrmem_ctrl_M00_AXI_ARPROT;
  wire interconnect_ddrmem_ctrl_M00_AXI_ARREADY;
  wire interconnect_ddrmem_ctrl_M00_AXI_ARVALID;
  wire [24:0]interconnect_ddrmem_ctrl_M00_AXI_AWADDR;
  wire [2:0]interconnect_ddrmem_ctrl_M00_AXI_AWPROT;
  wire interconnect_ddrmem_ctrl_M00_AXI_AWREADY;
  wire interconnect_ddrmem_ctrl_M00_AXI_AWVALID;
  wire interconnect_ddrmem_ctrl_M00_AXI_BREADY;
  wire [1:0]interconnect_ddrmem_ctrl_M00_AXI_BRESP;
  wire interconnect_ddrmem_ctrl_M00_AXI_BVALID;
  wire [31:0]interconnect_ddrmem_ctrl_M00_AXI_RDATA;
  wire interconnect_ddrmem_ctrl_M00_AXI_RREADY;
  wire [1:0]interconnect_ddrmem_ctrl_M00_AXI_RRESP;
  wire interconnect_ddrmem_ctrl_M00_AXI_RVALID;
  wire [31:0]interconnect_ddrmem_ctrl_M00_AXI_WDATA;
  wire interconnect_ddrmem_ctrl_M00_AXI_WREADY;
  wire [3:0]interconnect_ddrmem_ctrl_M00_AXI_WSTRB;
  wire interconnect_ddrmem_ctrl_M00_AXI_WVALID;
  wire [49:25]interconnect_ddrmem_ctrl_M01_AXI_ARADDR;
  wire [5:3]interconnect_ddrmem_ctrl_M01_AXI_ARPROT;
  wire interconnect_ddrmem_ctrl_M01_AXI_ARREADY;
  wire interconnect_ddrmem_ctrl_M01_AXI_ARVALID;
  wire [49:25]interconnect_ddrmem_ctrl_M01_AXI_AWADDR;
  wire [5:3]interconnect_ddrmem_ctrl_M01_AXI_AWPROT;
  wire interconnect_ddrmem_ctrl_M01_AXI_AWREADY;
  wire interconnect_ddrmem_ctrl_M01_AXI_AWVALID;
  wire interconnect_ddrmem_ctrl_M01_AXI_BREADY;
  wire [1:0]interconnect_ddrmem_ctrl_M01_AXI_BRESP;
  wire interconnect_ddrmem_ctrl_M01_AXI_BVALID;
  wire [31:0]interconnect_ddrmem_ctrl_M01_AXI_RDATA;
  wire interconnect_ddrmem_ctrl_M01_AXI_RREADY;
  wire [1:0]interconnect_ddrmem_ctrl_M01_AXI_RRESP;
  wire interconnect_ddrmem_ctrl_M01_AXI_RVALID;
  wire [63:32]interconnect_ddrmem_ctrl_M01_AXI_WDATA;
  wire interconnect_ddrmem_ctrl_M01_AXI_WREADY;
  wire [7:4]interconnect_ddrmem_ctrl_M01_AXI_WSTRB;
  wire interconnect_ddrmem_ctrl_M01_AXI_WVALID;
  wire [74:50]interconnect_ddrmem_ctrl_M02_AXI_ARADDR;
  wire [8:6]interconnect_ddrmem_ctrl_M02_AXI_ARPROT;
  wire interconnect_ddrmem_ctrl_M02_AXI_ARREADY;
  wire interconnect_ddrmem_ctrl_M02_AXI_ARVALID;
  wire [74:50]interconnect_ddrmem_ctrl_M02_AXI_AWADDR;
  wire [8:6]interconnect_ddrmem_ctrl_M02_AXI_AWPROT;
  wire interconnect_ddrmem_ctrl_M02_AXI_AWREADY;
  wire interconnect_ddrmem_ctrl_M02_AXI_AWVALID;
  wire interconnect_ddrmem_ctrl_M02_AXI_BREADY;
  wire [1:0]interconnect_ddrmem_ctrl_M02_AXI_BRESP;
  wire interconnect_ddrmem_ctrl_M02_AXI_BVALID;
  wire [31:0]interconnect_ddrmem_ctrl_M02_AXI_RDATA;
  wire interconnect_ddrmem_ctrl_M02_AXI_RREADY;
  wire [1:0]interconnect_ddrmem_ctrl_M02_AXI_RRESP;
  wire interconnect_ddrmem_ctrl_M02_AXI_RVALID;
  wire [95:64]interconnect_ddrmem_ctrl_M02_AXI_WDATA;
  wire interconnect_ddrmem_ctrl_M02_AXI_WREADY;
  wire [11:8]interconnect_ddrmem_ctrl_M02_AXI_WSTRB;
  wire interconnect_ddrmem_ctrl_M02_AXI_WVALID;
  wire psr_ctrl_interconnect_interconnect_aresetn;
  wire psr_ddr4_mem00_interconnect_aresetn;
  wire psr_ddr4_mem01_interconnect_aresetn;
  wire psr_ddr4_mem02_interconnect_aresetn;
  wire [33:0]vip_DDR4_MEM00_M_AXI_ARADDR;
  wire [1:0]vip_DDR4_MEM00_M_AXI_ARBURST;
  wire [3:0]vip_DDR4_MEM00_M_AXI_ARCACHE;
  wire [7:0]vip_DDR4_MEM00_M_AXI_ARLEN;
  wire vip_DDR4_MEM00_M_AXI_ARLOCK;
  wire [2:0]vip_DDR4_MEM00_M_AXI_ARPROT;
  wire [3:0]vip_DDR4_MEM00_M_AXI_ARQOS;
  wire vip_DDR4_MEM00_M_AXI_ARREADY;
  wire vip_DDR4_MEM00_M_AXI_ARVALID;
  wire [33:0]vip_DDR4_MEM00_M_AXI_AWADDR;
  wire [1:0]vip_DDR4_MEM00_M_AXI_AWBURST;
  wire [3:0]vip_DDR4_MEM00_M_AXI_AWCACHE;
  wire [7:0]vip_DDR4_MEM00_M_AXI_AWLEN;
  wire vip_DDR4_MEM00_M_AXI_AWLOCK;
  wire [2:0]vip_DDR4_MEM00_M_AXI_AWPROT;
  wire [3:0]vip_DDR4_MEM00_M_AXI_AWQOS;
  wire vip_DDR4_MEM00_M_AXI_AWREADY;
  wire vip_DDR4_MEM00_M_AXI_AWVALID;
  wire vip_DDR4_MEM00_M_AXI_BREADY;
  wire [1:0]vip_DDR4_MEM00_M_AXI_BRESP;
  wire vip_DDR4_MEM00_M_AXI_BVALID;
  wire [511:0]vip_DDR4_MEM00_M_AXI_RDATA;
  wire vip_DDR4_MEM00_M_AXI_RLAST;
  wire vip_DDR4_MEM00_M_AXI_RREADY;
  wire [1:0]vip_DDR4_MEM00_M_AXI_RRESP;
  wire vip_DDR4_MEM00_M_AXI_RVALID;
  wire [511:0]vip_DDR4_MEM00_M_AXI_WDATA;
  wire vip_DDR4_MEM00_M_AXI_WLAST;
  wire vip_DDR4_MEM00_M_AXI_WREADY;
  wire [63:0]vip_DDR4_MEM00_M_AXI_WSTRB;
  wire vip_DDR4_MEM00_M_AXI_WVALID;
  wire [33:0]vip_DDR4_MEM01_M_AXI_ARADDR;
  wire [1:0]vip_DDR4_MEM01_M_AXI_ARBURST;
  wire [3:0]vip_DDR4_MEM01_M_AXI_ARCACHE;
  wire [7:0]vip_DDR4_MEM01_M_AXI_ARLEN;
  wire vip_DDR4_MEM01_M_AXI_ARLOCK;
  wire [2:0]vip_DDR4_MEM01_M_AXI_ARPROT;
  wire [3:0]vip_DDR4_MEM01_M_AXI_ARQOS;
  wire vip_DDR4_MEM01_M_AXI_ARREADY;
  wire vip_DDR4_MEM01_M_AXI_ARVALID;
  wire [33:0]vip_DDR4_MEM01_M_AXI_AWADDR;
  wire [1:0]vip_DDR4_MEM01_M_AXI_AWBURST;
  wire [3:0]vip_DDR4_MEM01_M_AXI_AWCACHE;
  wire [7:0]vip_DDR4_MEM01_M_AXI_AWLEN;
  wire vip_DDR4_MEM01_M_AXI_AWLOCK;
  wire [2:0]vip_DDR4_MEM01_M_AXI_AWPROT;
  wire [3:0]vip_DDR4_MEM01_M_AXI_AWQOS;
  wire vip_DDR4_MEM01_M_AXI_AWREADY;
  wire vip_DDR4_MEM01_M_AXI_AWVALID;
  wire vip_DDR4_MEM01_M_AXI_BREADY;
  wire [1:0]vip_DDR4_MEM01_M_AXI_BRESP;
  wire vip_DDR4_MEM01_M_AXI_BVALID;
  wire [511:0]vip_DDR4_MEM01_M_AXI_RDATA;
  wire vip_DDR4_MEM01_M_AXI_RLAST;
  wire vip_DDR4_MEM01_M_AXI_RREADY;
  wire [1:0]vip_DDR4_MEM01_M_AXI_RRESP;
  wire vip_DDR4_MEM01_M_AXI_RVALID;
  wire [511:0]vip_DDR4_MEM01_M_AXI_WDATA;
  wire vip_DDR4_MEM01_M_AXI_WLAST;
  wire vip_DDR4_MEM01_M_AXI_WREADY;
  wire [63:0]vip_DDR4_MEM01_M_AXI_WSTRB;
  wire vip_DDR4_MEM01_M_AXI_WVALID;
  wire [33:0]vip_DDR4_MEM02_M_AXI_ARADDR;
  wire [1:0]vip_DDR4_MEM02_M_AXI_ARBURST;
  wire [3:0]vip_DDR4_MEM02_M_AXI_ARCACHE;
  wire [7:0]vip_DDR4_MEM02_M_AXI_ARLEN;
  wire vip_DDR4_MEM02_M_AXI_ARLOCK;
  wire [2:0]vip_DDR4_MEM02_M_AXI_ARPROT;
  wire [3:0]vip_DDR4_MEM02_M_AXI_ARQOS;
  wire vip_DDR4_MEM02_M_AXI_ARREADY;
  wire vip_DDR4_MEM02_M_AXI_ARVALID;
  wire [33:0]vip_DDR4_MEM02_M_AXI_AWADDR;
  wire [1:0]vip_DDR4_MEM02_M_AXI_AWBURST;
  wire [3:0]vip_DDR4_MEM02_M_AXI_AWCACHE;
  wire [7:0]vip_DDR4_MEM02_M_AXI_AWLEN;
  wire vip_DDR4_MEM02_M_AXI_AWLOCK;
  wire [2:0]vip_DDR4_MEM02_M_AXI_AWPROT;
  wire [3:0]vip_DDR4_MEM02_M_AXI_AWQOS;
  wire vip_DDR4_MEM02_M_AXI_AWREADY;
  wire vip_DDR4_MEM02_M_AXI_AWVALID;
  wire vip_DDR4_MEM02_M_AXI_BREADY;
  wire [1:0]vip_DDR4_MEM02_M_AXI_BRESP;
  wire vip_DDR4_MEM02_M_AXI_BVALID;
  wire [511:0]vip_DDR4_MEM02_M_AXI_RDATA;
  wire vip_DDR4_MEM02_M_AXI_RLAST;
  wire vip_DDR4_MEM02_M_AXI_RREADY;
  wire [1:0]vip_DDR4_MEM02_M_AXI_RRESP;
  wire vip_DDR4_MEM02_M_AXI_RVALID;
  wire [511:0]vip_DDR4_MEM02_M_AXI_WDATA;
  wire vip_DDR4_MEM02_M_AXI_WLAST;
  wire vip_DDR4_MEM02_M_AXI_WREADY;
  wire [63:0]vip_DDR4_MEM02_M_AXI_WSTRB;
  wire vip_DDR4_MEM02_M_AXI_WVALID;
  wire [31:0]vip_ctrl_DDR4_MEM00_M_AXI_ARADDR;
  wire [2:0]vip_ctrl_DDR4_MEM00_M_AXI_ARPROT;
  wire vip_ctrl_DDR4_MEM00_M_AXI_ARREADY;
  wire vip_ctrl_DDR4_MEM00_M_AXI_ARVALID;
  wire [31:0]vip_ctrl_DDR4_MEM00_M_AXI_AWADDR;
  wire [2:0]vip_ctrl_DDR4_MEM00_M_AXI_AWPROT;
  wire vip_ctrl_DDR4_MEM00_M_AXI_AWREADY;
  wire vip_ctrl_DDR4_MEM00_M_AXI_AWVALID;
  wire vip_ctrl_DDR4_MEM00_M_AXI_BREADY;
  wire [1:0]vip_ctrl_DDR4_MEM00_M_AXI_BRESP;
  wire vip_ctrl_DDR4_MEM00_M_AXI_BVALID;
  wire [31:0]vip_ctrl_DDR4_MEM00_M_AXI_RDATA;
  wire vip_ctrl_DDR4_MEM00_M_AXI_RREADY;
  wire [1:0]vip_ctrl_DDR4_MEM00_M_AXI_RRESP;
  wire vip_ctrl_DDR4_MEM00_M_AXI_RVALID;
  wire [31:0]vip_ctrl_DDR4_MEM00_M_AXI_WDATA;
  wire vip_ctrl_DDR4_MEM00_M_AXI_WREADY;
  wire [3:0]vip_ctrl_DDR4_MEM00_M_AXI_WSTRB;
  wire vip_ctrl_DDR4_MEM00_M_AXI_WVALID;
  wire [31:0]vip_ctrl_DDR4_MEM01_M_AXI_ARADDR;
  wire [2:0]vip_ctrl_DDR4_MEM01_M_AXI_ARPROT;
  wire vip_ctrl_DDR4_MEM01_M_AXI_ARREADY;
  wire vip_ctrl_DDR4_MEM01_M_AXI_ARVALID;
  wire [31:0]vip_ctrl_DDR4_MEM01_M_AXI_AWADDR;
  wire [2:0]vip_ctrl_DDR4_MEM01_M_AXI_AWPROT;
  wire vip_ctrl_DDR4_MEM01_M_AXI_AWREADY;
  wire vip_ctrl_DDR4_MEM01_M_AXI_AWVALID;
  wire vip_ctrl_DDR4_MEM01_M_AXI_BREADY;
  wire [1:0]vip_ctrl_DDR4_MEM01_M_AXI_BRESP;
  wire vip_ctrl_DDR4_MEM01_M_AXI_BVALID;
  wire [31:0]vip_ctrl_DDR4_MEM01_M_AXI_RDATA;
  wire vip_ctrl_DDR4_MEM01_M_AXI_RREADY;
  wire [1:0]vip_ctrl_DDR4_MEM01_M_AXI_RRESP;
  wire vip_ctrl_DDR4_MEM01_M_AXI_RVALID;
  wire [31:0]vip_ctrl_DDR4_MEM01_M_AXI_WDATA;
  wire vip_ctrl_DDR4_MEM01_M_AXI_WREADY;
  wire [3:0]vip_ctrl_DDR4_MEM01_M_AXI_WSTRB;
  wire vip_ctrl_DDR4_MEM01_M_AXI_WVALID;
  wire [31:0]vip_ctrl_DDR4_MEM02_M_AXI_ARADDR;
  wire [2:0]vip_ctrl_DDR4_MEM02_M_AXI_ARPROT;
  wire vip_ctrl_DDR4_MEM02_M_AXI_ARREADY;
  wire vip_ctrl_DDR4_MEM02_M_AXI_ARVALID;
  wire [31:0]vip_ctrl_DDR4_MEM02_M_AXI_AWADDR;
  wire [2:0]vip_ctrl_DDR4_MEM02_M_AXI_AWPROT;
  wire vip_ctrl_DDR4_MEM02_M_AXI_AWREADY;
  wire vip_ctrl_DDR4_MEM02_M_AXI_AWVALID;
  wire vip_ctrl_DDR4_MEM02_M_AXI_BREADY;
  wire [1:0]vip_ctrl_DDR4_MEM02_M_AXI_BRESP;
  wire vip_ctrl_DDR4_MEM02_M_AXI_BVALID;
  wire [31:0]vip_ctrl_DDR4_MEM02_M_AXI_RDATA;
  wire vip_ctrl_DDR4_MEM02_M_AXI_RREADY;
  wire [1:0]vip_ctrl_DDR4_MEM02_M_AXI_RRESP;
  wire vip_ctrl_DDR4_MEM02_M_AXI_RVALID;
  wire [31:0]vip_ctrl_DDR4_MEM02_M_AXI_WDATA;
  wire vip_ctrl_DDR4_MEM02_M_AXI_WREADY;
  wire [3:0]vip_ctrl_DDR4_MEM02_M_AXI_WSTRB;
  wire vip_ctrl_DDR4_MEM02_M_AXI_WVALID;
  wire vip_ui_rst_DDR4_MEM00_rst_out;
  wire vip_ui_rst_DDR4_MEM01_rst_out;
  wire vip_ui_rst_DDR4_MEM02_rst_out;
  wire NLW_ddr4_mem00_addn_ui_clkout1_UNCONNECTED;
  wire NLW_ddr4_mem00_c0_ddr4_interrupt_UNCONNECTED;
  wire NLW_ddr4_mem00_dbg_clk_UNCONNECTED;
  wire [0:0]NLW_ddr4_mem00_c0_ddr4_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_ddr4_mem00_c0_ddr4_s_axi_rid_UNCONNECTED;
  wire [511:0]NLW_ddr4_mem00_dbg_bus_UNCONNECTED;
  wire [2:0]NLW_ddr4_mem00_ctrl_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_ddr4_mem00_ctrl_cc_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_ddr4_mem00_ctrl_cc_m_axi_wstrb_UNCONNECTED;
  wire NLW_ddr4_mem01_addn_ui_clkout1_UNCONNECTED;
  wire NLW_ddr4_mem01_c0_ddr4_interrupt_UNCONNECTED;
  wire NLW_ddr4_mem01_dbg_clk_UNCONNECTED;
  wire [0:0]NLW_ddr4_mem01_c0_ddr4_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_ddr4_mem01_c0_ddr4_s_axi_rid_UNCONNECTED;
  wire [511:0]NLW_ddr4_mem01_dbg_bus_UNCONNECTED;
  wire [2:0]NLW_ddr4_mem01_ctrl_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_ddr4_mem01_ctrl_cc_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_ddr4_mem01_ctrl_cc_m_axi_wstrb_UNCONNECTED;
  wire NLW_ddr4_mem02_addn_ui_clkout1_UNCONNECTED;
  wire NLW_ddr4_mem02_c0_ddr4_interrupt_UNCONNECTED;
  wire NLW_ddr4_mem02_dbg_clk_UNCONNECTED;
  wire [0:0]NLW_ddr4_mem02_c0_ddr4_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_ddr4_mem02_c0_ddr4_s_axi_rid_UNCONNECTED;
  wire [511:0]NLW_ddr4_mem02_dbg_bus_UNCONNECTED;
  wire [2:0]NLW_ddr4_mem02_ctrl_cc_m_axi_arprot_UNCONNECTED;
  wire [2:0]NLW_ddr4_mem02_ctrl_cc_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_ddr4_mem02_ctrl_cc_m_axi_wstrb_UNCONNECTED;
  wire NLW_psr_ctrl_interconnect_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_ctrl_interconnect_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_ctrl_interconnect_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_ctrl_interconnect_peripheral_reset_UNCONNECTED;
  wire NLW_psr_ddr4_mem00_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem00_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem00_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem00_peripheral_reset_UNCONNECTED;
  wire NLW_psr_ddr4_mem01_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem01_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem01_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem01_peripheral_reset_UNCONNECTED;
  wire NLW_psr_ddr4_mem02_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem02_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem02_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_ddr4_mem02_peripheral_reset_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "bd_d216_calib_concat_0,xlconcat_v2_1_3_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_3_xlconcat,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_calib_concat_0 calib_concat
       (.In0(ddr4_mem00_c0_init_calib_complete),
        .In1(ddr4_mem01_c0_init_calib_complete),
        .In2(ddr4_mem02_c0_init_calib_complete),
        .dout(calib_concat_dout));
  (* X_CORE_INFO = "util_reduced_logic_v2_0_4_util_reduced_logic,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_calib_reduce_0 calib_reduce
       (.Op1(calib_concat_dout),
        .Res(ddr4_mem_calib_complete));
  (* CHECK_LICENSE_TYPE = "bd_d216_calib_vector_concat_0,xlconcat_v2_1_3_xlconcat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "xlconcat_v2_1_3_xlconcat,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_calib_vector_concat_0 calib_vector_concat
       (.In0(ddr4_mem00_c0_init_calib_complete),
        .In1(ddr4_mem01_c0_init_calib_complete),
        .In2(ddr4_mem02_c0_init_calib_complete),
        .dout(ddr4_mem_calib_vec));
  (* X_CORE_INFO = "ddr4_v2_2_9,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem00_0 ddr4_mem00
       (.addn_ui_clkout1(NLW_ddr4_mem00_addn_ui_clkout1_UNCONNECTED),
        .c0_ddr4_act_n(DDR4_MEM00_act_n),
        .c0_ddr4_adr(DDR4_MEM00_adr),
        .c0_ddr4_aresetn(psr_ddr4_mem00_interconnect_aresetn),
        .c0_ddr4_ba(DDR4_MEM00_ba),
        .c0_ddr4_bg(DDR4_MEM00_bg),
        .c0_ddr4_ck_c(DDR4_MEM00_ck_c),
        .c0_ddr4_ck_t(DDR4_MEM00_ck_t),
        .c0_ddr4_cke(DDR4_MEM00_cke),
        .c0_ddr4_cs_n(DDR4_MEM00_cs_n),
        .c0_ddr4_dq(DDR4_MEM00_dq),
        .c0_ddr4_dqs_c(DDR4_MEM00_dqs_c),
        .c0_ddr4_dqs_t(DDR4_MEM00_dqs_t),
        .c0_ddr4_interrupt(NLW_ddr4_mem00_c0_ddr4_interrupt_UNCONNECTED),
        .c0_ddr4_odt(DDR4_MEM00_odt),
        .c0_ddr4_parity(DDR4_MEM00_par),
        .c0_ddr4_reset_n(DDR4_MEM00_reset_n),
        .c0_ddr4_s_axi_araddr(vip_DDR4_MEM00_M_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(vip_DDR4_MEM00_M_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(vip_DDR4_MEM00_M_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(vip_DDR4_MEM00_M_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(vip_DDR4_MEM00_M_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(vip_DDR4_MEM00_M_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(vip_DDR4_MEM00_M_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(vip_DDR4_MEM00_M_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize({1'b1,1'b1,1'b0}),
        .c0_ddr4_s_axi_arvalid(vip_DDR4_MEM00_M_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(vip_DDR4_MEM00_M_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(vip_DDR4_MEM00_M_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(vip_DDR4_MEM00_M_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(vip_DDR4_MEM00_M_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(vip_DDR4_MEM00_M_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(vip_DDR4_MEM00_M_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(vip_DDR4_MEM00_M_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(vip_DDR4_MEM00_M_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize({1'b1,1'b1,1'b0}),
        .c0_ddr4_s_axi_awvalid(vip_DDR4_MEM00_M_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(NLW_ddr4_mem00_c0_ddr4_s_axi_bid_UNCONNECTED[0]),
        .c0_ddr4_s_axi_bready(vip_DDR4_MEM00_M_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(vip_DDR4_MEM00_M_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(vip_DDR4_MEM00_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(ddr4_mem00_ctrl_cc_M_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(ddr4_mem00_ctrl_cc_M_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(ddr4_mem00_ctrl_cc_M_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(ddr4_mem00_ctrl_cc_M_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(ddr4_mem00_ctrl_cc_M_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(ddr4_mem00_ctrl_cc_M_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(ddr4_mem00_ctrl_cc_M_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(ddr4_mem00_ctrl_cc_M_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(ddr4_mem00_ctrl_cc_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(ddr4_mem00_ctrl_cc_M_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(ddr4_mem00_ctrl_cc_M_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(ddr4_mem00_ctrl_cc_M_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(ddr4_mem00_ctrl_cc_M_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(ddr4_mem00_ctrl_cc_M_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(ddr4_mem00_ctrl_cc_M_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(ddr4_mem00_ctrl_cc_M_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(vip_DDR4_MEM00_M_AXI_RDATA),
        .c0_ddr4_s_axi_rid(NLW_ddr4_mem00_c0_ddr4_s_axi_rid_UNCONNECTED[0]),
        .c0_ddr4_s_axi_rlast(vip_DDR4_MEM00_M_AXI_RLAST),
        .c0_ddr4_s_axi_rready(vip_DDR4_MEM00_M_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(vip_DDR4_MEM00_M_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(vip_DDR4_MEM00_M_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(vip_DDR4_MEM00_M_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(vip_DDR4_MEM00_M_AXI_WLAST),
        .c0_ddr4_s_axi_wready(vip_DDR4_MEM00_M_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(vip_DDR4_MEM00_M_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(vip_DDR4_MEM00_M_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_mem00_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_mem00_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_mem00_c0_init_calib_complete),
        .c0_sys_clk_n(DDR4_MEM00_DIFF_CLK_clk_n),
        .c0_sys_clk_p(DDR4_MEM00_DIFF_CLK_clk_p),
        .dbg_bus(NLW_ddr4_mem00_dbg_bus_UNCONNECTED[511:0]),
        .dbg_clk(NLW_ddr4_mem00_dbg_clk_UNCONNECTED),
        .sys_rst(ddr4_mem00_sys_rst));
  (* X_CORE_INFO = "axi_clock_converter_v2_1_20_axi_clock_converter,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem00_ctrl_cc_0 ddr4_mem00_ctrl_cc
       (.m_axi_aclk(ddr4_mem00_ui_clk),
        .m_axi_araddr(ddr4_mem00_ctrl_cc_M_AXI_ARADDR),
        .m_axi_aresetn(psr_ddr4_mem00_interconnect_aresetn),
        .m_axi_arprot(NLW_ddr4_mem00_ctrl_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(ddr4_mem00_ctrl_cc_M_AXI_ARREADY),
        .m_axi_arvalid(ddr4_mem00_ctrl_cc_M_AXI_ARVALID),
        .m_axi_awaddr(ddr4_mem00_ctrl_cc_M_AXI_AWADDR),
        .m_axi_awprot(NLW_ddr4_mem00_ctrl_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(ddr4_mem00_ctrl_cc_M_AXI_AWREADY),
        .m_axi_awvalid(ddr4_mem00_ctrl_cc_M_AXI_AWVALID),
        .m_axi_bready(ddr4_mem00_ctrl_cc_M_AXI_BREADY),
        .m_axi_bresp(ddr4_mem00_ctrl_cc_M_AXI_BRESP),
        .m_axi_bvalid(ddr4_mem00_ctrl_cc_M_AXI_BVALID),
        .m_axi_rdata(ddr4_mem00_ctrl_cc_M_AXI_RDATA),
        .m_axi_rready(ddr4_mem00_ctrl_cc_M_AXI_RREADY),
        .m_axi_rresp(ddr4_mem00_ctrl_cc_M_AXI_RRESP),
        .m_axi_rvalid(ddr4_mem00_ctrl_cc_M_AXI_RVALID),
        .m_axi_wdata(ddr4_mem00_ctrl_cc_M_AXI_WDATA),
        .m_axi_wready(ddr4_mem00_ctrl_cc_M_AXI_WREADY),
        .m_axi_wstrb(NLW_ddr4_mem00_ctrl_cc_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wvalid(ddr4_mem00_ctrl_cc_M_AXI_WVALID),
        .s_axi_aclk(aclk1),
        .s_axi_araddr(vip_ctrl_DDR4_MEM00_M_AXI_ARADDR),
        .s_axi_aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .s_axi_arprot(vip_ctrl_DDR4_MEM00_M_AXI_ARPROT),
        .s_axi_arready(vip_ctrl_DDR4_MEM00_M_AXI_ARREADY),
        .s_axi_arvalid(vip_ctrl_DDR4_MEM00_M_AXI_ARVALID),
        .s_axi_awaddr(vip_ctrl_DDR4_MEM00_M_AXI_AWADDR),
        .s_axi_awprot(vip_ctrl_DDR4_MEM00_M_AXI_AWPROT),
        .s_axi_awready(vip_ctrl_DDR4_MEM00_M_AXI_AWREADY),
        .s_axi_awvalid(vip_ctrl_DDR4_MEM00_M_AXI_AWVALID),
        .s_axi_bready(vip_ctrl_DDR4_MEM00_M_AXI_BREADY),
        .s_axi_bresp(vip_ctrl_DDR4_MEM00_M_AXI_BRESP),
        .s_axi_bvalid(vip_ctrl_DDR4_MEM00_M_AXI_BVALID),
        .s_axi_rdata(vip_ctrl_DDR4_MEM00_M_AXI_RDATA),
        .s_axi_rready(vip_ctrl_DDR4_MEM00_M_AXI_RREADY),
        .s_axi_rresp(vip_ctrl_DDR4_MEM00_M_AXI_RRESP),
        .s_axi_rvalid(vip_ctrl_DDR4_MEM00_M_AXI_RVALID),
        .s_axi_wdata(vip_ctrl_DDR4_MEM00_M_AXI_WDATA),
        .s_axi_wready(vip_ctrl_DDR4_MEM00_M_AXI_WREADY),
        .s_axi_wstrb(vip_ctrl_DDR4_MEM00_M_AXI_WSTRB),
        .s_axi_wvalid(vip_ctrl_DDR4_MEM00_M_AXI_WVALID));
  (* X_CORE_INFO = "ddr4_v2_2_9,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem01_0 ddr4_mem01
       (.addn_ui_clkout1(NLW_ddr4_mem01_addn_ui_clkout1_UNCONNECTED),
        .c0_ddr4_act_n(DDR4_MEM01_act_n),
        .c0_ddr4_adr(DDR4_MEM01_adr),
        .c0_ddr4_aresetn(psr_ddr4_mem01_interconnect_aresetn),
        .c0_ddr4_ba(DDR4_MEM01_ba),
        .c0_ddr4_bg(DDR4_MEM01_bg),
        .c0_ddr4_ck_c(DDR4_MEM01_ck_c),
        .c0_ddr4_ck_t(DDR4_MEM01_ck_t),
        .c0_ddr4_cke(DDR4_MEM01_cke),
        .c0_ddr4_cs_n(DDR4_MEM01_cs_n),
        .c0_ddr4_dq(DDR4_MEM01_dq),
        .c0_ddr4_dqs_c(DDR4_MEM01_dqs_c),
        .c0_ddr4_dqs_t(DDR4_MEM01_dqs_t),
        .c0_ddr4_interrupt(NLW_ddr4_mem01_c0_ddr4_interrupt_UNCONNECTED),
        .c0_ddr4_odt(DDR4_MEM01_odt),
        .c0_ddr4_parity(DDR4_MEM01_par),
        .c0_ddr4_reset_n(DDR4_MEM01_reset_n),
        .c0_ddr4_s_axi_araddr(vip_DDR4_MEM01_M_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(vip_DDR4_MEM01_M_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(vip_DDR4_MEM01_M_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(vip_DDR4_MEM01_M_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(vip_DDR4_MEM01_M_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(vip_DDR4_MEM01_M_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(vip_DDR4_MEM01_M_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(vip_DDR4_MEM01_M_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize({1'b1,1'b1,1'b0}),
        .c0_ddr4_s_axi_arvalid(vip_DDR4_MEM01_M_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(vip_DDR4_MEM01_M_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(vip_DDR4_MEM01_M_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(vip_DDR4_MEM01_M_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(vip_DDR4_MEM01_M_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(vip_DDR4_MEM01_M_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(vip_DDR4_MEM01_M_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(vip_DDR4_MEM01_M_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(vip_DDR4_MEM01_M_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize({1'b1,1'b1,1'b0}),
        .c0_ddr4_s_axi_awvalid(vip_DDR4_MEM01_M_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(NLW_ddr4_mem01_c0_ddr4_s_axi_bid_UNCONNECTED[0]),
        .c0_ddr4_s_axi_bready(vip_DDR4_MEM01_M_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(vip_DDR4_MEM01_M_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(vip_DDR4_MEM01_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(ddr4_mem01_ctrl_cc_M_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(ddr4_mem01_ctrl_cc_M_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(ddr4_mem01_ctrl_cc_M_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(ddr4_mem01_ctrl_cc_M_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(ddr4_mem01_ctrl_cc_M_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(ddr4_mem01_ctrl_cc_M_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(ddr4_mem01_ctrl_cc_M_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(ddr4_mem01_ctrl_cc_M_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(ddr4_mem01_ctrl_cc_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(ddr4_mem01_ctrl_cc_M_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(ddr4_mem01_ctrl_cc_M_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(ddr4_mem01_ctrl_cc_M_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(ddr4_mem01_ctrl_cc_M_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(ddr4_mem01_ctrl_cc_M_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(ddr4_mem01_ctrl_cc_M_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(ddr4_mem01_ctrl_cc_M_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(vip_DDR4_MEM01_M_AXI_RDATA),
        .c0_ddr4_s_axi_rid(NLW_ddr4_mem01_c0_ddr4_s_axi_rid_UNCONNECTED[0]),
        .c0_ddr4_s_axi_rlast(vip_DDR4_MEM01_M_AXI_RLAST),
        .c0_ddr4_s_axi_rready(vip_DDR4_MEM01_M_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(vip_DDR4_MEM01_M_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(vip_DDR4_MEM01_M_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(vip_DDR4_MEM01_M_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(vip_DDR4_MEM01_M_AXI_WLAST),
        .c0_ddr4_s_axi_wready(vip_DDR4_MEM01_M_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(vip_DDR4_MEM01_M_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(vip_DDR4_MEM01_M_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_mem01_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_mem01_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_mem01_c0_init_calib_complete),
        .c0_sys_clk_n(DDR4_MEM01_DIFF_CLK_clk_n),
        .c0_sys_clk_p(DDR4_MEM01_DIFF_CLK_clk_p),
        .dbg_bus(NLW_ddr4_mem01_dbg_bus_UNCONNECTED[511:0]),
        .dbg_clk(NLW_ddr4_mem01_dbg_clk_UNCONNECTED),
        .sys_rst(ddr4_mem01_sys_rst));
  (* X_CORE_INFO = "axi_clock_converter_v2_1_20_axi_clock_converter,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem01_ctrl_cc_0 ddr4_mem01_ctrl_cc
       (.m_axi_aclk(ddr4_mem01_ui_clk),
        .m_axi_araddr(ddr4_mem01_ctrl_cc_M_AXI_ARADDR),
        .m_axi_aresetn(psr_ddr4_mem01_interconnect_aresetn),
        .m_axi_arprot(NLW_ddr4_mem01_ctrl_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(ddr4_mem01_ctrl_cc_M_AXI_ARREADY),
        .m_axi_arvalid(ddr4_mem01_ctrl_cc_M_AXI_ARVALID),
        .m_axi_awaddr(ddr4_mem01_ctrl_cc_M_AXI_AWADDR),
        .m_axi_awprot(NLW_ddr4_mem01_ctrl_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(ddr4_mem01_ctrl_cc_M_AXI_AWREADY),
        .m_axi_awvalid(ddr4_mem01_ctrl_cc_M_AXI_AWVALID),
        .m_axi_bready(ddr4_mem01_ctrl_cc_M_AXI_BREADY),
        .m_axi_bresp(ddr4_mem01_ctrl_cc_M_AXI_BRESP),
        .m_axi_bvalid(ddr4_mem01_ctrl_cc_M_AXI_BVALID),
        .m_axi_rdata(ddr4_mem01_ctrl_cc_M_AXI_RDATA),
        .m_axi_rready(ddr4_mem01_ctrl_cc_M_AXI_RREADY),
        .m_axi_rresp(ddr4_mem01_ctrl_cc_M_AXI_RRESP),
        .m_axi_rvalid(ddr4_mem01_ctrl_cc_M_AXI_RVALID),
        .m_axi_wdata(ddr4_mem01_ctrl_cc_M_AXI_WDATA),
        .m_axi_wready(ddr4_mem01_ctrl_cc_M_AXI_WREADY),
        .m_axi_wstrb(NLW_ddr4_mem01_ctrl_cc_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wvalid(ddr4_mem01_ctrl_cc_M_AXI_WVALID),
        .s_axi_aclk(aclk1),
        .s_axi_araddr(vip_ctrl_DDR4_MEM01_M_AXI_ARADDR),
        .s_axi_aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .s_axi_arprot(vip_ctrl_DDR4_MEM01_M_AXI_ARPROT),
        .s_axi_arready(vip_ctrl_DDR4_MEM01_M_AXI_ARREADY),
        .s_axi_arvalid(vip_ctrl_DDR4_MEM01_M_AXI_ARVALID),
        .s_axi_awaddr(vip_ctrl_DDR4_MEM01_M_AXI_AWADDR),
        .s_axi_awprot(vip_ctrl_DDR4_MEM01_M_AXI_AWPROT),
        .s_axi_awready(vip_ctrl_DDR4_MEM01_M_AXI_AWREADY),
        .s_axi_awvalid(vip_ctrl_DDR4_MEM01_M_AXI_AWVALID),
        .s_axi_bready(vip_ctrl_DDR4_MEM01_M_AXI_BREADY),
        .s_axi_bresp(vip_ctrl_DDR4_MEM01_M_AXI_BRESP),
        .s_axi_bvalid(vip_ctrl_DDR4_MEM01_M_AXI_BVALID),
        .s_axi_rdata(vip_ctrl_DDR4_MEM01_M_AXI_RDATA),
        .s_axi_rready(vip_ctrl_DDR4_MEM01_M_AXI_RREADY),
        .s_axi_rresp(vip_ctrl_DDR4_MEM01_M_AXI_RRESP),
        .s_axi_rvalid(vip_ctrl_DDR4_MEM01_M_AXI_RVALID),
        .s_axi_wdata(vip_ctrl_DDR4_MEM01_M_AXI_WDATA),
        .s_axi_wready(vip_ctrl_DDR4_MEM01_M_AXI_WREADY),
        .s_axi_wstrb(vip_ctrl_DDR4_MEM01_M_AXI_WSTRB),
        .s_axi_wvalid(vip_ctrl_DDR4_MEM01_M_AXI_WVALID));
  (* X_CORE_INFO = "ddr4_v2_2_9,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem02_0 ddr4_mem02
       (.addn_ui_clkout1(NLW_ddr4_mem02_addn_ui_clkout1_UNCONNECTED),
        .c0_ddr4_act_n(DDR4_MEM02_act_n),
        .c0_ddr4_adr(DDR4_MEM02_adr),
        .c0_ddr4_aresetn(psr_ddr4_mem02_interconnect_aresetn),
        .c0_ddr4_ba(DDR4_MEM02_ba),
        .c0_ddr4_bg(DDR4_MEM02_bg),
        .c0_ddr4_ck_c(DDR4_MEM02_ck_c),
        .c0_ddr4_ck_t(DDR4_MEM02_ck_t),
        .c0_ddr4_cke(DDR4_MEM02_cke),
        .c0_ddr4_cs_n(DDR4_MEM02_cs_n),
        .c0_ddr4_dq(DDR4_MEM02_dq),
        .c0_ddr4_dqs_c(DDR4_MEM02_dqs_c),
        .c0_ddr4_dqs_t(DDR4_MEM02_dqs_t),
        .c0_ddr4_interrupt(NLW_ddr4_mem02_c0_ddr4_interrupt_UNCONNECTED),
        .c0_ddr4_odt(DDR4_MEM02_odt),
        .c0_ddr4_parity(DDR4_MEM02_par),
        .c0_ddr4_reset_n(DDR4_MEM02_reset_n),
        .c0_ddr4_s_axi_araddr(vip_DDR4_MEM02_M_AXI_ARADDR),
        .c0_ddr4_s_axi_arburst(vip_DDR4_MEM02_M_AXI_ARBURST),
        .c0_ddr4_s_axi_arcache(vip_DDR4_MEM02_M_AXI_ARCACHE),
        .c0_ddr4_s_axi_arid(1'b0),
        .c0_ddr4_s_axi_arlen(vip_DDR4_MEM02_M_AXI_ARLEN),
        .c0_ddr4_s_axi_arlock(vip_DDR4_MEM02_M_AXI_ARLOCK),
        .c0_ddr4_s_axi_arprot(vip_DDR4_MEM02_M_AXI_ARPROT),
        .c0_ddr4_s_axi_arqos(vip_DDR4_MEM02_M_AXI_ARQOS),
        .c0_ddr4_s_axi_arready(vip_DDR4_MEM02_M_AXI_ARREADY),
        .c0_ddr4_s_axi_arsize({1'b1,1'b1,1'b0}),
        .c0_ddr4_s_axi_arvalid(vip_DDR4_MEM02_M_AXI_ARVALID),
        .c0_ddr4_s_axi_awaddr(vip_DDR4_MEM02_M_AXI_AWADDR),
        .c0_ddr4_s_axi_awburst(vip_DDR4_MEM02_M_AXI_AWBURST),
        .c0_ddr4_s_axi_awcache(vip_DDR4_MEM02_M_AXI_AWCACHE),
        .c0_ddr4_s_axi_awid(1'b0),
        .c0_ddr4_s_axi_awlen(vip_DDR4_MEM02_M_AXI_AWLEN),
        .c0_ddr4_s_axi_awlock(vip_DDR4_MEM02_M_AXI_AWLOCK),
        .c0_ddr4_s_axi_awprot(vip_DDR4_MEM02_M_AXI_AWPROT),
        .c0_ddr4_s_axi_awqos(vip_DDR4_MEM02_M_AXI_AWQOS),
        .c0_ddr4_s_axi_awready(vip_DDR4_MEM02_M_AXI_AWREADY),
        .c0_ddr4_s_axi_awsize({1'b1,1'b1,1'b0}),
        .c0_ddr4_s_axi_awvalid(vip_DDR4_MEM02_M_AXI_AWVALID),
        .c0_ddr4_s_axi_bid(NLW_ddr4_mem02_c0_ddr4_s_axi_bid_UNCONNECTED[0]),
        .c0_ddr4_s_axi_bready(vip_DDR4_MEM02_M_AXI_BREADY),
        .c0_ddr4_s_axi_bresp(vip_DDR4_MEM02_M_AXI_BRESP),
        .c0_ddr4_s_axi_bvalid(vip_DDR4_MEM02_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_araddr(ddr4_mem02_ctrl_cc_M_AXI_ARADDR),
        .c0_ddr4_s_axi_ctrl_arready(ddr4_mem02_ctrl_cc_M_AXI_ARREADY),
        .c0_ddr4_s_axi_ctrl_arvalid(ddr4_mem02_ctrl_cc_M_AXI_ARVALID),
        .c0_ddr4_s_axi_ctrl_awaddr(ddr4_mem02_ctrl_cc_M_AXI_AWADDR),
        .c0_ddr4_s_axi_ctrl_awready(ddr4_mem02_ctrl_cc_M_AXI_AWREADY),
        .c0_ddr4_s_axi_ctrl_awvalid(ddr4_mem02_ctrl_cc_M_AXI_AWVALID),
        .c0_ddr4_s_axi_ctrl_bready(ddr4_mem02_ctrl_cc_M_AXI_BREADY),
        .c0_ddr4_s_axi_ctrl_bresp(ddr4_mem02_ctrl_cc_M_AXI_BRESP),
        .c0_ddr4_s_axi_ctrl_bvalid(ddr4_mem02_ctrl_cc_M_AXI_BVALID),
        .c0_ddr4_s_axi_ctrl_rdata(ddr4_mem02_ctrl_cc_M_AXI_RDATA),
        .c0_ddr4_s_axi_ctrl_rready(ddr4_mem02_ctrl_cc_M_AXI_RREADY),
        .c0_ddr4_s_axi_ctrl_rresp(ddr4_mem02_ctrl_cc_M_AXI_RRESP),
        .c0_ddr4_s_axi_ctrl_rvalid(ddr4_mem02_ctrl_cc_M_AXI_RVALID),
        .c0_ddr4_s_axi_ctrl_wdata(ddr4_mem02_ctrl_cc_M_AXI_WDATA),
        .c0_ddr4_s_axi_ctrl_wready(ddr4_mem02_ctrl_cc_M_AXI_WREADY),
        .c0_ddr4_s_axi_ctrl_wvalid(ddr4_mem02_ctrl_cc_M_AXI_WVALID),
        .c0_ddr4_s_axi_rdata(vip_DDR4_MEM02_M_AXI_RDATA),
        .c0_ddr4_s_axi_rid(NLW_ddr4_mem02_c0_ddr4_s_axi_rid_UNCONNECTED[0]),
        .c0_ddr4_s_axi_rlast(vip_DDR4_MEM02_M_AXI_RLAST),
        .c0_ddr4_s_axi_rready(vip_DDR4_MEM02_M_AXI_RREADY),
        .c0_ddr4_s_axi_rresp(vip_DDR4_MEM02_M_AXI_RRESP),
        .c0_ddr4_s_axi_rvalid(vip_DDR4_MEM02_M_AXI_RVALID),
        .c0_ddr4_s_axi_wdata(vip_DDR4_MEM02_M_AXI_WDATA),
        .c0_ddr4_s_axi_wlast(vip_DDR4_MEM02_M_AXI_WLAST),
        .c0_ddr4_s_axi_wready(vip_DDR4_MEM02_M_AXI_WREADY),
        .c0_ddr4_s_axi_wstrb(vip_DDR4_MEM02_M_AXI_WSTRB),
        .c0_ddr4_s_axi_wvalid(vip_DDR4_MEM02_M_AXI_WVALID),
        .c0_ddr4_ui_clk(ddr4_mem02_c0_ddr4_ui_clk),
        .c0_ddr4_ui_clk_sync_rst(ddr4_mem02_c0_ddr4_ui_clk_sync_rst),
        .c0_init_calib_complete(ddr4_mem02_c0_init_calib_complete),
        .c0_sys_clk_n(DDR4_MEM02_DIFF_CLK_clk_n),
        .c0_sys_clk_p(DDR4_MEM02_DIFF_CLK_clk_p),
        .dbg_bus(NLW_ddr4_mem02_dbg_bus_UNCONNECTED[511:0]),
        .dbg_clk(NLW_ddr4_mem02_dbg_clk_UNCONNECTED),
        .sys_rst(ddr4_mem02_sys_rst));
  (* X_CORE_INFO = "axi_clock_converter_v2_1_20_axi_clock_converter,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_ddr4_mem02_ctrl_cc_0 ddr4_mem02_ctrl_cc
       (.m_axi_aclk(ddr4_mem02_ui_clk),
        .m_axi_araddr(ddr4_mem02_ctrl_cc_M_AXI_ARADDR),
        .m_axi_aresetn(psr_ddr4_mem02_interconnect_aresetn),
        .m_axi_arprot(NLW_ddr4_mem02_ctrl_cc_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arready(ddr4_mem02_ctrl_cc_M_AXI_ARREADY),
        .m_axi_arvalid(ddr4_mem02_ctrl_cc_M_AXI_ARVALID),
        .m_axi_awaddr(ddr4_mem02_ctrl_cc_M_AXI_AWADDR),
        .m_axi_awprot(NLW_ddr4_mem02_ctrl_cc_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awready(ddr4_mem02_ctrl_cc_M_AXI_AWREADY),
        .m_axi_awvalid(ddr4_mem02_ctrl_cc_M_AXI_AWVALID),
        .m_axi_bready(ddr4_mem02_ctrl_cc_M_AXI_BREADY),
        .m_axi_bresp(ddr4_mem02_ctrl_cc_M_AXI_BRESP),
        .m_axi_bvalid(ddr4_mem02_ctrl_cc_M_AXI_BVALID),
        .m_axi_rdata(ddr4_mem02_ctrl_cc_M_AXI_RDATA),
        .m_axi_rready(ddr4_mem02_ctrl_cc_M_AXI_RREADY),
        .m_axi_rresp(ddr4_mem02_ctrl_cc_M_AXI_RRESP),
        .m_axi_rvalid(ddr4_mem02_ctrl_cc_M_AXI_RVALID),
        .m_axi_wdata(ddr4_mem02_ctrl_cc_M_AXI_WDATA),
        .m_axi_wready(ddr4_mem02_ctrl_cc_M_AXI_WREADY),
        .m_axi_wstrb(NLW_ddr4_mem02_ctrl_cc_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wvalid(ddr4_mem02_ctrl_cc_M_AXI_WVALID),
        .s_axi_aclk(aclk1),
        .s_axi_araddr(vip_ctrl_DDR4_MEM02_M_AXI_ARADDR),
        .s_axi_aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .s_axi_arprot(vip_ctrl_DDR4_MEM02_M_AXI_ARPROT),
        .s_axi_arready(vip_ctrl_DDR4_MEM02_M_AXI_ARREADY),
        .s_axi_arvalid(vip_ctrl_DDR4_MEM02_M_AXI_ARVALID),
        .s_axi_awaddr(vip_ctrl_DDR4_MEM02_M_AXI_AWADDR),
        .s_axi_awprot(vip_ctrl_DDR4_MEM02_M_AXI_AWPROT),
        .s_axi_awready(vip_ctrl_DDR4_MEM02_M_AXI_AWREADY),
        .s_axi_awvalid(vip_ctrl_DDR4_MEM02_M_AXI_AWVALID),
        .s_axi_bready(vip_ctrl_DDR4_MEM02_M_AXI_BREADY),
        .s_axi_bresp(vip_ctrl_DDR4_MEM02_M_AXI_BRESP),
        .s_axi_bvalid(vip_ctrl_DDR4_MEM02_M_AXI_BVALID),
        .s_axi_rdata(vip_ctrl_DDR4_MEM02_M_AXI_RDATA),
        .s_axi_rready(vip_ctrl_DDR4_MEM02_M_AXI_RREADY),
        .s_axi_rresp(vip_ctrl_DDR4_MEM02_M_AXI_RRESP),
        .s_axi_rvalid(vip_ctrl_DDR4_MEM02_M_AXI_RVALID),
        .s_axi_wdata(vip_ctrl_DDR4_MEM02_M_AXI_WDATA),
        .s_axi_wready(vip_ctrl_DDR4_MEM02_M_AXI_WREADY),
        .s_axi_wstrb(vip_ctrl_DDR4_MEM02_M_AXI_WSTRB),
        .s_axi_wvalid(vip_ctrl_DDR4_MEM02_M_AXI_WVALID));
  (* X_CORE_INFO = "axi_crossbar_v2_1_22_axi_crossbar,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_interconnect_ddrmem_ctrl_0 interconnect_ddrmem_ctrl
       (.aclk(aclk1),
        .aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .m_axi_araddr({interconnect_ddrmem_ctrl_M02_AXI_ARADDR,interconnect_ddrmem_ctrl_M01_AXI_ARADDR,interconnect_ddrmem_ctrl_M00_AXI_ARADDR}),
        .m_axi_arprot({interconnect_ddrmem_ctrl_M02_AXI_ARPROT,interconnect_ddrmem_ctrl_M01_AXI_ARPROT,interconnect_ddrmem_ctrl_M00_AXI_ARPROT}),
        .m_axi_arready({interconnect_ddrmem_ctrl_M02_AXI_ARREADY,interconnect_ddrmem_ctrl_M01_AXI_ARREADY,interconnect_ddrmem_ctrl_M00_AXI_ARREADY}),
        .m_axi_arvalid({interconnect_ddrmem_ctrl_M02_AXI_ARVALID,interconnect_ddrmem_ctrl_M01_AXI_ARVALID,interconnect_ddrmem_ctrl_M00_AXI_ARVALID}),
        .m_axi_awaddr({interconnect_ddrmem_ctrl_M02_AXI_AWADDR,interconnect_ddrmem_ctrl_M01_AXI_AWADDR,interconnect_ddrmem_ctrl_M00_AXI_AWADDR}),
        .m_axi_awprot({interconnect_ddrmem_ctrl_M02_AXI_AWPROT,interconnect_ddrmem_ctrl_M01_AXI_AWPROT,interconnect_ddrmem_ctrl_M00_AXI_AWPROT}),
        .m_axi_awready({interconnect_ddrmem_ctrl_M02_AXI_AWREADY,interconnect_ddrmem_ctrl_M01_AXI_AWREADY,interconnect_ddrmem_ctrl_M00_AXI_AWREADY}),
        .m_axi_awvalid({interconnect_ddrmem_ctrl_M02_AXI_AWVALID,interconnect_ddrmem_ctrl_M01_AXI_AWVALID,interconnect_ddrmem_ctrl_M00_AXI_AWVALID}),
        .m_axi_bready({interconnect_ddrmem_ctrl_M02_AXI_BREADY,interconnect_ddrmem_ctrl_M01_AXI_BREADY,interconnect_ddrmem_ctrl_M00_AXI_BREADY}),
        .m_axi_bresp({interconnect_ddrmem_ctrl_M02_AXI_BRESP,interconnect_ddrmem_ctrl_M01_AXI_BRESP,interconnect_ddrmem_ctrl_M00_AXI_BRESP}),
        .m_axi_bvalid({interconnect_ddrmem_ctrl_M02_AXI_BVALID,interconnect_ddrmem_ctrl_M01_AXI_BVALID,interconnect_ddrmem_ctrl_M00_AXI_BVALID}),
        .m_axi_rdata({interconnect_ddrmem_ctrl_M02_AXI_RDATA,interconnect_ddrmem_ctrl_M01_AXI_RDATA,interconnect_ddrmem_ctrl_M00_AXI_RDATA}),
        .m_axi_rready({interconnect_ddrmem_ctrl_M02_AXI_RREADY,interconnect_ddrmem_ctrl_M01_AXI_RREADY,interconnect_ddrmem_ctrl_M00_AXI_RREADY}),
        .m_axi_rresp({interconnect_ddrmem_ctrl_M02_AXI_RRESP,interconnect_ddrmem_ctrl_M01_AXI_RRESP,interconnect_ddrmem_ctrl_M00_AXI_RRESP}),
        .m_axi_rvalid({interconnect_ddrmem_ctrl_M02_AXI_RVALID,interconnect_ddrmem_ctrl_M01_AXI_RVALID,interconnect_ddrmem_ctrl_M00_AXI_RVALID}),
        .m_axi_wdata({interconnect_ddrmem_ctrl_M02_AXI_WDATA,interconnect_ddrmem_ctrl_M01_AXI_WDATA,interconnect_ddrmem_ctrl_M00_AXI_WDATA}),
        .m_axi_wready({interconnect_ddrmem_ctrl_M02_AXI_WREADY,interconnect_ddrmem_ctrl_M01_AXI_WREADY,interconnect_ddrmem_ctrl_M00_AXI_WREADY}),
        .m_axi_wstrb({interconnect_ddrmem_ctrl_M02_AXI_WSTRB,interconnect_ddrmem_ctrl_M01_AXI_WSTRB,interconnect_ddrmem_ctrl_M00_AXI_WSTRB}),
        .m_axi_wvalid({interconnect_ddrmem_ctrl_M02_AXI_WVALID,interconnect_ddrmem_ctrl_M01_AXI_WVALID,interconnect_ddrmem_ctrl_M00_AXI_WVALID}),
        .s_axi_araddr(S_AXI_CTRL_araddr),
        .s_axi_arprot(S_AXI_CTRL_arprot),
        .s_axi_arready(S_AXI_CTRL_arready),
        .s_axi_arvalid(S_AXI_CTRL_arvalid),
        .s_axi_awaddr(S_AXI_CTRL_awaddr),
        .s_axi_awprot(S_AXI_CTRL_awprot),
        .s_axi_awready(S_AXI_CTRL_awready),
        .s_axi_awvalid(S_AXI_CTRL_awvalid),
        .s_axi_bready(S_AXI_CTRL_bready),
        .s_axi_bresp(S_AXI_CTRL_bresp),
        .s_axi_bvalid(S_AXI_CTRL_bvalid),
        .s_axi_rdata(S_AXI_CTRL_rdata),
        .s_axi_rready(S_AXI_CTRL_rready),
        .s_axi_rresp(S_AXI_CTRL_rresp),
        .s_axi_rvalid(S_AXI_CTRL_rvalid),
        .s_axi_wdata(S_AXI_CTRL_wdata),
        .s_axi_wready(S_AXI_CTRL_wready),
        .s_axi_wstrb(S_AXI_CTRL_wstrb),
        .s_axi_wvalid(S_AXI_CTRL_wvalid));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_ctrl_interconnect_0 psr_ctrl_interconnect
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_ctrl_interconnect_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .interconnect_aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_ctrl_interconnect_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_ctrl_interconnect_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_ctrl_interconnect_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk1));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_ddr4_mem00_0 psr_ddr4_mem00
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_ddr4_mem00_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(vip_ui_rst_DDR4_MEM00_rst_out),
        .interconnect_aresetn(psr_ddr4_mem00_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_ddr4_mem00_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_ddr4_mem00_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_ddr4_mem00_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(ddr4_mem00_ui_clk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_ddr4_mem01_0 psr_ddr4_mem01
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_ddr4_mem01_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(vip_ui_rst_DDR4_MEM01_rst_out),
        .interconnect_aresetn(psr_ddr4_mem01_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_ddr4_mem01_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_ddr4_mem01_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_ddr4_mem01_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(ddr4_mem01_ui_clk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_ddr4_mem02_0 psr_ddr4_mem02
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_ddr4_mem02_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(vip_ui_rst_DDR4_MEM02_rst_out),
        .interconnect_aresetn(psr_ddr4_mem02_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_ddr4_mem02_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_ddr4_mem02_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_ddr4_mem02_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(ddr4_mem02_ui_clk));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_DDR4_MEM00_0 vip_DDR4_MEM00
       (.aclk(ddr4_mem00_ui_clk),
        .aresetn(psr_ddr4_mem00_interconnect_aresetn),
        .m_axi_araddr(vip_DDR4_MEM00_M_AXI_ARADDR),
        .m_axi_arburst(vip_DDR4_MEM00_M_AXI_ARBURST),
        .m_axi_arcache(vip_DDR4_MEM00_M_AXI_ARCACHE),
        .m_axi_arlen(vip_DDR4_MEM00_M_AXI_ARLEN),
        .m_axi_arlock(vip_DDR4_MEM00_M_AXI_ARLOCK),
        .m_axi_arprot(vip_DDR4_MEM00_M_AXI_ARPROT),
        .m_axi_arqos(vip_DDR4_MEM00_M_AXI_ARQOS),
        .m_axi_arready(vip_DDR4_MEM00_M_AXI_ARREADY),
        .m_axi_arvalid(vip_DDR4_MEM00_M_AXI_ARVALID),
        .m_axi_awaddr(vip_DDR4_MEM00_M_AXI_AWADDR),
        .m_axi_awburst(vip_DDR4_MEM00_M_AXI_AWBURST),
        .m_axi_awcache(vip_DDR4_MEM00_M_AXI_AWCACHE),
        .m_axi_awlen(vip_DDR4_MEM00_M_AXI_AWLEN),
        .m_axi_awlock(vip_DDR4_MEM00_M_AXI_AWLOCK),
        .m_axi_awprot(vip_DDR4_MEM00_M_AXI_AWPROT),
        .m_axi_awqos(vip_DDR4_MEM00_M_AXI_AWQOS),
        .m_axi_awready(vip_DDR4_MEM00_M_AXI_AWREADY),
        .m_axi_awvalid(vip_DDR4_MEM00_M_AXI_AWVALID),
        .m_axi_bready(vip_DDR4_MEM00_M_AXI_BREADY),
        .m_axi_bresp(vip_DDR4_MEM00_M_AXI_BRESP),
        .m_axi_bvalid(vip_DDR4_MEM00_M_AXI_BVALID),
        .m_axi_rdata(vip_DDR4_MEM00_M_AXI_RDATA),
        .m_axi_rlast(vip_DDR4_MEM00_M_AXI_RLAST),
        .m_axi_rready(vip_DDR4_MEM00_M_AXI_RREADY),
        .m_axi_rresp(vip_DDR4_MEM00_M_AXI_RRESP),
        .m_axi_rvalid(vip_DDR4_MEM00_M_AXI_RVALID),
        .m_axi_wdata(vip_DDR4_MEM00_M_AXI_WDATA),
        .m_axi_wlast(vip_DDR4_MEM00_M_AXI_WLAST),
        .m_axi_wready(vip_DDR4_MEM00_M_AXI_WREADY),
        .m_axi_wstrb(vip_DDR4_MEM00_M_AXI_WSTRB),
        .m_axi_wvalid(vip_DDR4_MEM00_M_AXI_WVALID),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos(S_AXI_arqos),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos(S_AXI_awqos),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_DDR4_MEM01_0 vip_DDR4_MEM01
       (.aclk(ddr4_mem01_ui_clk),
        .aresetn(psr_ddr4_mem01_interconnect_aresetn),
        .m_axi_araddr(vip_DDR4_MEM01_M_AXI_ARADDR),
        .m_axi_arburst(vip_DDR4_MEM01_M_AXI_ARBURST),
        .m_axi_arcache(vip_DDR4_MEM01_M_AXI_ARCACHE),
        .m_axi_arlen(vip_DDR4_MEM01_M_AXI_ARLEN),
        .m_axi_arlock(vip_DDR4_MEM01_M_AXI_ARLOCK),
        .m_axi_arprot(vip_DDR4_MEM01_M_AXI_ARPROT),
        .m_axi_arqos(vip_DDR4_MEM01_M_AXI_ARQOS),
        .m_axi_arready(vip_DDR4_MEM01_M_AXI_ARREADY),
        .m_axi_arvalid(vip_DDR4_MEM01_M_AXI_ARVALID),
        .m_axi_awaddr(vip_DDR4_MEM01_M_AXI_AWADDR),
        .m_axi_awburst(vip_DDR4_MEM01_M_AXI_AWBURST),
        .m_axi_awcache(vip_DDR4_MEM01_M_AXI_AWCACHE),
        .m_axi_awlen(vip_DDR4_MEM01_M_AXI_AWLEN),
        .m_axi_awlock(vip_DDR4_MEM01_M_AXI_AWLOCK),
        .m_axi_awprot(vip_DDR4_MEM01_M_AXI_AWPROT),
        .m_axi_awqos(vip_DDR4_MEM01_M_AXI_AWQOS),
        .m_axi_awready(vip_DDR4_MEM01_M_AXI_AWREADY),
        .m_axi_awvalid(vip_DDR4_MEM01_M_AXI_AWVALID),
        .m_axi_bready(vip_DDR4_MEM01_M_AXI_BREADY),
        .m_axi_bresp(vip_DDR4_MEM01_M_AXI_BRESP),
        .m_axi_bvalid(vip_DDR4_MEM01_M_AXI_BVALID),
        .m_axi_rdata(vip_DDR4_MEM01_M_AXI_RDATA),
        .m_axi_rlast(vip_DDR4_MEM01_M_AXI_RLAST),
        .m_axi_rready(vip_DDR4_MEM01_M_AXI_RREADY),
        .m_axi_rresp(vip_DDR4_MEM01_M_AXI_RRESP),
        .m_axi_rvalid(vip_DDR4_MEM01_M_AXI_RVALID),
        .m_axi_wdata(vip_DDR4_MEM01_M_AXI_WDATA),
        .m_axi_wlast(vip_DDR4_MEM01_M_AXI_WLAST),
        .m_axi_wready(vip_DDR4_MEM01_M_AXI_WREADY),
        .m_axi_wstrb(vip_DDR4_MEM01_M_AXI_WSTRB),
        .m_axi_wvalid(vip_DDR4_MEM01_M_AXI_WVALID),
        .s_axi_araddr(S_AXI1_araddr),
        .s_axi_arburst(S_AXI1_arburst),
        .s_axi_arcache(S_AXI1_arcache),
        .s_axi_arlen(S_AXI1_arlen),
        .s_axi_arlock(S_AXI1_arlock),
        .s_axi_arprot(S_AXI1_arprot),
        .s_axi_arqos(S_AXI1_arqos),
        .s_axi_arready(S_AXI1_arready),
        .s_axi_arvalid(S_AXI1_arvalid),
        .s_axi_awaddr(S_AXI1_awaddr),
        .s_axi_awburst(S_AXI1_awburst),
        .s_axi_awcache(S_AXI1_awcache),
        .s_axi_awlen(S_AXI1_awlen),
        .s_axi_awlock(S_AXI1_awlock),
        .s_axi_awprot(S_AXI1_awprot),
        .s_axi_awqos(S_AXI1_awqos),
        .s_axi_awready(S_AXI1_awready),
        .s_axi_awvalid(S_AXI1_awvalid),
        .s_axi_bready(S_AXI1_bready),
        .s_axi_bresp(S_AXI1_bresp),
        .s_axi_bvalid(S_AXI1_bvalid),
        .s_axi_rdata(S_AXI1_rdata),
        .s_axi_rlast(S_AXI1_rlast),
        .s_axi_rready(S_AXI1_rready),
        .s_axi_rresp(S_AXI1_rresp),
        .s_axi_rvalid(S_AXI1_rvalid),
        .s_axi_wdata(S_AXI1_wdata),
        .s_axi_wlast(S_AXI1_wlast),
        .s_axi_wready(S_AXI1_wready),
        .s_axi_wstrb(S_AXI1_wstrb),
        .s_axi_wvalid(S_AXI1_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_DDR4_MEM02_0 vip_DDR4_MEM02
       (.aclk(ddr4_mem02_ui_clk),
        .aresetn(psr_ddr4_mem02_interconnect_aresetn),
        .m_axi_araddr(vip_DDR4_MEM02_M_AXI_ARADDR),
        .m_axi_arburst(vip_DDR4_MEM02_M_AXI_ARBURST),
        .m_axi_arcache(vip_DDR4_MEM02_M_AXI_ARCACHE),
        .m_axi_arlen(vip_DDR4_MEM02_M_AXI_ARLEN),
        .m_axi_arlock(vip_DDR4_MEM02_M_AXI_ARLOCK),
        .m_axi_arprot(vip_DDR4_MEM02_M_AXI_ARPROT),
        .m_axi_arqos(vip_DDR4_MEM02_M_AXI_ARQOS),
        .m_axi_arready(vip_DDR4_MEM02_M_AXI_ARREADY),
        .m_axi_arvalid(vip_DDR4_MEM02_M_AXI_ARVALID),
        .m_axi_awaddr(vip_DDR4_MEM02_M_AXI_AWADDR),
        .m_axi_awburst(vip_DDR4_MEM02_M_AXI_AWBURST),
        .m_axi_awcache(vip_DDR4_MEM02_M_AXI_AWCACHE),
        .m_axi_awlen(vip_DDR4_MEM02_M_AXI_AWLEN),
        .m_axi_awlock(vip_DDR4_MEM02_M_AXI_AWLOCK),
        .m_axi_awprot(vip_DDR4_MEM02_M_AXI_AWPROT),
        .m_axi_awqos(vip_DDR4_MEM02_M_AXI_AWQOS),
        .m_axi_awready(vip_DDR4_MEM02_M_AXI_AWREADY),
        .m_axi_awvalid(vip_DDR4_MEM02_M_AXI_AWVALID),
        .m_axi_bready(vip_DDR4_MEM02_M_AXI_BREADY),
        .m_axi_bresp(vip_DDR4_MEM02_M_AXI_BRESP),
        .m_axi_bvalid(vip_DDR4_MEM02_M_AXI_BVALID),
        .m_axi_rdata(vip_DDR4_MEM02_M_AXI_RDATA),
        .m_axi_rlast(vip_DDR4_MEM02_M_AXI_RLAST),
        .m_axi_rready(vip_DDR4_MEM02_M_AXI_RREADY),
        .m_axi_rresp(vip_DDR4_MEM02_M_AXI_RRESP),
        .m_axi_rvalid(vip_DDR4_MEM02_M_AXI_RVALID),
        .m_axi_wdata(vip_DDR4_MEM02_M_AXI_WDATA),
        .m_axi_wlast(vip_DDR4_MEM02_M_AXI_WLAST),
        .m_axi_wready(vip_DDR4_MEM02_M_AXI_WREADY),
        .m_axi_wstrb(vip_DDR4_MEM02_M_AXI_WSTRB),
        .m_axi_wvalid(vip_DDR4_MEM02_M_AXI_WVALID),
        .s_axi_araddr(S_AXI2_araddr),
        .s_axi_arburst(S_AXI2_arburst),
        .s_axi_arcache(S_AXI2_arcache),
        .s_axi_arlen(S_AXI2_arlen),
        .s_axi_arlock(S_AXI2_arlock),
        .s_axi_arprot(S_AXI2_arprot),
        .s_axi_arqos(S_AXI2_arqos),
        .s_axi_arready(S_AXI2_arready),
        .s_axi_arvalid(S_AXI2_arvalid),
        .s_axi_awaddr(S_AXI2_awaddr),
        .s_axi_awburst(S_AXI2_awburst),
        .s_axi_awcache(S_AXI2_awcache),
        .s_axi_awlen(S_AXI2_awlen),
        .s_axi_awlock(S_AXI2_awlock),
        .s_axi_awprot(S_AXI2_awprot),
        .s_axi_awqos(S_AXI2_awqos),
        .s_axi_awready(S_AXI2_awready),
        .s_axi_awvalid(S_AXI2_awvalid),
        .s_axi_bready(S_AXI2_bready),
        .s_axi_bresp(S_AXI2_bresp),
        .s_axi_bvalid(S_AXI2_bvalid),
        .s_axi_rdata(S_AXI2_rdata),
        .s_axi_rlast(S_AXI2_rlast),
        .s_axi_rready(S_AXI2_rready),
        .s_axi_rresp(S_AXI2_rresp),
        .s_axi_rvalid(S_AXI2_rvalid),
        .s_axi_wdata(S_AXI2_wdata),
        .s_axi_wlast(S_AXI2_wlast),
        .s_axi_wready(S_AXI2_wready),
        .s_axi_wstrb(S_AXI2_wstrb),
        .s_axi_wvalid(S_AXI2_wvalid));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ctrl_DDR4_MEM00_0 vip_ctrl_DDR4_MEM00
       (.aclk(aclk1),
        .aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .m_axi_araddr(vip_ctrl_DDR4_MEM00_M_AXI_ARADDR),
        .m_axi_arprot(vip_ctrl_DDR4_MEM00_M_AXI_ARPROT),
        .m_axi_arready(vip_ctrl_DDR4_MEM00_M_AXI_ARREADY),
        .m_axi_arvalid(vip_ctrl_DDR4_MEM00_M_AXI_ARVALID),
        .m_axi_awaddr(vip_ctrl_DDR4_MEM00_M_AXI_AWADDR),
        .m_axi_awprot(vip_ctrl_DDR4_MEM00_M_AXI_AWPROT),
        .m_axi_awready(vip_ctrl_DDR4_MEM00_M_AXI_AWREADY),
        .m_axi_awvalid(vip_ctrl_DDR4_MEM00_M_AXI_AWVALID),
        .m_axi_bready(vip_ctrl_DDR4_MEM00_M_AXI_BREADY),
        .m_axi_bresp(vip_ctrl_DDR4_MEM00_M_AXI_BRESP),
        .m_axi_bvalid(vip_ctrl_DDR4_MEM00_M_AXI_BVALID),
        .m_axi_rdata(vip_ctrl_DDR4_MEM00_M_AXI_RDATA),
        .m_axi_rready(vip_ctrl_DDR4_MEM00_M_AXI_RREADY),
        .m_axi_rresp(vip_ctrl_DDR4_MEM00_M_AXI_RRESP),
        .m_axi_rvalid(vip_ctrl_DDR4_MEM00_M_AXI_RVALID),
        .m_axi_wdata(vip_ctrl_DDR4_MEM00_M_AXI_WDATA),
        .m_axi_wready(vip_ctrl_DDR4_MEM00_M_AXI_WREADY),
        .m_axi_wstrb(vip_ctrl_DDR4_MEM00_M_AXI_WSTRB),
        .m_axi_wvalid(vip_ctrl_DDR4_MEM00_M_AXI_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,interconnect_ddrmem_ctrl_M00_AXI_ARADDR}),
        .s_axi_arprot(interconnect_ddrmem_ctrl_M00_AXI_ARPROT),
        .s_axi_arready(interconnect_ddrmem_ctrl_M00_AXI_ARREADY),
        .s_axi_arvalid(interconnect_ddrmem_ctrl_M00_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,interconnect_ddrmem_ctrl_M00_AXI_AWADDR}),
        .s_axi_awprot(interconnect_ddrmem_ctrl_M00_AXI_AWPROT),
        .s_axi_awready(interconnect_ddrmem_ctrl_M00_AXI_AWREADY),
        .s_axi_awvalid(interconnect_ddrmem_ctrl_M00_AXI_AWVALID),
        .s_axi_bready(interconnect_ddrmem_ctrl_M00_AXI_BREADY),
        .s_axi_bresp(interconnect_ddrmem_ctrl_M00_AXI_BRESP),
        .s_axi_bvalid(interconnect_ddrmem_ctrl_M00_AXI_BVALID),
        .s_axi_rdata(interconnect_ddrmem_ctrl_M00_AXI_RDATA),
        .s_axi_rready(interconnect_ddrmem_ctrl_M00_AXI_RREADY),
        .s_axi_rresp(interconnect_ddrmem_ctrl_M00_AXI_RRESP),
        .s_axi_rvalid(interconnect_ddrmem_ctrl_M00_AXI_RVALID),
        .s_axi_wdata(interconnect_ddrmem_ctrl_M00_AXI_WDATA),
        .s_axi_wready(interconnect_ddrmem_ctrl_M00_AXI_WREADY),
        .s_axi_wstrb(interconnect_ddrmem_ctrl_M00_AXI_WSTRB),
        .s_axi_wvalid(interconnect_ddrmem_ctrl_M00_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ctrl_DDR4_MEM01_0 vip_ctrl_DDR4_MEM01
       (.aclk(aclk1),
        .aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .m_axi_araddr(vip_ctrl_DDR4_MEM01_M_AXI_ARADDR),
        .m_axi_arprot(vip_ctrl_DDR4_MEM01_M_AXI_ARPROT),
        .m_axi_arready(vip_ctrl_DDR4_MEM01_M_AXI_ARREADY),
        .m_axi_arvalid(vip_ctrl_DDR4_MEM01_M_AXI_ARVALID),
        .m_axi_awaddr(vip_ctrl_DDR4_MEM01_M_AXI_AWADDR),
        .m_axi_awprot(vip_ctrl_DDR4_MEM01_M_AXI_AWPROT),
        .m_axi_awready(vip_ctrl_DDR4_MEM01_M_AXI_AWREADY),
        .m_axi_awvalid(vip_ctrl_DDR4_MEM01_M_AXI_AWVALID),
        .m_axi_bready(vip_ctrl_DDR4_MEM01_M_AXI_BREADY),
        .m_axi_bresp(vip_ctrl_DDR4_MEM01_M_AXI_BRESP),
        .m_axi_bvalid(vip_ctrl_DDR4_MEM01_M_AXI_BVALID),
        .m_axi_rdata(vip_ctrl_DDR4_MEM01_M_AXI_RDATA),
        .m_axi_rready(vip_ctrl_DDR4_MEM01_M_AXI_RREADY),
        .m_axi_rresp(vip_ctrl_DDR4_MEM01_M_AXI_RRESP),
        .m_axi_rvalid(vip_ctrl_DDR4_MEM01_M_AXI_RVALID),
        .m_axi_wdata(vip_ctrl_DDR4_MEM01_M_AXI_WDATA),
        .m_axi_wready(vip_ctrl_DDR4_MEM01_M_AXI_WREADY),
        .m_axi_wstrb(vip_ctrl_DDR4_MEM01_M_AXI_WSTRB),
        .m_axi_wvalid(vip_ctrl_DDR4_MEM01_M_AXI_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,interconnect_ddrmem_ctrl_M01_AXI_ARADDR}),
        .s_axi_arprot(interconnect_ddrmem_ctrl_M01_AXI_ARPROT),
        .s_axi_arready(interconnect_ddrmem_ctrl_M01_AXI_ARREADY),
        .s_axi_arvalid(interconnect_ddrmem_ctrl_M01_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,interconnect_ddrmem_ctrl_M01_AXI_AWADDR}),
        .s_axi_awprot(interconnect_ddrmem_ctrl_M01_AXI_AWPROT),
        .s_axi_awready(interconnect_ddrmem_ctrl_M01_AXI_AWREADY),
        .s_axi_awvalid(interconnect_ddrmem_ctrl_M01_AXI_AWVALID),
        .s_axi_bready(interconnect_ddrmem_ctrl_M01_AXI_BREADY),
        .s_axi_bresp(interconnect_ddrmem_ctrl_M01_AXI_BRESP),
        .s_axi_bvalid(interconnect_ddrmem_ctrl_M01_AXI_BVALID),
        .s_axi_rdata(interconnect_ddrmem_ctrl_M01_AXI_RDATA),
        .s_axi_rready(interconnect_ddrmem_ctrl_M01_AXI_RREADY),
        .s_axi_rresp(interconnect_ddrmem_ctrl_M01_AXI_RRESP),
        .s_axi_rvalid(interconnect_ddrmem_ctrl_M01_AXI_RVALID),
        .s_axi_wdata(interconnect_ddrmem_ctrl_M01_AXI_WDATA),
        .s_axi_wready(interconnect_ddrmem_ctrl_M01_AXI_WREADY),
        .s_axi_wstrb(interconnect_ddrmem_ctrl_M01_AXI_WSTRB),
        .s_axi_wvalid(interconnect_ddrmem_ctrl_M01_AXI_WVALID));
  (* X_CORE_INFO = "axi_vip_v1_1_7_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ctrl_DDR4_MEM02_0 vip_ctrl_DDR4_MEM02
       (.aclk(aclk1),
        .aresetn(psr_ctrl_interconnect_interconnect_aresetn),
        .m_axi_araddr(vip_ctrl_DDR4_MEM02_M_AXI_ARADDR),
        .m_axi_arprot(vip_ctrl_DDR4_MEM02_M_AXI_ARPROT),
        .m_axi_arready(vip_ctrl_DDR4_MEM02_M_AXI_ARREADY),
        .m_axi_arvalid(vip_ctrl_DDR4_MEM02_M_AXI_ARVALID),
        .m_axi_awaddr(vip_ctrl_DDR4_MEM02_M_AXI_AWADDR),
        .m_axi_awprot(vip_ctrl_DDR4_MEM02_M_AXI_AWPROT),
        .m_axi_awready(vip_ctrl_DDR4_MEM02_M_AXI_AWREADY),
        .m_axi_awvalid(vip_ctrl_DDR4_MEM02_M_AXI_AWVALID),
        .m_axi_bready(vip_ctrl_DDR4_MEM02_M_AXI_BREADY),
        .m_axi_bresp(vip_ctrl_DDR4_MEM02_M_AXI_BRESP),
        .m_axi_bvalid(vip_ctrl_DDR4_MEM02_M_AXI_BVALID),
        .m_axi_rdata(vip_ctrl_DDR4_MEM02_M_AXI_RDATA),
        .m_axi_rready(vip_ctrl_DDR4_MEM02_M_AXI_RREADY),
        .m_axi_rresp(vip_ctrl_DDR4_MEM02_M_AXI_RRESP),
        .m_axi_rvalid(vip_ctrl_DDR4_MEM02_M_AXI_RVALID),
        .m_axi_wdata(vip_ctrl_DDR4_MEM02_M_AXI_WDATA),
        .m_axi_wready(vip_ctrl_DDR4_MEM02_M_AXI_WREADY),
        .m_axi_wstrb(vip_ctrl_DDR4_MEM02_M_AXI_WSTRB),
        .m_axi_wvalid(vip_ctrl_DDR4_MEM02_M_AXI_WVALID),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,interconnect_ddrmem_ctrl_M02_AXI_ARADDR}),
        .s_axi_arprot(interconnect_ddrmem_ctrl_M02_AXI_ARPROT),
        .s_axi_arready(interconnect_ddrmem_ctrl_M02_AXI_ARREADY),
        .s_axi_arvalid(interconnect_ddrmem_ctrl_M02_AXI_ARVALID),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,interconnect_ddrmem_ctrl_M02_AXI_AWADDR}),
        .s_axi_awprot(interconnect_ddrmem_ctrl_M02_AXI_AWPROT),
        .s_axi_awready(interconnect_ddrmem_ctrl_M02_AXI_AWREADY),
        .s_axi_awvalid(interconnect_ddrmem_ctrl_M02_AXI_AWVALID),
        .s_axi_bready(interconnect_ddrmem_ctrl_M02_AXI_BREADY),
        .s_axi_bresp(interconnect_ddrmem_ctrl_M02_AXI_BRESP),
        .s_axi_bvalid(interconnect_ddrmem_ctrl_M02_AXI_BVALID),
        .s_axi_rdata(interconnect_ddrmem_ctrl_M02_AXI_RDATA),
        .s_axi_rready(interconnect_ddrmem_ctrl_M02_AXI_RREADY),
        .s_axi_rresp(interconnect_ddrmem_ctrl_M02_AXI_RRESP),
        .s_axi_rvalid(interconnect_ddrmem_ctrl_M02_AXI_RVALID),
        .s_axi_wdata(interconnect_ddrmem_ctrl_M02_AXI_WDATA),
        .s_axi_wready(interconnect_ddrmem_ctrl_M02_AXI_WREADY),
        .s_axi_wstrb(interconnect_ddrmem_ctrl_M02_AXI_WSTRB),
        .s_axi_wvalid(interconnect_ddrmem_ctrl_M02_AXI_WVALID));
  (* X_CORE_INFO = "clk_vip_v1_0_2_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_clk_DDR4_MEM00_0 vip_ui_clk_DDR4_MEM00
       (.clk_in(ddr4_mem00_c0_ddr4_ui_clk),
        .clk_out(ddr4_mem00_ui_clk));
  (* X_CORE_INFO = "clk_vip_v1_0_2_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_clk_DDR4_MEM01_0 vip_ui_clk_DDR4_MEM01
       (.clk_in(ddr4_mem01_c0_ddr4_ui_clk),
        .clk_out(ddr4_mem01_ui_clk));
  (* X_CORE_INFO = "clk_vip_v1_0_2_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_clk_DDR4_MEM02_0 vip_ui_clk_DDR4_MEM02
       (.clk_in(ddr4_mem02_c0_ddr4_ui_clk),
        .clk_out(ddr4_mem02_ui_clk));
  (* X_CORE_INFO = "rst_vip_v1_0_4_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_rst_DDR4_MEM00_0 vip_ui_rst_DDR4_MEM00
       (.rst_in(ddr4_mem00_c0_ddr4_ui_clk_sync_rst),
        .rst_out(vip_ui_rst_DDR4_MEM00_rst_out));
  (* X_CORE_INFO = "rst_vip_v1_0_4_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_rst_DDR4_MEM01_0 vip_ui_rst_DDR4_MEM01
       (.rst_in(ddr4_mem01_c0_ddr4_ui_clk_sync_rst),
        .rst_out(vip_ui_rst_DDR4_MEM01_rst_out));
  (* X_CORE_INFO = "rst_vip_v1_0_4_top,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_vip_ui_rst_DDR4_MEM02_0 vip_ui_rst_DDR4_MEM02
       (.rst_in(ddr4_mem02_c0_ddr4_ui_clk_sync_rst),
        .rst_out(vip_ui_rst_DDR4_MEM02_rst_out));
endmodule

(* CHECK_LICENSE_TYPE = "pfm_dynamic_memory_subsystem_0,bd_d216,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "bd_d216,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aclk1,
    aclk2,
    aresetn,
    S_AXI_CTRL_awaddr,
    S_AXI_CTRL_awprot,
    S_AXI_CTRL_awvalid,
    S_AXI_CTRL_awready,
    S_AXI_CTRL_wdata,
    S_AXI_CTRL_wstrb,
    S_AXI_CTRL_wvalid,
    S_AXI_CTRL_wready,
    S_AXI_CTRL_bresp,
    S_AXI_CTRL_bvalid,
    S_AXI_CTRL_bready,
    S_AXI_CTRL_araddr,
    S_AXI_CTRL_arprot,
    S_AXI_CTRL_arvalid,
    S_AXI_CTRL_arready,
    S_AXI_CTRL_rdata,
    S_AXI_CTRL_rresp,
    S_AXI_CTRL_rvalid,
    S_AXI_CTRL_rready,
    S00_AXI_awaddr,
    S00_AXI_awlen,
    S00_AXI_awburst,
    S00_AXI_awlock,
    S00_AXI_awcache,
    S00_AXI_awprot,
    S00_AXI_awregion,
    S00_AXI_awqos,
    S00_AXI_awvalid,
    S00_AXI_awready,
    S00_AXI_wdata,
    S00_AXI_wstrb,
    S00_AXI_wlast,
    S00_AXI_wvalid,
    S00_AXI_wready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_bready,
    S00_AXI_araddr,
    S00_AXI_arlen,
    S00_AXI_arburst,
    S00_AXI_arlock,
    S00_AXI_arcache,
    S00_AXI_arprot,
    S00_AXI_arregion,
    S00_AXI_arqos,
    S00_AXI_arvalid,
    S00_AXI_arready,
    S00_AXI_rdata,
    S00_AXI_rresp,
    S00_AXI_rlast,
    S00_AXI_rvalid,
    S00_AXI_rready,
    S01_AXI_awaddr,
    S01_AXI_awlen,
    S01_AXI_awburst,
    S01_AXI_awlock,
    S01_AXI_awcache,
    S01_AXI_awprot,
    S01_AXI_awregion,
    S01_AXI_awqos,
    S01_AXI_awvalid,
    S01_AXI_awready,
    S01_AXI_wdata,
    S01_AXI_wstrb,
    S01_AXI_wlast,
    S01_AXI_wvalid,
    S01_AXI_wready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_bready,
    S01_AXI_araddr,
    S01_AXI_arlen,
    S01_AXI_arburst,
    S01_AXI_arlock,
    S01_AXI_arcache,
    S01_AXI_arprot,
    S01_AXI_arregion,
    S01_AXI_arqos,
    S01_AXI_arvalid,
    S01_AXI_arready,
    S01_AXI_rdata,
    S01_AXI_rresp,
    S01_AXI_rlast,
    S01_AXI_rvalid,
    S01_AXI_rready,
    S02_AXI_awaddr,
    S02_AXI_awlen,
    S02_AXI_awburst,
    S02_AXI_awlock,
    S02_AXI_awcache,
    S02_AXI_awprot,
    S02_AXI_awregion,
    S02_AXI_awqos,
    S02_AXI_awvalid,
    S02_AXI_awready,
    S02_AXI_wdata,
    S02_AXI_wstrb,
    S02_AXI_wlast,
    S02_AXI_wvalid,
    S02_AXI_wready,
    S02_AXI_bresp,
    S02_AXI_bvalid,
    S02_AXI_bready,
    S02_AXI_araddr,
    S02_AXI_arlen,
    S02_AXI_arburst,
    S02_AXI_arlock,
    S02_AXI_arcache,
    S02_AXI_arprot,
    S02_AXI_arregion,
    S02_AXI_arqos,
    S02_AXI_arvalid,
    S02_AXI_arready,
    S02_AXI_rdata,
    S02_AXI_rresp,
    S02_AXI_rlast,
    S02_AXI_rvalid,
    S02_AXI_rready,
    S03_AXI_awaddr,
    S03_AXI_awlen,
    S03_AXI_awburst,
    S03_AXI_awlock,
    S03_AXI_awcache,
    S03_AXI_awprot,
    S03_AXI_awregion,
    S03_AXI_awqos,
    S03_AXI_awvalid,
    S03_AXI_awready,
    S03_AXI_wdata,
    S03_AXI_wstrb,
    S03_AXI_wlast,
    S03_AXI_wvalid,
    S03_AXI_wready,
    S03_AXI_bresp,
    S03_AXI_bvalid,
    S03_AXI_bready,
    S03_AXI_araddr,
    S03_AXI_arlen,
    S03_AXI_arburst,
    S03_AXI_arlock,
    S03_AXI_arcache,
    S03_AXI_arprot,
    S03_AXI_arregion,
    S03_AXI_arqos,
    S03_AXI_arvalid,
    S03_AXI_arready,
    S03_AXI_rdata,
    S03_AXI_rresp,
    S03_AXI_rlast,
    S03_AXI_rvalid,
    S03_AXI_rready,
    S04_AXI_awaddr,
    S04_AXI_awlen,
    S04_AXI_awlock,
    S04_AXI_awcache,
    S04_AXI_awprot,
    S04_AXI_awregion,
    S04_AXI_awqos,
    S04_AXI_awvalid,
    S04_AXI_awready,
    S04_AXI_wdata,
    S04_AXI_wstrb,
    S04_AXI_wlast,
    S04_AXI_wvalid,
    S04_AXI_wready,
    S04_AXI_bresp,
    S04_AXI_bvalid,
    S04_AXI_bready,
    S04_AXI_araddr,
    S04_AXI_arlen,
    S04_AXI_arlock,
    S04_AXI_arcache,
    S04_AXI_arprot,
    S04_AXI_arregion,
    S04_AXI_arqos,
    S04_AXI_arvalid,
    S04_AXI_arready,
    S04_AXI_rdata,
    S04_AXI_rresp,
    S04_AXI_rlast,
    S04_AXI_rvalid,
    S04_AXI_rready,
    S05_AXI_awaddr,
    S05_AXI_awlen,
    S05_AXI_awlock,
    S05_AXI_awcache,
    S05_AXI_awprot,
    S05_AXI_awregion,
    S05_AXI_awqos,
    S05_AXI_awvalid,
    S05_AXI_awready,
    S05_AXI_wdata,
    S05_AXI_wstrb,
    S05_AXI_wlast,
    S05_AXI_wvalid,
    S05_AXI_wready,
    S05_AXI_bresp,
    S05_AXI_bvalid,
    S05_AXI_bready,
    S05_AXI_araddr,
    S05_AXI_arlen,
    S05_AXI_arlock,
    S05_AXI_arcache,
    S05_AXI_arprot,
    S05_AXI_arregion,
    S05_AXI_arqos,
    S05_AXI_arvalid,
    S05_AXI_arready,
    S05_AXI_rdata,
    S05_AXI_rresp,
    S05_AXI_rlast,
    S05_AXI_rvalid,
    S05_AXI_rready,
    S06_AXI_awaddr,
    S06_AXI_awlen,
    S06_AXI_awlock,
    S06_AXI_awcache,
    S06_AXI_awprot,
    S06_AXI_awregion,
    S06_AXI_awqos,
    S06_AXI_awvalid,
    S06_AXI_awready,
    S06_AXI_wdata,
    S06_AXI_wstrb,
    S06_AXI_wlast,
    S06_AXI_wvalid,
    S06_AXI_wready,
    S06_AXI_bresp,
    S06_AXI_bvalid,
    S06_AXI_bready,
    S06_AXI_araddr,
    S06_AXI_arlen,
    S06_AXI_arlock,
    S06_AXI_arcache,
    S06_AXI_arprot,
    S06_AXI_arregion,
    S06_AXI_arqos,
    S06_AXI_arvalid,
    S06_AXI_arready,
    S06_AXI_rdata,
    S06_AXI_rresp,
    S06_AXI_rlast,
    S06_AXI_rvalid,
    S06_AXI_rready,
    S07_AXI_awaddr,
    S07_AXI_awlen,
    S07_AXI_awlock,
    S07_AXI_awcache,
    S07_AXI_awprot,
    S07_AXI_awregion,
    S07_AXI_awqos,
    S07_AXI_awvalid,
    S07_AXI_awready,
    S07_AXI_wdata,
    S07_AXI_wstrb,
    S07_AXI_wlast,
    S07_AXI_wvalid,
    S07_AXI_wready,
    S07_AXI_bresp,
    S07_AXI_bvalid,
    S07_AXI_bready,
    S07_AXI_araddr,
    S07_AXI_arlen,
    S07_AXI_arlock,
    S07_AXI_arcache,
    S07_AXI_arprot,
    S07_AXI_arregion,
    S07_AXI_arqos,
    S07_AXI_arvalid,
    S07_AXI_arready,
    S07_AXI_rdata,
    S07_AXI_rresp,
    S07_AXI_rlast,
    S07_AXI_rvalid,
    S07_AXI_rready,
    DDR4_MEM00_dq,
    DDR4_MEM00_dqs_t,
    DDR4_MEM00_dqs_c,
    DDR4_MEM00_adr,
    DDR4_MEM00_ba,
    DDR4_MEM00_bg,
    DDR4_MEM00_act_n,
    DDR4_MEM00_reset_n,
    DDR4_MEM00_ck_t,
    DDR4_MEM00_ck_c,
    DDR4_MEM00_cke,
    DDR4_MEM00_cs_n,
    DDR4_MEM00_odt,
    DDR4_MEM00_par,
    DDR4_MEM01_dq,
    DDR4_MEM01_dqs_t,
    DDR4_MEM01_dqs_c,
    DDR4_MEM01_adr,
    DDR4_MEM01_ba,
    DDR4_MEM01_bg,
    DDR4_MEM01_act_n,
    DDR4_MEM01_reset_n,
    DDR4_MEM01_ck_t,
    DDR4_MEM01_ck_c,
    DDR4_MEM01_cke,
    DDR4_MEM01_cs_n,
    DDR4_MEM01_odt,
    DDR4_MEM01_par,
    DDR4_MEM02_dq,
    DDR4_MEM02_dqs_t,
    DDR4_MEM02_dqs_c,
    DDR4_MEM02_adr,
    DDR4_MEM02_ba,
    DDR4_MEM02_bg,
    DDR4_MEM02_act_n,
    DDR4_MEM02_reset_n,
    DDR4_MEM02_ck_t,
    DDR4_MEM02_ck_c,
    DDR4_MEM02_cke,
    DDR4_MEM02_cs_n,
    DDR4_MEM02_odt,
    DDR4_MEM02_par,
    DDR4_MEM00_DIFF_CLK_clk_p,
    DDR4_MEM00_DIFF_CLK_clk_n,
    DDR4_MEM01_DIFF_CLK_clk_p,
    DDR4_MEM01_DIFF_CLK_clk_n,
    DDR4_MEM02_DIFF_CLK_clk_p,
    DDR4_MEM02_DIFF_CLK_clk_n,
    ddr4_mem00_ui_clk,
    ddr4_mem01_ui_clk,
    ddr4_mem02_ui_clk,
    ddr4_mem00_sys_rst,
    ddr4_mem01_sys_rst,
    ddr4_mem02_sys_rst,
    ddr4_mem_calib_complete,
    ddr4_mem_calib_vec,
    M00_AXI_awaddr,
    M00_AXI_awlen,
    M00_AXI_awsize,
    M00_AXI_awburst,
    M00_AXI_awlock,
    M00_AXI_awcache,
    M00_AXI_awprot,
    M00_AXI_awregion,
    M00_AXI_awqos,
    M00_AXI_awvalid,
    M00_AXI_awready,
    M00_AXI_wdata,
    M00_AXI_wstrb,
    M00_AXI_wlast,
    M00_AXI_wvalid,
    M00_AXI_wready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_bready,
    M00_AXI_araddr,
    M00_AXI_arlen,
    M00_AXI_arsize,
    M00_AXI_arburst,
    M00_AXI_arlock,
    M00_AXI_arcache,
    M00_AXI_arprot,
    M00_AXI_arregion,
    M00_AXI_arqos,
    M00_AXI_arvalid,
    M00_AXI_arready,
    M00_AXI_rdata,
    M00_AXI_rresp,
    M00_AXI_rlast,
    M00_AXI_rvalid,
    M00_AXI_rready,
    S00_AXI_arid,
    S00_AXI_awid,
    S00_AXI_bid,
    S00_AXI_rid,
    S01_AXI_arid,
    S01_AXI_awid,
    S01_AXI_bid,
    S01_AXI_rid,
    S02_AXI_arid,
    S02_AXI_awid,
    S02_AXI_bid,
    S02_AXI_rid,
    S03_AXI_arid,
    S03_AXI_awid,
    S03_AXI_bid,
    S03_AXI_rid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, ASSOCIATED_BUSIF S00_AXI:S01_AXI:S02_AXI:S03_AXI:S04_AXI:S05_AXI:S06_AXI:S07_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk1, FREQ_HZ 50925925, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_sysclks_clk_out2, ASSOCIATED_BUSIF S_AXI_CTRL, INSERT_VIP 0" *) input aclk1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.aclk2 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.aclk2, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN pfm_dynamic_ddrmem_1_c0_ddr4_ui_clk, ASSOCIATED_BUSIF M00_AXI, INSERT_VIP 0, ASSOCIATED_CLKEN m_sc_aclken" *) input aclk2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWADDR" *) input [24:0]S_AXI_CTRL_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWPROT" *) input [2:0]S_AXI_CTRL_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWVALID" *) input [0:0]S_AXI_CTRL_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL AWREADY" *) output [0:0]S_AXI_CTRL_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WDATA" *) input [31:0]S_AXI_CTRL_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WSTRB" *) input [3:0]S_AXI_CTRL_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WVALID" *) input [0:0]S_AXI_CTRL_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL WREADY" *) output [0:0]S_AXI_CTRL_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BRESP" *) output [1:0]S_AXI_CTRL_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BVALID" *) output [0:0]S_AXI_CTRL_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL BREADY" *) input [0:0]S_AXI_CTRL_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARADDR" *) input [24:0]S_AXI_CTRL_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARPROT" *) input [2:0]S_AXI_CTRL_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARVALID" *) input [0:0]S_AXI_CTRL_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL ARREADY" *) output [0:0]S_AXI_CTRL_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RDATA" *) output [31:0]S_AXI_CTRL_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RRESP" *) output [1:0]S_AXI_CTRL_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RVALID" *) output [0:0]S_AXI_CTRL_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_CTRL RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_CTRL, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50925925, ID_WIDTH 0, ADDR_WIDTH 25, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_sysclks_clk_out2, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [0:0]S_AXI_CTRL_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [38:0]S00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN" *) input [7:0]S00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST" *) input [1:0]S00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK" *) input [0:0]S00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE" *) input [3:0]S00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]S00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREGION" *) input [3:0]S00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS" *) input [3:0]S00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input S00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output S00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [511:0]S00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [63:0]S00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WLAST" *) input S00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input S00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output S00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]S00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output S00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input S00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [38:0]S00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN" *) input [7:0]S00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST" *) input [1:0]S00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK" *) input [0:0]S00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE" *) input [3:0]S00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]S00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREGION" *) input [3:0]S00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS" *) input [3:0]S00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input S00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output S00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [511:0]S00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]S00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RLAST" *) output S00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output S00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input S00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWADDR" *) input [38:0]S01_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLEN" *) input [7:0]S01_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWBURST" *) input [1:0]S01_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWLOCK" *) input [0:0]S01_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWCACHE" *) input [3:0]S01_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWPROT" *) input [2:0]S01_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREGION" *) input [3:0]S01_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWQOS" *) input [3:0]S01_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWVALID" *) input S01_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWREADY" *) output S01_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WDATA" *) input [511:0]S01_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WSTRB" *) input [63:0]S01_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WLAST" *) input S01_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WVALID" *) input S01_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI WREADY" *) output S01_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BRESP" *) output [1:0]S01_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BVALID" *) output S01_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BREADY" *) input S01_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARADDR" *) input [38:0]S01_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLEN" *) input [7:0]S01_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARBURST" *) input [1:0]S01_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARLOCK" *) input [0:0]S01_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARCACHE" *) input [3:0]S01_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARPROT" *) input [2:0]S01_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREGION" *) input [3:0]S01_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARQOS" *) input [3:0]S01_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARVALID" *) input S01_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARREADY" *) output S01_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RDATA" *) output [511:0]S01_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RRESP" *) output [1:0]S01_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RLAST" *) output S01_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RVALID" *) output S01_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RREADY" *) input S01_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWADDR" *) input [38:0]S02_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLEN" *) input [7:0]S02_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWBURST" *) input [1:0]S02_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWLOCK" *) input [0:0]S02_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWCACHE" *) input [3:0]S02_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWPROT" *) input [2:0]S02_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREGION" *) input [3:0]S02_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWQOS" *) input [3:0]S02_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWVALID" *) input S02_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWREADY" *) output S02_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WDATA" *) input [511:0]S02_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WSTRB" *) input [63:0]S02_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WLAST" *) input S02_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WVALID" *) input S02_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI WREADY" *) output S02_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BRESP" *) output [1:0]S02_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BVALID" *) output S02_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BREADY" *) input S02_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARADDR" *) input [38:0]S02_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLEN" *) input [7:0]S02_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARBURST" *) input [1:0]S02_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARLOCK" *) input [0:0]S02_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARCACHE" *) input [3:0]S02_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARPROT" *) input [2:0]S02_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREGION" *) input [3:0]S02_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARQOS" *) input [3:0]S02_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARVALID" *) input S02_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARREADY" *) output S02_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RDATA" *) output [511:0]S02_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RRESP" *) output [1:0]S02_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RLAST" *) output S02_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RVALID" *) output S02_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RREADY" *) input S02_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWADDR" *) input [38:0]S03_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLEN" *) input [7:0]S03_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWBURST" *) input [1:0]S03_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWLOCK" *) input [0:0]S03_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWCACHE" *) input [3:0]S03_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWPROT" *) input [2:0]S03_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREGION" *) input [3:0]S03_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWQOS" *) input [3:0]S03_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWVALID" *) input S03_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWREADY" *) output S03_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WDATA" *) input [511:0]S03_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WSTRB" *) input [63:0]S03_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WLAST" *) input S03_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WVALID" *) input S03_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI WREADY" *) output S03_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BRESP" *) output [1:0]S03_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BVALID" *) output S03_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BREADY" *) input S03_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARADDR" *) input [38:0]S03_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLEN" *) input [7:0]S03_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARBURST" *) input [1:0]S03_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARLOCK" *) input [0:0]S03_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARCACHE" *) input [3:0]S03_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARPROT" *) input [2:0]S03_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREGION" *) input [3:0]S03_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARQOS" *) input [3:0]S03_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARVALID" *) input S03_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARREADY" *) output S03_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RDATA" *) output [511:0]S03_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RRESP" *) output [1:0]S03_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RLAST" *) output S03_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RVALID" *) output S03_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RREADY" *) input S03_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWADDR" *) input [38:0]S04_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLEN" *) input [7:0]S04_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWLOCK" *) input [0:0]S04_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWCACHE" *) input [3:0]S04_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWPROT" *) input [2:0]S04_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWREGION" *) input [3:0]S04_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWQOS" *) input [3:0]S04_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWVALID" *) input S04_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI AWREADY" *) output S04_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WDATA" *) input [31:0]S04_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WSTRB" *) input [3:0]S04_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WLAST" *) input S04_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WVALID" *) input S04_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI WREADY" *) output S04_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BRESP" *) output [1:0]S04_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BVALID" *) output S04_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI BREADY" *) input S04_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARADDR" *) input [38:0]S04_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLEN" *) input [7:0]S04_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARLOCK" *) input [0:0]S04_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARCACHE" *) input [3:0]S04_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARPROT" *) input [2:0]S04_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREGION" *) input [3:0]S04_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARQOS" *) input [3:0]S04_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARVALID" *) input S04_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI ARREADY" *) output S04_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RDATA" *) output [31:0]S04_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RRESP" *) output [1:0]S04_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RLAST" *) output S04_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RVALID" *) output S04_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S04_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S04_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S04_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWADDR" *) input [38:0]S05_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLEN" *) input [7:0]S05_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWLOCK" *) input [0:0]S05_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWCACHE" *) input [3:0]S05_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWPROT" *) input [2:0]S05_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREGION" *) input [3:0]S05_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWQOS" *) input [3:0]S05_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWVALID" *) input S05_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI AWREADY" *) output S05_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WDATA" *) input [31:0]S05_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WSTRB" *) input [3:0]S05_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WLAST" *) input S05_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WVALID" *) input S05_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI WREADY" *) output S05_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BRESP" *) output [1:0]S05_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BVALID" *) output S05_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI BREADY" *) input S05_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARADDR" *) input [38:0]S05_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLEN" *) input [7:0]S05_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARLOCK" *) input [0:0]S05_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARCACHE" *) input [3:0]S05_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARPROT" *) input [2:0]S05_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARREGION" *) input [3:0]S05_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARQOS" *) input [3:0]S05_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARVALID" *) input S05_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI ARREADY" *) output S05_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RDATA" *) output [31:0]S05_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RRESP" *) output [1:0]S05_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RLAST" *) output S05_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RVALID" *) output S05_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S05_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S05_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S05_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWADDR" *) input [38:0]S06_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLEN" *) input [7:0]S06_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWLOCK" *) input [0:0]S06_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWCACHE" *) input [3:0]S06_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWPROT" *) input [2:0]S06_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREGION" *) input [3:0]S06_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWQOS" *) input [3:0]S06_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWVALID" *) input S06_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI AWREADY" *) output S06_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WDATA" *) input [31:0]S06_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WSTRB" *) input [3:0]S06_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WLAST" *) input S06_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WVALID" *) input S06_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI WREADY" *) output S06_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BRESP" *) output [1:0]S06_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BVALID" *) output S06_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI BREADY" *) input S06_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARADDR" *) input [38:0]S06_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLEN" *) input [7:0]S06_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARLOCK" *) input [0:0]S06_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARCACHE" *) input [3:0]S06_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARPROT" *) input [2:0]S06_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREGION" *) input [3:0]S06_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARQOS" *) input [3:0]S06_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARVALID" *) input S06_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI ARREADY" *) output S06_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RDATA" *) output [31:0]S06_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RRESP" *) output [1:0]S06_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RLAST" *) output S06_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RVALID" *) output S06_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S06_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S06_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S06_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWADDR" *) input [38:0]S07_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWLEN" *) input [7:0]S07_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWLOCK" *) input [0:0]S07_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWCACHE" *) input [3:0]S07_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWPROT" *) input [2:0]S07_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWREGION" *) input [3:0]S07_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWQOS" *) input [3:0]S07_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWVALID" *) input S07_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI AWREADY" *) output S07_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WDATA" *) input [31:0]S07_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WSTRB" *) input [3:0]S07_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WLAST" *) input S07_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WVALID" *) input S07_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI WREADY" *) output S07_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BRESP" *) output [1:0]S07_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BVALID" *) output S07_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI BREADY" *) input S07_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARADDR" *) input [38:0]S07_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARLEN" *) input [7:0]S07_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARLOCK" *) input [0:0]S07_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARCACHE" *) input [3:0]S07_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARPROT" *) input [2:0]S07_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARREGION" *) input [3:0]S07_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARQOS" *) input [3:0]S07_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARVALID" *) input S07_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI ARREADY" *) output S07_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RDATA" *) output [31:0]S07_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RRESP" *) output [1:0]S07_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RLAST" *) output S07_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RVALID" *) output S07_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S07_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S07_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input S07_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQ" *) inout [71:0]DDR4_MEM00_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQS_T" *) inout [17:0]DDR4_MEM00_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 DQS_C" *) inout [17:0]DDR4_MEM00_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ADR" *) output [16:0]DDR4_MEM00_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 BA" *) output [1:0]DDR4_MEM00_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 BG" *) output [1:0]DDR4_MEM00_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ACT_N" *) output DDR4_MEM00_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 RESET_N" *) output DDR4_MEM00_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CK_T" *) output [0:0]DDR4_MEM00_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CK_C" *) output [0:0]DDR4_MEM00_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CKE" *) output [0:0]DDR4_MEM00_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 CS_N" *) output [0:0]DDR4_MEM00_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 ODT" *) output [0:0]DDR4_MEM00_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM00 PAR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM00, CAN_DEBUG false, TIMEPERIOD_PS 833, MEMORY_TYPE RDIMMs, MEMORY_PART MTA18ASF2G72PZ-2G3, DATA_WIDTH 72, CS_ENABLED true, DATA_MASK_ENABLED NONE, SLOT Single, CUSTOM_PARTS no_file_loaded, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME RD_PRI_REG, CAS_LATENCY 17, CAS_WRITE_LATENCY 12" *) output DDR4_MEM00_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 DQ" *) inout [71:0]DDR4_MEM01_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 DQS_T" *) inout [17:0]DDR4_MEM01_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 DQS_C" *) inout [17:0]DDR4_MEM01_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 ADR" *) output [16:0]DDR4_MEM01_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 BA" *) output [1:0]DDR4_MEM01_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 BG" *) output [1:0]DDR4_MEM01_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 ACT_N" *) output DDR4_MEM01_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 RESET_N" *) output DDR4_MEM01_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 CK_T" *) output [0:0]DDR4_MEM01_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 CK_C" *) output [0:0]DDR4_MEM01_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 CKE" *) output [0:0]DDR4_MEM01_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 CS_N" *) output [0:0]DDR4_MEM01_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 ODT" *) output [0:0]DDR4_MEM01_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM01 PAR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM01, CAN_DEBUG false, TIMEPERIOD_PS 833, MEMORY_TYPE RDIMMs, MEMORY_PART MTA18ASF2G72PZ-2G3, DATA_WIDTH 72, CS_ENABLED true, DATA_MASK_ENABLED NONE, SLOT Single, CUSTOM_PARTS no_file_loaded, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME RD_PRI_REG, CAS_LATENCY 17, CAS_WRITE_LATENCY 12" *) output DDR4_MEM01_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 DQ" *) inout [71:0]DDR4_MEM02_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 DQS_T" *) inout [17:0]DDR4_MEM02_dqs_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 DQS_C" *) inout [17:0]DDR4_MEM02_dqs_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 ADR" *) output [16:0]DDR4_MEM02_adr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 BA" *) output [1:0]DDR4_MEM02_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 BG" *) output [1:0]DDR4_MEM02_bg;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 ACT_N" *) output DDR4_MEM02_act_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 RESET_N" *) output DDR4_MEM02_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 CK_T" *) output [0:0]DDR4_MEM02_ck_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 CK_C" *) output [0:0]DDR4_MEM02_ck_c;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 CKE" *) output [0:0]DDR4_MEM02_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 CS_N" *) output [0:0]DDR4_MEM02_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 ODT" *) output [0:0]DDR4_MEM02_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddr4:1.0 DDR4_MEM02 PAR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM02, CAN_DEBUG false, TIMEPERIOD_PS 833, MEMORY_TYPE RDIMMs, MEMORY_PART MTA18ASF2G72PZ-2G3, DATA_WIDTH 72, CS_ENABLED true, DATA_MASK_ENABLED NONE, SLOT Single, CUSTOM_PARTS no_file_loaded, MEM_ADDR_MAP ROW_COLUMN_BANK_INTLV, BURST_LENGTH 8, AXI_ARBITRATION_SCHEME RD_PRI_REG, CAS_LATENCY 17, CAS_WRITE_LATENCY 12" *) output DDR4_MEM02_par;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM00_DIFF_CLK CLK_P" *) input DDR4_MEM00_DIFF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM00_DIFF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM00_DIFF_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input DDR4_MEM00_DIFF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM01_DIFF_CLK CLK_P" *) input DDR4_MEM01_DIFF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM01_DIFF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM01_DIFF_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input DDR4_MEM01_DIFF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM02_DIFF_CLK CLK_P" *) input DDR4_MEM02_DIFF_CLK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 DDR4_MEM02_DIFF_CLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR4_MEM02_DIFF_CLK, CAN_DEBUG false, FREQ_HZ 300000000" *) input DDR4_MEM02_DIFF_CLK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ddr4_mem00_ui_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ddr4_mem00_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN bd_d216_ddr4_mem00_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) output ddr4_mem00_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ddr4_mem01_ui_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ddr4_mem01_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN bd_d216_ddr4_mem01_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) output ddr4_mem01_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ddr4_mem02_ui_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ddr4_mem02_ui_clk, FREQ_HZ 300000000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN bd_d216_ddr4_mem02_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) output ddr4_mem02_ui_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ddr4_mem00_sys_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ddr4_mem00_sys_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ddr4_mem00_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ddr4_mem01_sys_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ddr4_mem01_sys_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ddr4_mem01_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.ddr4_mem02_sys_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.ddr4_mem02_sys_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ddr4_mem02_sys_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ddr4_mem_calib_complete DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ddr4_mem_calib_complete, LAYERED_METADATA undef" *) output ddr4_mem_calib_complete;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ddr4_mem_calib_vec DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ddr4_mem_calib_vec, LAYERED_METADATA undef, PortWidth 3" *) output [2:0]ddr4_mem_calib_vec;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *) output [38:0]M00_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *) output [7:0]M00_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *) output [2:0]M00_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *) output [1:0]M00_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *) output [0:0]M00_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *) output [3:0]M00_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *) output [2:0]M00_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREGION" *) output [3:0]M00_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *) output [3:0]M00_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *) output M00_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *) input M00_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *) output [511:0]M00_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *) output [63:0]M00_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *) output M00_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *) output M00_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *) input M00_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *) input [1:0]M00_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *) input M00_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *) output M00_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *) output [38:0]M00_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *) output [7:0]M00_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *) output [2:0]M00_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *) output [1:0]M00_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *) output [0:0]M00_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *) output [3:0]M00_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *) output [2:0]M00_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREGION" *) output [3:0]M00_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *) output [3:0]M00_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *) output M00_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *) input M00_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *) input [511:0]M00_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *) input [1:0]M00_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *) input M00_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *) input M00_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 0, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_ddrmem_1_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output M00_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARID" *) input [3:0]S00_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWID" *) input [3:0]S00_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BID" *) output [3:0]S00_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 4, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [3:0]S00_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI ARID" *) input [3:0]S01_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI AWID" *) input [3:0]S01_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI BID" *) output [3:0]S01_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S01_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S01_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 4, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [3:0]S01_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI ARID" *) input [3:0]S02_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI AWID" *) input [3:0]S02_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI BID" *) output [3:0]S02_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S02_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S02_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 4, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [3:0]S02_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI ARID" *) input [3:0]S03_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI AWID" *) input [3:0]S03_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI BID" *) output [3:0]S03_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S03_AXI RID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S03_AXI, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 300000000, ID_WIDTH 4, ADDR_WIDTH 39, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN pfm_dynamic_clkwiz_kernel_clk_out1, NUM_READ_THREADS 2, NUM_WRITE_THREADS 2, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [3:0]S03_AXI_rid;

  wire DDR4_MEM00_DIFF_CLK_clk_n;
  wire DDR4_MEM00_DIFF_CLK_clk_p;
  wire DDR4_MEM00_act_n;
  wire [16:0]DDR4_MEM00_adr;
  wire [1:0]DDR4_MEM00_ba;
  wire [1:0]DDR4_MEM00_bg;
  wire [0:0]DDR4_MEM00_ck_c;
  wire [0:0]DDR4_MEM00_ck_t;
  wire [0:0]DDR4_MEM00_cke;
  wire [0:0]DDR4_MEM00_cs_n;
  wire [71:0]DDR4_MEM00_dq;
  wire [17:0]DDR4_MEM00_dqs_c;
  wire [17:0]DDR4_MEM00_dqs_t;
  wire [0:0]DDR4_MEM00_odt;
  wire DDR4_MEM00_par;
  wire DDR4_MEM00_reset_n;
  wire DDR4_MEM01_DIFF_CLK_clk_n;
  wire DDR4_MEM01_DIFF_CLK_clk_p;
  wire DDR4_MEM01_act_n;
  wire [16:0]DDR4_MEM01_adr;
  wire [1:0]DDR4_MEM01_ba;
  wire [1:0]DDR4_MEM01_bg;
  wire [0:0]DDR4_MEM01_ck_c;
  wire [0:0]DDR4_MEM01_ck_t;
  wire [0:0]DDR4_MEM01_cke;
  wire [0:0]DDR4_MEM01_cs_n;
  wire [71:0]DDR4_MEM01_dq;
  wire [17:0]DDR4_MEM01_dqs_c;
  wire [17:0]DDR4_MEM01_dqs_t;
  wire [0:0]DDR4_MEM01_odt;
  wire DDR4_MEM01_par;
  wire DDR4_MEM01_reset_n;
  wire DDR4_MEM02_DIFF_CLK_clk_n;
  wire DDR4_MEM02_DIFF_CLK_clk_p;
  wire DDR4_MEM02_act_n;
  wire [16:0]DDR4_MEM02_adr;
  wire [1:0]DDR4_MEM02_ba;
  wire [1:0]DDR4_MEM02_bg;
  wire [0:0]DDR4_MEM02_ck_c;
  wire [0:0]DDR4_MEM02_ck_t;
  wire [0:0]DDR4_MEM02_cke;
  wire [0:0]DDR4_MEM02_cs_n;
  wire [71:0]DDR4_MEM02_dq;
  wire [17:0]DDR4_MEM02_dqs_c;
  wire [17:0]DDR4_MEM02_dqs_t;
  wire [0:0]DDR4_MEM02_odt;
  wire DDR4_MEM02_par;
  wire DDR4_MEM02_reset_n;
  wire [38:0]M00_AXI_araddr;
  wire [1:0]M00_AXI_arburst;
  wire [3:0]M00_AXI_arcache;
  wire [7:0]M00_AXI_arlen;
  wire [0:0]M00_AXI_arlock;
  wire [2:0]M00_AXI_arprot;
  wire [3:0]M00_AXI_arqos;
  wire M00_AXI_arready;
  wire [3:0]M00_AXI_arregion;
  wire [2:0]M00_AXI_arsize;
  wire M00_AXI_arvalid;
  wire [38:0]M00_AXI_awaddr;
  wire [1:0]M00_AXI_awburst;
  wire [3:0]M00_AXI_awcache;
  wire [7:0]M00_AXI_awlen;
  wire [0:0]M00_AXI_awlock;
  wire [2:0]M00_AXI_awprot;
  wire [3:0]M00_AXI_awqos;
  wire M00_AXI_awready;
  wire [3:0]M00_AXI_awregion;
  wire [2:0]M00_AXI_awsize;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [511:0]M00_AXI_rdata;
  wire M00_AXI_rlast;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [511:0]M00_AXI_wdata;
  wire M00_AXI_wlast;
  wire M00_AXI_wready;
  wire [63:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [38:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [3:0]S00_AXI_arid;
  wire [7:0]S00_AXI_arlen;
  wire [0:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire [3:0]S00_AXI_arqos;
  wire S00_AXI_arready;
  wire [3:0]S00_AXI_arregion;
  wire S00_AXI_arvalid;
  wire [38:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [3:0]S00_AXI_awid;
  wire [7:0]S00_AXI_awlen;
  wire [0:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire [3:0]S00_AXI_awqos;
  wire S00_AXI_awready;
  wire [3:0]S00_AXI_awregion;
  wire S00_AXI_awvalid;
  wire [3:0]S00_AXI_bid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [511:0]S00_AXI_rdata;
  wire [3:0]S00_AXI_rid;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [511:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [63:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [38:0]S01_AXI_araddr;
  wire [1:0]S01_AXI_arburst;
  wire [3:0]S01_AXI_arcache;
  wire [3:0]S01_AXI_arid;
  wire [7:0]S01_AXI_arlen;
  wire [0:0]S01_AXI_arlock;
  wire [2:0]S01_AXI_arprot;
  wire [3:0]S01_AXI_arqos;
  wire S01_AXI_arready;
  wire [3:0]S01_AXI_arregion;
  wire S01_AXI_arvalid;
  wire [38:0]S01_AXI_awaddr;
  wire [1:0]S01_AXI_awburst;
  wire [3:0]S01_AXI_awcache;
  wire [3:0]S01_AXI_awid;
  wire [7:0]S01_AXI_awlen;
  wire [0:0]S01_AXI_awlock;
  wire [2:0]S01_AXI_awprot;
  wire [3:0]S01_AXI_awqos;
  wire S01_AXI_awready;
  wire [3:0]S01_AXI_awregion;
  wire S01_AXI_awvalid;
  wire [3:0]S01_AXI_bid;
  wire S01_AXI_bready;
  wire [1:0]S01_AXI_bresp;
  wire S01_AXI_bvalid;
  wire [511:0]S01_AXI_rdata;
  wire [3:0]S01_AXI_rid;
  wire S01_AXI_rlast;
  wire S01_AXI_rready;
  wire [1:0]S01_AXI_rresp;
  wire S01_AXI_rvalid;
  wire [511:0]S01_AXI_wdata;
  wire S01_AXI_wlast;
  wire S01_AXI_wready;
  wire [63:0]S01_AXI_wstrb;
  wire S01_AXI_wvalid;
  wire [38:0]S02_AXI_araddr;
  wire [1:0]S02_AXI_arburst;
  wire [3:0]S02_AXI_arcache;
  wire [3:0]S02_AXI_arid;
  wire [7:0]S02_AXI_arlen;
  wire [0:0]S02_AXI_arlock;
  wire [2:0]S02_AXI_arprot;
  wire [3:0]S02_AXI_arqos;
  wire S02_AXI_arready;
  wire [3:0]S02_AXI_arregion;
  wire S02_AXI_arvalid;
  wire [38:0]S02_AXI_awaddr;
  wire [1:0]S02_AXI_awburst;
  wire [3:0]S02_AXI_awcache;
  wire [3:0]S02_AXI_awid;
  wire [7:0]S02_AXI_awlen;
  wire [0:0]S02_AXI_awlock;
  wire [2:0]S02_AXI_awprot;
  wire [3:0]S02_AXI_awqos;
  wire S02_AXI_awready;
  wire [3:0]S02_AXI_awregion;
  wire S02_AXI_awvalid;
  wire [3:0]S02_AXI_bid;
  wire S02_AXI_bready;
  wire [1:0]S02_AXI_bresp;
  wire S02_AXI_bvalid;
  wire [511:0]S02_AXI_rdata;
  wire [3:0]S02_AXI_rid;
  wire S02_AXI_rlast;
  wire S02_AXI_rready;
  wire [1:0]S02_AXI_rresp;
  wire S02_AXI_rvalid;
  wire [511:0]S02_AXI_wdata;
  wire S02_AXI_wlast;
  wire S02_AXI_wready;
  wire [63:0]S02_AXI_wstrb;
  wire S02_AXI_wvalid;
  wire [38:0]S03_AXI_araddr;
  wire [1:0]S03_AXI_arburst;
  wire [3:0]S03_AXI_arcache;
  wire [3:0]S03_AXI_arid;
  wire [7:0]S03_AXI_arlen;
  wire [0:0]S03_AXI_arlock;
  wire [2:0]S03_AXI_arprot;
  wire [3:0]S03_AXI_arqos;
  wire S03_AXI_arready;
  wire [3:0]S03_AXI_arregion;
  wire S03_AXI_arvalid;
  wire [38:0]S03_AXI_awaddr;
  wire [1:0]S03_AXI_awburst;
  wire [3:0]S03_AXI_awcache;
  wire [3:0]S03_AXI_awid;
  wire [7:0]S03_AXI_awlen;
  wire [0:0]S03_AXI_awlock;
  wire [2:0]S03_AXI_awprot;
  wire [3:0]S03_AXI_awqos;
  wire S03_AXI_awready;
  wire [3:0]S03_AXI_awregion;
  wire S03_AXI_awvalid;
  wire [3:0]S03_AXI_bid;
  wire S03_AXI_bready;
  wire [1:0]S03_AXI_bresp;
  wire S03_AXI_bvalid;
  wire [511:0]S03_AXI_rdata;
  wire [3:0]S03_AXI_rid;
  wire S03_AXI_rlast;
  wire S03_AXI_rready;
  wire [1:0]S03_AXI_rresp;
  wire S03_AXI_rvalid;
  wire [511:0]S03_AXI_wdata;
  wire S03_AXI_wlast;
  wire S03_AXI_wready;
  wire [63:0]S03_AXI_wstrb;
  wire S03_AXI_wvalid;
  wire [38:0]S04_AXI_araddr;
  wire [3:0]S04_AXI_arcache;
  wire [7:0]S04_AXI_arlen;
  wire [0:0]S04_AXI_arlock;
  wire [2:0]S04_AXI_arprot;
  wire [3:0]S04_AXI_arqos;
  wire S04_AXI_arready;
  wire [3:0]S04_AXI_arregion;
  wire S04_AXI_arvalid;
  wire [38:0]S04_AXI_awaddr;
  wire [3:0]S04_AXI_awcache;
  wire [7:0]S04_AXI_awlen;
  wire [0:0]S04_AXI_awlock;
  wire [2:0]S04_AXI_awprot;
  wire [3:0]S04_AXI_awqos;
  wire S04_AXI_awready;
  wire [3:0]S04_AXI_awregion;
  wire S04_AXI_awvalid;
  wire S04_AXI_bready;
  wire [1:0]S04_AXI_bresp;
  wire S04_AXI_bvalid;
  wire [31:0]S04_AXI_rdata;
  wire S04_AXI_rlast;
  wire S04_AXI_rready;
  wire [1:0]S04_AXI_rresp;
  wire S04_AXI_rvalid;
  wire [31:0]S04_AXI_wdata;
  wire S04_AXI_wlast;
  wire S04_AXI_wready;
  wire [3:0]S04_AXI_wstrb;
  wire S04_AXI_wvalid;
  wire [38:0]S05_AXI_araddr;
  wire [3:0]S05_AXI_arcache;
  wire [7:0]S05_AXI_arlen;
  wire [0:0]S05_AXI_arlock;
  wire [2:0]S05_AXI_arprot;
  wire [3:0]S05_AXI_arqos;
  wire S05_AXI_arready;
  wire [3:0]S05_AXI_arregion;
  wire S05_AXI_arvalid;
  wire [38:0]S05_AXI_awaddr;
  wire [3:0]S05_AXI_awcache;
  wire [7:0]S05_AXI_awlen;
  wire [0:0]S05_AXI_awlock;
  wire [2:0]S05_AXI_awprot;
  wire [3:0]S05_AXI_awqos;
  wire S05_AXI_awready;
  wire [3:0]S05_AXI_awregion;
  wire S05_AXI_awvalid;
  wire S05_AXI_bready;
  wire [1:0]S05_AXI_bresp;
  wire S05_AXI_bvalid;
  wire [31:0]S05_AXI_rdata;
  wire S05_AXI_rlast;
  wire S05_AXI_rready;
  wire [1:0]S05_AXI_rresp;
  wire S05_AXI_rvalid;
  wire [31:0]S05_AXI_wdata;
  wire S05_AXI_wlast;
  wire S05_AXI_wready;
  wire [3:0]S05_AXI_wstrb;
  wire S05_AXI_wvalid;
  wire [38:0]S06_AXI_araddr;
  wire [3:0]S06_AXI_arcache;
  wire [7:0]S06_AXI_arlen;
  wire [0:0]S06_AXI_arlock;
  wire [2:0]S06_AXI_arprot;
  wire [3:0]S06_AXI_arqos;
  wire S06_AXI_arready;
  wire [3:0]S06_AXI_arregion;
  wire S06_AXI_arvalid;
  wire [38:0]S06_AXI_awaddr;
  wire [3:0]S06_AXI_awcache;
  wire [7:0]S06_AXI_awlen;
  wire [0:0]S06_AXI_awlock;
  wire [2:0]S06_AXI_awprot;
  wire [3:0]S06_AXI_awqos;
  wire S06_AXI_awready;
  wire [3:0]S06_AXI_awregion;
  wire S06_AXI_awvalid;
  wire S06_AXI_bready;
  wire [1:0]S06_AXI_bresp;
  wire S06_AXI_bvalid;
  wire [31:0]S06_AXI_rdata;
  wire S06_AXI_rlast;
  wire S06_AXI_rready;
  wire [1:0]S06_AXI_rresp;
  wire S06_AXI_rvalid;
  wire [31:0]S06_AXI_wdata;
  wire S06_AXI_wlast;
  wire S06_AXI_wready;
  wire [3:0]S06_AXI_wstrb;
  wire S06_AXI_wvalid;
  wire [38:0]S07_AXI_araddr;
  wire [3:0]S07_AXI_arcache;
  wire [7:0]S07_AXI_arlen;
  wire [0:0]S07_AXI_arlock;
  wire [2:0]S07_AXI_arprot;
  wire [3:0]S07_AXI_arqos;
  wire S07_AXI_arready;
  wire [3:0]S07_AXI_arregion;
  wire S07_AXI_arvalid;
  wire [38:0]S07_AXI_awaddr;
  wire [3:0]S07_AXI_awcache;
  wire [7:0]S07_AXI_awlen;
  wire [0:0]S07_AXI_awlock;
  wire [2:0]S07_AXI_awprot;
  wire [3:0]S07_AXI_awqos;
  wire S07_AXI_awready;
  wire [3:0]S07_AXI_awregion;
  wire S07_AXI_awvalid;
  wire S07_AXI_bready;
  wire [1:0]S07_AXI_bresp;
  wire S07_AXI_bvalid;
  wire [31:0]S07_AXI_rdata;
  wire S07_AXI_rlast;
  wire S07_AXI_rready;
  wire [1:0]S07_AXI_rresp;
  wire S07_AXI_rvalid;
  wire [31:0]S07_AXI_wdata;
  wire S07_AXI_wlast;
  wire S07_AXI_wready;
  wire [3:0]S07_AXI_wstrb;
  wire S07_AXI_wvalid;
  wire [24:0]S_AXI_CTRL_araddr;
  wire [2:0]S_AXI_CTRL_arprot;
  wire [0:0]S_AXI_CTRL_arready;
  wire [0:0]S_AXI_CTRL_arvalid;
  wire [24:0]S_AXI_CTRL_awaddr;
  wire [2:0]S_AXI_CTRL_awprot;
  wire [0:0]S_AXI_CTRL_awready;
  wire [0:0]S_AXI_CTRL_awvalid;
  wire [0:0]S_AXI_CTRL_bready;
  wire [1:0]S_AXI_CTRL_bresp;
  wire [0:0]S_AXI_CTRL_bvalid;
  wire [31:0]S_AXI_CTRL_rdata;
  wire [0:0]S_AXI_CTRL_rready;
  wire [1:0]S_AXI_CTRL_rresp;
  wire [0:0]S_AXI_CTRL_rvalid;
  wire [31:0]S_AXI_CTRL_wdata;
  wire [0:0]S_AXI_CTRL_wready;
  wire [3:0]S_AXI_CTRL_wstrb;
  wire [0:0]S_AXI_CTRL_wvalid;
  wire aclk;
  wire aclk1;
  wire aclk2;
  wire aresetn;
  wire ddr4_mem00_sys_rst;
  wire ddr4_mem00_ui_clk;
  wire ddr4_mem01_sys_rst;
  wire ddr4_mem01_ui_clk;
  wire ddr4_mem02_sys_rst;
  wire ddr4_mem02_ui_clk;
  wire ddr4_mem_calib_complete;
  wire [2:0]ddr4_mem_calib_vec;

  (* HW_HANDOFF = "pfm_dynamic_memory_subsystem_0.hwdef" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216 inst
       (.DDR4_MEM00_DIFF_CLK_clk_n(DDR4_MEM00_DIFF_CLK_clk_n),
        .DDR4_MEM00_DIFF_CLK_clk_p(DDR4_MEM00_DIFF_CLK_clk_p),
        .DDR4_MEM00_act_n(DDR4_MEM00_act_n),
        .DDR4_MEM00_adr(DDR4_MEM00_adr),
        .DDR4_MEM00_ba(DDR4_MEM00_ba),
        .DDR4_MEM00_bg(DDR4_MEM00_bg),
        .DDR4_MEM00_ck_c(DDR4_MEM00_ck_c),
        .DDR4_MEM00_ck_t(DDR4_MEM00_ck_t),
        .DDR4_MEM00_cke(DDR4_MEM00_cke),
        .DDR4_MEM00_cs_n(DDR4_MEM00_cs_n),
        .DDR4_MEM00_dq(DDR4_MEM00_dq),
        .DDR4_MEM00_dqs_c(DDR4_MEM00_dqs_c),
        .DDR4_MEM00_dqs_t(DDR4_MEM00_dqs_t),
        .DDR4_MEM00_odt(DDR4_MEM00_odt),
        .DDR4_MEM00_par(DDR4_MEM00_par),
        .DDR4_MEM00_reset_n(DDR4_MEM00_reset_n),
        .DDR4_MEM01_DIFF_CLK_clk_n(DDR4_MEM01_DIFF_CLK_clk_n),
        .DDR4_MEM01_DIFF_CLK_clk_p(DDR4_MEM01_DIFF_CLK_clk_p),
        .DDR4_MEM01_act_n(DDR4_MEM01_act_n),
        .DDR4_MEM01_adr(DDR4_MEM01_adr),
        .DDR4_MEM01_ba(DDR4_MEM01_ba),
        .DDR4_MEM01_bg(DDR4_MEM01_bg),
        .DDR4_MEM01_ck_c(DDR4_MEM01_ck_c),
        .DDR4_MEM01_ck_t(DDR4_MEM01_ck_t),
        .DDR4_MEM01_cke(DDR4_MEM01_cke),
        .DDR4_MEM01_cs_n(DDR4_MEM01_cs_n),
        .DDR4_MEM01_dq(DDR4_MEM01_dq),
        .DDR4_MEM01_dqs_c(DDR4_MEM01_dqs_c),
        .DDR4_MEM01_dqs_t(DDR4_MEM01_dqs_t),
        .DDR4_MEM01_odt(DDR4_MEM01_odt),
        .DDR4_MEM01_par(DDR4_MEM01_par),
        .DDR4_MEM01_reset_n(DDR4_MEM01_reset_n),
        .DDR4_MEM02_DIFF_CLK_clk_n(DDR4_MEM02_DIFF_CLK_clk_n),
        .DDR4_MEM02_DIFF_CLK_clk_p(DDR4_MEM02_DIFF_CLK_clk_p),
        .DDR4_MEM02_act_n(DDR4_MEM02_act_n),
        .DDR4_MEM02_adr(DDR4_MEM02_adr),
        .DDR4_MEM02_ba(DDR4_MEM02_ba),
        .DDR4_MEM02_bg(DDR4_MEM02_bg),
        .DDR4_MEM02_ck_c(DDR4_MEM02_ck_c),
        .DDR4_MEM02_ck_t(DDR4_MEM02_ck_t),
        .DDR4_MEM02_cke(DDR4_MEM02_cke),
        .DDR4_MEM02_cs_n(DDR4_MEM02_cs_n),
        .DDR4_MEM02_dq(DDR4_MEM02_dq),
        .DDR4_MEM02_dqs_c(DDR4_MEM02_dqs_c),
        .DDR4_MEM02_dqs_t(DDR4_MEM02_dqs_t),
        .DDR4_MEM02_odt(DDR4_MEM02_odt),
        .DDR4_MEM02_par(DDR4_MEM02_par),
        .DDR4_MEM02_reset_n(DDR4_MEM02_reset_n),
        .M00_AXI_araddr(M00_AXI_araddr),
        .M00_AXI_arburst(M00_AXI_arburst),
        .M00_AXI_arcache(M00_AXI_arcache),
        .M00_AXI_arlen(M00_AXI_arlen),
        .M00_AXI_arlock(M00_AXI_arlock),
        .M00_AXI_arprot(M00_AXI_arprot),
        .M00_AXI_arqos(M00_AXI_arqos),
        .M00_AXI_arready(M00_AXI_arready),
        .M00_AXI_arregion(M00_AXI_arregion),
        .M00_AXI_arsize(M00_AXI_arsize),
        .M00_AXI_arvalid(M00_AXI_arvalid),
        .M00_AXI_awaddr(M00_AXI_awaddr),
        .M00_AXI_awburst(M00_AXI_awburst),
        .M00_AXI_awcache(M00_AXI_awcache),
        .M00_AXI_awlen(M00_AXI_awlen),
        .M00_AXI_awlock(M00_AXI_awlock),
        .M00_AXI_awprot(M00_AXI_awprot),
        .M00_AXI_awqos(M00_AXI_awqos),
        .M00_AXI_awready(M00_AXI_awready),
        .M00_AXI_awregion(M00_AXI_awregion),
        .M00_AXI_awsize(M00_AXI_awsize),
        .M00_AXI_awvalid(M00_AXI_awvalid),
        .M00_AXI_bready(M00_AXI_bready),
        .M00_AXI_bresp(M00_AXI_bresp),
        .M00_AXI_bvalid(M00_AXI_bvalid),
        .M00_AXI_rdata(M00_AXI_rdata),
        .M00_AXI_rlast(M00_AXI_rlast),
        .M00_AXI_rready(M00_AXI_rready),
        .M00_AXI_rresp(M00_AXI_rresp),
        .M00_AXI_rvalid(M00_AXI_rvalid),
        .M00_AXI_wdata(M00_AXI_wdata),
        .M00_AXI_wlast(M00_AXI_wlast),
        .M00_AXI_wready(M00_AXI_wready),
        .M00_AXI_wstrb(M00_AXI_wstrb),
        .M00_AXI_wvalid(M00_AXI_wvalid),
        .S00_AXI_araddr(S00_AXI_araddr),
        .S00_AXI_arburst(S00_AXI_arburst),
        .S00_AXI_arcache(S00_AXI_arcache),
        .S00_AXI_arid(S00_AXI_arid),
        .S00_AXI_arlen(S00_AXI_arlen),
        .S00_AXI_arlock(S00_AXI_arlock),
        .S00_AXI_arprot(S00_AXI_arprot),
        .S00_AXI_arqos(S00_AXI_arqos),
        .S00_AXI_arready(S00_AXI_arready),
        .S00_AXI_arregion(S00_AXI_arregion),
        .S00_AXI_arvalid(S00_AXI_arvalid),
        .S00_AXI_awaddr(S00_AXI_awaddr),
        .S00_AXI_awburst(S00_AXI_awburst),
        .S00_AXI_awcache(S00_AXI_awcache),
        .S00_AXI_awid(S00_AXI_awid),
        .S00_AXI_awlen(S00_AXI_awlen),
        .S00_AXI_awlock(S00_AXI_awlock),
        .S00_AXI_awprot(S00_AXI_awprot),
        .S00_AXI_awqos(S00_AXI_awqos),
        .S00_AXI_awready(S00_AXI_awready),
        .S00_AXI_awregion(S00_AXI_awregion),
        .S00_AXI_awvalid(S00_AXI_awvalid),
        .S00_AXI_bid(S00_AXI_bid),
        .S00_AXI_bready(S00_AXI_bready),
        .S00_AXI_bresp(S00_AXI_bresp),
        .S00_AXI_bvalid(S00_AXI_bvalid),
        .S00_AXI_rdata(S00_AXI_rdata),
        .S00_AXI_rid(S00_AXI_rid),
        .S00_AXI_rlast(S00_AXI_rlast),
        .S00_AXI_rready(S00_AXI_rready),
        .S00_AXI_rresp(S00_AXI_rresp),
        .S00_AXI_rvalid(S00_AXI_rvalid),
        .S00_AXI_wdata(S00_AXI_wdata),
        .S00_AXI_wlast(S00_AXI_wlast),
        .S00_AXI_wready(S00_AXI_wready),
        .S00_AXI_wstrb(S00_AXI_wstrb),
        .S00_AXI_wvalid(S00_AXI_wvalid),
        .S01_AXI_araddr(S01_AXI_araddr),
        .S01_AXI_arburst(S01_AXI_arburst),
        .S01_AXI_arcache(S01_AXI_arcache),
        .S01_AXI_arid(S01_AXI_arid),
        .S01_AXI_arlen(S01_AXI_arlen),
        .S01_AXI_arlock(S01_AXI_arlock),
        .S01_AXI_arprot(S01_AXI_arprot),
        .S01_AXI_arqos(S01_AXI_arqos),
        .S01_AXI_arready(S01_AXI_arready),
        .S01_AXI_arregion(S01_AXI_arregion),
        .S01_AXI_arvalid(S01_AXI_arvalid),
        .S01_AXI_awaddr(S01_AXI_awaddr),
        .S01_AXI_awburst(S01_AXI_awburst),
        .S01_AXI_awcache(S01_AXI_awcache),
        .S01_AXI_awid(S01_AXI_awid),
        .S01_AXI_awlen(S01_AXI_awlen),
        .S01_AXI_awlock(S01_AXI_awlock),
        .S01_AXI_awprot(S01_AXI_awprot),
        .S01_AXI_awqos(S01_AXI_awqos),
        .S01_AXI_awready(S01_AXI_awready),
        .S01_AXI_awregion(S01_AXI_awregion),
        .S01_AXI_awvalid(S01_AXI_awvalid),
        .S01_AXI_bid(S01_AXI_bid),
        .S01_AXI_bready(S01_AXI_bready),
        .S01_AXI_bresp(S01_AXI_bresp),
        .S01_AXI_bvalid(S01_AXI_bvalid),
        .S01_AXI_rdata(S01_AXI_rdata),
        .S01_AXI_rid(S01_AXI_rid),
        .S01_AXI_rlast(S01_AXI_rlast),
        .S01_AXI_rready(S01_AXI_rready),
        .S01_AXI_rresp(S01_AXI_rresp),
        .S01_AXI_rvalid(S01_AXI_rvalid),
        .S01_AXI_wdata(S01_AXI_wdata),
        .S01_AXI_wlast(S01_AXI_wlast),
        .S01_AXI_wready(S01_AXI_wready),
        .S01_AXI_wstrb(S01_AXI_wstrb),
        .S01_AXI_wvalid(S01_AXI_wvalid),
        .S02_AXI_araddr(S02_AXI_araddr),
        .S02_AXI_arburst(S02_AXI_arburst),
        .S02_AXI_arcache(S02_AXI_arcache),
        .S02_AXI_arid(S02_AXI_arid),
        .S02_AXI_arlen(S02_AXI_arlen),
        .S02_AXI_arlock(S02_AXI_arlock),
        .S02_AXI_arprot(S02_AXI_arprot),
        .S02_AXI_arqos(S02_AXI_arqos),
        .S02_AXI_arready(S02_AXI_arready),
        .S02_AXI_arregion(S02_AXI_arregion),
        .S02_AXI_arvalid(S02_AXI_arvalid),
        .S02_AXI_awaddr(S02_AXI_awaddr),
        .S02_AXI_awburst(S02_AXI_awburst),
        .S02_AXI_awcache(S02_AXI_awcache),
        .S02_AXI_awid(S02_AXI_awid),
        .S02_AXI_awlen(S02_AXI_awlen),
        .S02_AXI_awlock(S02_AXI_awlock),
        .S02_AXI_awprot(S02_AXI_awprot),
        .S02_AXI_awqos(S02_AXI_awqos),
        .S02_AXI_awready(S02_AXI_awready),
        .S02_AXI_awregion(S02_AXI_awregion),
        .S02_AXI_awvalid(S02_AXI_awvalid),
        .S02_AXI_bid(S02_AXI_bid),
        .S02_AXI_bready(S02_AXI_bready),
        .S02_AXI_bresp(S02_AXI_bresp),
        .S02_AXI_bvalid(S02_AXI_bvalid),
        .S02_AXI_rdata(S02_AXI_rdata),
        .S02_AXI_rid(S02_AXI_rid),
        .S02_AXI_rlast(S02_AXI_rlast),
        .S02_AXI_rready(S02_AXI_rready),
        .S02_AXI_rresp(S02_AXI_rresp),
        .S02_AXI_rvalid(S02_AXI_rvalid),
        .S02_AXI_wdata(S02_AXI_wdata),
        .S02_AXI_wlast(S02_AXI_wlast),
        .S02_AXI_wready(S02_AXI_wready),
        .S02_AXI_wstrb(S02_AXI_wstrb),
        .S02_AXI_wvalid(S02_AXI_wvalid),
        .S03_AXI_araddr(S03_AXI_araddr),
        .S03_AXI_arburst(S03_AXI_arburst),
        .S03_AXI_arcache(S03_AXI_arcache),
        .S03_AXI_arid(S03_AXI_arid),
        .S03_AXI_arlen(S03_AXI_arlen),
        .S03_AXI_arlock(S03_AXI_arlock),
        .S03_AXI_arprot(S03_AXI_arprot),
        .S03_AXI_arqos(S03_AXI_arqos),
        .S03_AXI_arready(S03_AXI_arready),
        .S03_AXI_arregion(S03_AXI_arregion),
        .S03_AXI_arvalid(S03_AXI_arvalid),
        .S03_AXI_awaddr(S03_AXI_awaddr),
        .S03_AXI_awburst(S03_AXI_awburst),
        .S03_AXI_awcache(S03_AXI_awcache),
        .S03_AXI_awid(S03_AXI_awid),
        .S03_AXI_awlen(S03_AXI_awlen),
        .S03_AXI_awlock(S03_AXI_awlock),
        .S03_AXI_awprot(S03_AXI_awprot),
        .S03_AXI_awqos(S03_AXI_awqos),
        .S03_AXI_awready(S03_AXI_awready),
        .S03_AXI_awregion(S03_AXI_awregion),
        .S03_AXI_awvalid(S03_AXI_awvalid),
        .S03_AXI_bid(S03_AXI_bid),
        .S03_AXI_bready(S03_AXI_bready),
        .S03_AXI_bresp(S03_AXI_bresp),
        .S03_AXI_bvalid(S03_AXI_bvalid),
        .S03_AXI_rdata(S03_AXI_rdata),
        .S03_AXI_rid(S03_AXI_rid),
        .S03_AXI_rlast(S03_AXI_rlast),
        .S03_AXI_rready(S03_AXI_rready),
        .S03_AXI_rresp(S03_AXI_rresp),
        .S03_AXI_rvalid(S03_AXI_rvalid),
        .S03_AXI_wdata(S03_AXI_wdata),
        .S03_AXI_wlast(S03_AXI_wlast),
        .S03_AXI_wready(S03_AXI_wready),
        .S03_AXI_wstrb(S03_AXI_wstrb),
        .S03_AXI_wvalid(S03_AXI_wvalid),
        .S04_AXI_araddr(S04_AXI_araddr),
        .S04_AXI_arcache(S04_AXI_arcache),
        .S04_AXI_arlen(S04_AXI_arlen),
        .S04_AXI_arlock(S04_AXI_arlock),
        .S04_AXI_arprot(S04_AXI_arprot),
        .S04_AXI_arqos(S04_AXI_arqos),
        .S04_AXI_arready(S04_AXI_arready),
        .S04_AXI_arregion(S04_AXI_arregion),
        .S04_AXI_arvalid(S04_AXI_arvalid),
        .S04_AXI_awaddr(S04_AXI_awaddr),
        .S04_AXI_awcache(S04_AXI_awcache),
        .S04_AXI_awlen(S04_AXI_awlen),
        .S04_AXI_awlock(S04_AXI_awlock),
        .S04_AXI_awprot(S04_AXI_awprot),
        .S04_AXI_awqos(S04_AXI_awqos),
        .S04_AXI_awready(S04_AXI_awready),
        .S04_AXI_awregion(S04_AXI_awregion),
        .S04_AXI_awvalid(S04_AXI_awvalid),
        .S04_AXI_bready(S04_AXI_bready),
        .S04_AXI_bresp(S04_AXI_bresp),
        .S04_AXI_bvalid(S04_AXI_bvalid),
        .S04_AXI_rdata(S04_AXI_rdata),
        .S04_AXI_rlast(S04_AXI_rlast),
        .S04_AXI_rready(S04_AXI_rready),
        .S04_AXI_rresp(S04_AXI_rresp),
        .S04_AXI_rvalid(S04_AXI_rvalid),
        .S04_AXI_wdata(S04_AXI_wdata),
        .S04_AXI_wlast(S04_AXI_wlast),
        .S04_AXI_wready(S04_AXI_wready),
        .S04_AXI_wstrb(S04_AXI_wstrb),
        .S04_AXI_wvalid(S04_AXI_wvalid),
        .S05_AXI_araddr(S05_AXI_araddr),
        .S05_AXI_arcache(S05_AXI_arcache),
        .S05_AXI_arlen(S05_AXI_arlen),
        .S05_AXI_arlock(S05_AXI_arlock),
        .S05_AXI_arprot(S05_AXI_arprot),
        .S05_AXI_arqos(S05_AXI_arqos),
        .S05_AXI_arready(S05_AXI_arready),
        .S05_AXI_arregion(S05_AXI_arregion),
        .S05_AXI_arvalid(S05_AXI_arvalid),
        .S05_AXI_awaddr(S05_AXI_awaddr),
        .S05_AXI_awcache(S05_AXI_awcache),
        .S05_AXI_awlen(S05_AXI_awlen),
        .S05_AXI_awlock(S05_AXI_awlock),
        .S05_AXI_awprot(S05_AXI_awprot),
        .S05_AXI_awqos(S05_AXI_awqos),
        .S05_AXI_awready(S05_AXI_awready),
        .S05_AXI_awregion(S05_AXI_awregion),
        .S05_AXI_awvalid(S05_AXI_awvalid),
        .S05_AXI_bready(S05_AXI_bready),
        .S05_AXI_bresp(S05_AXI_bresp),
        .S05_AXI_bvalid(S05_AXI_bvalid),
        .S05_AXI_rdata(S05_AXI_rdata),
        .S05_AXI_rlast(S05_AXI_rlast),
        .S05_AXI_rready(S05_AXI_rready),
        .S05_AXI_rresp(S05_AXI_rresp),
        .S05_AXI_rvalid(S05_AXI_rvalid),
        .S05_AXI_wdata(S05_AXI_wdata),
        .S05_AXI_wlast(S05_AXI_wlast),
        .S05_AXI_wready(S05_AXI_wready),
        .S05_AXI_wstrb(S05_AXI_wstrb),
        .S05_AXI_wvalid(S05_AXI_wvalid),
        .S06_AXI_araddr(S06_AXI_araddr),
        .S06_AXI_arcache(S06_AXI_arcache),
        .S06_AXI_arlen(S06_AXI_arlen),
        .S06_AXI_arlock(S06_AXI_arlock),
        .S06_AXI_arprot(S06_AXI_arprot),
        .S06_AXI_arqos(S06_AXI_arqos),
        .S06_AXI_arready(S06_AXI_arready),
        .S06_AXI_arregion(S06_AXI_arregion),
        .S06_AXI_arvalid(S06_AXI_arvalid),
        .S06_AXI_awaddr(S06_AXI_awaddr),
        .S06_AXI_awcache(S06_AXI_awcache),
        .S06_AXI_awlen(S06_AXI_awlen),
        .S06_AXI_awlock(S06_AXI_awlock),
        .S06_AXI_awprot(S06_AXI_awprot),
        .S06_AXI_awqos(S06_AXI_awqos),
        .S06_AXI_awready(S06_AXI_awready),
        .S06_AXI_awregion(S06_AXI_awregion),
        .S06_AXI_awvalid(S06_AXI_awvalid),
        .S06_AXI_bready(S06_AXI_bready),
        .S06_AXI_bresp(S06_AXI_bresp),
        .S06_AXI_bvalid(S06_AXI_bvalid),
        .S06_AXI_rdata(S06_AXI_rdata),
        .S06_AXI_rlast(S06_AXI_rlast),
        .S06_AXI_rready(S06_AXI_rready),
        .S06_AXI_rresp(S06_AXI_rresp),
        .S06_AXI_rvalid(S06_AXI_rvalid),
        .S06_AXI_wdata(S06_AXI_wdata),
        .S06_AXI_wlast(S06_AXI_wlast),
        .S06_AXI_wready(S06_AXI_wready),
        .S06_AXI_wstrb(S06_AXI_wstrb),
        .S06_AXI_wvalid(S06_AXI_wvalid),
        .S07_AXI_araddr(S07_AXI_araddr),
        .S07_AXI_arcache(S07_AXI_arcache),
        .S07_AXI_arlen(S07_AXI_arlen),
        .S07_AXI_arlock(S07_AXI_arlock),
        .S07_AXI_arprot(S07_AXI_arprot),
        .S07_AXI_arqos(S07_AXI_arqos),
        .S07_AXI_arready(S07_AXI_arready),
        .S07_AXI_arregion(S07_AXI_arregion),
        .S07_AXI_arvalid(S07_AXI_arvalid),
        .S07_AXI_awaddr(S07_AXI_awaddr),
        .S07_AXI_awcache(S07_AXI_awcache),
        .S07_AXI_awlen(S07_AXI_awlen),
        .S07_AXI_awlock(S07_AXI_awlock),
        .S07_AXI_awprot(S07_AXI_awprot),
        .S07_AXI_awqos(S07_AXI_awqos),
        .S07_AXI_awready(S07_AXI_awready),
        .S07_AXI_awregion(S07_AXI_awregion),
        .S07_AXI_awvalid(S07_AXI_awvalid),
        .S07_AXI_bready(S07_AXI_bready),
        .S07_AXI_bresp(S07_AXI_bresp),
        .S07_AXI_bvalid(S07_AXI_bvalid),
        .S07_AXI_rdata(S07_AXI_rdata),
        .S07_AXI_rlast(S07_AXI_rlast),
        .S07_AXI_rready(S07_AXI_rready),
        .S07_AXI_rresp(S07_AXI_rresp),
        .S07_AXI_rvalid(S07_AXI_rvalid),
        .S07_AXI_wdata(S07_AXI_wdata),
        .S07_AXI_wlast(S07_AXI_wlast),
        .S07_AXI_wready(S07_AXI_wready),
        .S07_AXI_wstrb(S07_AXI_wstrb),
        .S07_AXI_wvalid(S07_AXI_wvalid),
        .S_AXI_CTRL_araddr(S_AXI_CTRL_araddr),
        .S_AXI_CTRL_arprot(S_AXI_CTRL_arprot),
        .S_AXI_CTRL_arready(S_AXI_CTRL_arready),
        .S_AXI_CTRL_arvalid(S_AXI_CTRL_arvalid),
        .S_AXI_CTRL_awaddr(S_AXI_CTRL_awaddr),
        .S_AXI_CTRL_awprot(S_AXI_CTRL_awprot),
        .S_AXI_CTRL_awready(S_AXI_CTRL_awready),
        .S_AXI_CTRL_awvalid(S_AXI_CTRL_awvalid),
        .S_AXI_CTRL_bready(S_AXI_CTRL_bready),
        .S_AXI_CTRL_bresp(S_AXI_CTRL_bresp),
        .S_AXI_CTRL_bvalid(S_AXI_CTRL_bvalid),
        .S_AXI_CTRL_rdata(S_AXI_CTRL_rdata),
        .S_AXI_CTRL_rready(S_AXI_CTRL_rready),
        .S_AXI_CTRL_rresp(S_AXI_CTRL_rresp),
        .S_AXI_CTRL_rvalid(S_AXI_CTRL_rvalid),
        .S_AXI_CTRL_wdata(S_AXI_CTRL_wdata),
        .S_AXI_CTRL_wready(S_AXI_CTRL_wready),
        .S_AXI_CTRL_wstrb(S_AXI_CTRL_wstrb),
        .S_AXI_CTRL_wvalid(S_AXI_CTRL_wvalid),
        .aclk(aclk),
        .aclk1(aclk1),
        .aclk2(aclk2),
        .aresetn(aresetn),
        .ddr4_mem00_sys_rst(ddr4_mem00_sys_rst),
        .ddr4_mem00_ui_clk(ddr4_mem00_ui_clk),
        .ddr4_mem01_sys_rst(ddr4_mem01_sys_rst),
        .ddr4_mem01_ui_clk(ddr4_mem01_ui_clk),
        .ddr4_mem02_sys_rst(ddr4_mem02_sys_rst),
        .ddr4_mem02_ui_clk(ddr4_mem02_ui_clk),
        .ddr4_mem_calib_complete(ddr4_mem_calib_complete),
        .ddr4_mem_calib_vec(ddr4_mem_calib_vec));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_reset_imp_1YKOSPE
   (interconnect_aresetn3,
    interconnect_aresetn,
    interconnect_aresetn1,
    interconnect_aresetn2,
    aclk2,
    aresetn,
    aclk);
  output [0:0]interconnect_aresetn3;
  output [0:0]interconnect_aresetn;
  output [0:0]interconnect_aresetn1;
  output [0:0]interconnect_aresetn2;
  input aclk2;
  input aresetn;
  input aclk;

  wire aclk;
  wire aclk2;
  wire aresetn;
  wire [0:0]interconnect_aresetn;
  wire [0:0]interconnect_aresetn1;
  wire [0:0]interconnect_aresetn2;
  wire [0:0]interconnect_aresetn3;
  wire NLW_psr_aclk2_SLR1_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk2_SLR1_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk2_SLR1_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_aclk2_SLR1_peripheral_reset_UNCONNECTED;
  wire NLW_psr_aclk_SLR0_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR0_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR0_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR0_peripheral_reset_UNCONNECTED;
  wire NLW_psr_aclk_SLR1_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR1_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR1_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR1_peripheral_reset_UNCONNECTED;
  wire NLW_psr_aclk_SLR2_mb_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR2_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR2_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_psr_aclk_SLR2_peripheral_reset_UNCONNECTED;

  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_aclk2_SLR1_0 psr_aclk2_SLR1
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_aclk2_SLR1_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .interconnect_aresetn(interconnect_aresetn3),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_aclk2_SLR1_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_aclk2_SLR1_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_aclk2_SLR1_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk2));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_aclk_SLR0_0 psr_aclk_SLR0
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_aclk_SLR0_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .interconnect_aresetn(interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_aclk_SLR0_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_aclk_SLR0_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_aclk_SLR0_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_aclk_SLR1_0 psr_aclk_SLR1
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_aclk_SLR1_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .interconnect_aresetn(interconnect_aresetn1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_aclk_SLR1_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_aclk_SLR1_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_aclk_SLR1_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk));
  (* X_CORE_INFO = "proc_sys_reset,Vivado 2020.1" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bd_d216_psr_aclk_SLR2_0 psr_aclk_SLR2
       (.aux_reset_in(1'b1),
        .bus_struct_reset(NLW_psr_aclk_SLR2_bus_struct_reset_UNCONNECTED[0]),
        .dcm_locked(1'b1),
        .ext_reset_in(aresetn),
        .interconnect_aresetn(interconnect_aresetn2),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(NLW_psr_aclk_SLR2_mb_reset_UNCONNECTED),
        .peripheral_aresetn(NLW_psr_aclk_SLR2_peripheral_aresetn_UNCONNECTED[0]),
        .peripheral_reset(NLW_psr_aclk_SLR2_peripheral_reset_UNCONNECTED[0]),
        .slowest_sync_clk(aclk));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
