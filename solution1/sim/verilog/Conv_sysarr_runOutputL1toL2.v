// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2020.1
// Copyright (C) 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module Conv_sysarr_runOutputL1toL2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        output_l1_0_address0,
        output_l1_0_ce0,
        output_l1_0_q0,
        output_l1_1_address0,
        output_l1_1_ce0,
        output_l1_1_q0,
        output_l1_2_address0,
        output_l1_2_ce0,
        output_l1_2_q0,
        output_l1_3_address0,
        output_l1_3_ce0,
        output_l1_3_q0,
        output_l2_0_address0,
        output_l2_0_ce0,
        output_l2_0_we0,
        output_l2_0_d0,
        output_l2_1_address0,
        output_l2_1_ce0,
        output_l2_1_we0,
        output_l2_1_d0,
        output_l2_2_address0,
        output_l2_2_ce0,
        output_l2_2_we0,
        output_l2_2_d0,
        output_l2_3_address0,
        output_l2_3_ce0,
        output_l2_3_we0,
        output_l2_3_d0,
        empty_23_dout,
        empty_23_empty_n,
        empty_23_read,
        empty_24_dout,
        empty_24_empty_n,
        empty_24_read,
        ko_2_dout,
        ko_2_empty_n,
        ko_2_read,
        ho_dout,
        ho_empty_n,
        ho_read,
        wo_dout,
        wo_empty_n,
        wo_read,
        empty_dout,
        empty_empty_n,
        empty_read
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state7 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] output_l1_0_address0;
output   output_l1_0_ce0;
input  [31:0] output_l1_0_q0;
output  [8:0] output_l1_1_address0;
output   output_l1_1_ce0;
input  [31:0] output_l1_1_q0;
output  [8:0] output_l1_2_address0;
output   output_l1_2_ce0;
input  [31:0] output_l1_2_q0;
output  [8:0] output_l1_3_address0;
output   output_l1_3_ce0;
input  [31:0] output_l1_3_q0;
output  [8:0] output_l2_0_address0;
output   output_l2_0_ce0;
output   output_l2_0_we0;
output  [31:0] output_l2_0_d0;
output  [8:0] output_l2_1_address0;
output   output_l2_1_ce0;
output   output_l2_1_we0;
output  [31:0] output_l2_1_d0;
output  [8:0] output_l2_2_address0;
output   output_l2_2_ce0;
output   output_l2_2_we0;
output  [31:0] output_l2_2_d0;
output  [8:0] output_l2_3_address0;
output   output_l2_3_ce0;
output   output_l2_3_we0;
output  [31:0] output_l2_3_d0;
input  [31:0] empty_23_dout;
input   empty_23_empty_n;
output   empty_23_read;
input  [31:0] empty_24_dout;
input   empty_24_empty_n;
output   empty_24_read;
input  [8:0] ko_2_dout;
input   ko_2_empty_n;
output   ko_2_read;
input  [8:0] ho_dout;
input   ho_empty_n;
output   ho_read;
input  [8:0] wo_dout;
input   wo_empty_n;
output   wo_read;
input  [8:0] empty_dout;
input   empty_empty_n;
output   empty_read;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_l1_0_ce0;
reg output_l1_1_ce0;
reg output_l1_2_ce0;
reg output_l1_3_ce0;
reg output_l2_0_ce0;
reg output_l2_0_we0;
reg output_l2_1_ce0;
reg output_l2_1_we0;
reg output_l2_2_ce0;
reg output_l2_2_we0;
reg output_l2_3_ce0;
reg output_l2_3_we0;
reg empty_23_read;
reg empty_24_read;
reg ko_2_read;
reg ho_read;
reg wo_read;
reg empty_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    empty_23_blk_n;
reg    empty_24_blk_n;
reg    ko_2_blk_n;
reg    ho_blk_n;
reg    wo_blk_n;
reg    empty_blk_n;
reg   [63:0] indvar_flatten_reg_210;
reg   [31:0] hi_reg_221;
reg   [31:0] wi_reg_232;
reg   [31:0] TILESIZE_W_assign_reg_373;
reg    ap_block_state1;
reg  signed [8:0] WH_assign_reg_378;
wire  signed [8:0] trunc_ln49_fu_243_p1;
reg  signed [8:0] trunc_ln49_reg_383;
wire   [8:0] mul3_i_i_fu_251_p2;
reg   [8:0] mul3_i_i_reg_388;
wire   [8:0] mul5_i_i_fu_257_p2;
reg   [8:0] mul5_i_i_reg_393;
wire   [8:0] mul11_i_i_fu_263_p2;
reg   [8:0] mul11_i_i_reg_398;
wire   [63:0] bound_fu_277_p2;
reg   [63:0] bound_reg_403;
wire   [0:0] icmp_ln51_fu_283_p2;
reg   [0:0] icmp_ln51_reg_408;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln51_reg_408_pp0_iter1_reg;
reg   [0:0] icmp_ln51_reg_408_pp0_iter2_reg;
reg   [0:0] icmp_ln51_reg_408_pp0_iter3_reg;
wire   [63:0] add_ln51_2_fu_288_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [31:0] select_ln51_1_fu_313_p3;
reg   [31:0] select_ln51_1_reg_417;
wire  signed [8:0] trunc_ln51_fu_321_p1;
wire   [8:0] empty_39_fu_330_p1;
reg   [8:0] empty_39_reg_427;
reg   [8:0] empty_39_reg_427_pp0_iter1_reg;
wire   [31:0] add_ln53_fu_334_p2;
wire  signed [8:0] grp_fu_365_p4;
reg  signed [8:0] add15_i_i_reg_443;
reg    ap_enable_reg_pp0_iter3;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter4;
reg   [31:0] ap_phi_mux_hi_phi_fu_225_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] idxprom_i_i_fu_344_p1;
wire   [63:0] idxprom16_i_i_fu_351_p1;
wire  signed [8:0] mul3_i_i_fu_251_p1;
wire  signed [8:0] mul5_i_i_fu_257_p1;
wire   [31:0] bound_fu_277_p0;
wire   [31:0] bound_fu_277_p1;
wire   [0:0] icmp_ln53_fu_294_p2;
wire   [31:0] add_ln51_3_fu_307_p2;
wire   [31:0] select_ln51_fu_299_p3;
wire  signed [8:0] grp_fu_358_p3;
wire   [8:0] grp_fu_365_p0;
wire   [8:0] grp_fu_365_p3;
wire    ap_CS_fsm_state7;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [63:0] bound_fu_277_p00;
wire   [63:0] bound_fu_277_p10;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

Conv_sysarr_mul_9s_9s_9_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 9 ))
mul_9s_9s_9_1_1_U172(
    .din0(ho_dout),
    .din1(mul3_i_i_fu_251_p1),
    .dout(mul3_i_i_fu_251_p2)
);

Conv_sysarr_mul_9s_9s_9_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 9 ))
mul_9s_9s_9_1_1_U173(
    .din0(wo_dout),
    .din1(mul5_i_i_fu_257_p1),
    .dout(mul5_i_i_fu_257_p2)
);

Conv_sysarr_mul_9s_9s_9_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .dout_WIDTH( 9 ))
mul_9s_9s_9_1_1_U174(
    .din0(empty_dout),
    .din1(ko_2_dout),
    .dout(mul11_i_i_fu_263_p2)
);

Conv_sysarr_mul_32ns_32ns_64_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
mul_32ns_32ns_64_1_1_U175(
    .din0(bound_fu_277_p0),
    .din1(bound_fu_277_p1),
    .dout(bound_fu_277_p2)
);

Conv_sysarr_mac_muladd_9s_9s_9ns_9_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 9 ),
    .dout_WIDTH( 9 ))
mac_muladd_9s_9s_9ns_9_4_1_U176(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(trunc_ln49_reg_383),
    .din1(trunc_ln51_fu_321_p1),
    .din2(empty_39_reg_427_pp0_iter1_reg),
    .ce(1'b1),
    .dout(grp_fu_358_p3)
);

Conv_sysarr_ama_addmuladd_9ns_9ns_9s_9ns_9_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 9 ),
    .din1_WIDTH( 9 ),
    .din2_WIDTH( 9 ),
    .din3_WIDTH( 9 ),
    .dout_WIDTH( 9 ))
ama_addmuladd_9ns_9ns_9s_9ns_9_4_1_U177(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(grp_fu_365_p0),
    .din1(mul3_i_i_reg_388),
    .din2(WH_assign_reg_378),
    .din3(grp_fu_365_p3),
    .ce(1'b1),
    .dout(grp_fu_365_p4)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state7)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln51_reg_408 == 1'd0))) begin
        hi_reg_221 <= select_ln51_1_reg_417;
    end else if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        hi_reg_221 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln51_fu_283_p2 == 1'd0))) begin
        indvar_flatten_reg_210 <= add_ln51_2_fu_288_p2;
    end else if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_210 <= 64'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln51_fu_283_p2 == 1'd0))) begin
        wi_reg_232 <= add_ln53_fu_334_p2;
    end else if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        wi_reg_232 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        TILESIZE_W_assign_reg_373 <= empty_24_dout;
        WH_assign_reg_378 <= empty_dout;
        bound_reg_403 <= bound_fu_277_p2;
        mul11_i_i_reg_398 <= mul11_i_i_fu_263_p2;
        mul3_i_i_reg_388 <= mul3_i_i_fu_251_p2;
        mul5_i_i_reg_393 <= mul5_i_i_fu_257_p2;
        trunc_ln49_reg_383 <= trunc_ln49_fu_243_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln51_reg_408_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add15_i_i_reg_443 <= grp_fu_365_p4;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln51_fu_283_p2 == 1'd0))) begin
        empty_39_reg_427 <= empty_39_fu_330_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        empty_39_reg_427_pp0_iter1_reg <= empty_39_reg_427;
        icmp_ln51_reg_408 <= icmp_ln51_fu_283_p2;
        icmp_ln51_reg_408_pp0_iter1_reg <= icmp_ln51_reg_408;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln51_reg_408_pp0_iter2_reg <= icmp_ln51_reg_408_pp0_iter1_reg;
        icmp_ln51_reg_408_pp0_iter3_reg <= icmp_ln51_reg_408_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln51_fu_283_p2 == 1'd0))) begin
        select_ln51_1_reg_417 <= select_ln51_1_fu_313_p3;
    end
end

always @ (*) begin
    if ((icmp_ln51_fu_283_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0) & (icmp_ln51_reg_408 == 1'd0))) begin
        ap_phi_mux_hi_phi_fu_225_p4 = select_ln51_1_reg_417;
    end else begin
        ap_phi_mux_hi_phi_fu_225_p4 = hi_reg_221;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_23_blk_n = empty_23_empty_n;
    end else begin
        empty_23_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_23_read = 1'b1;
    end else begin
        empty_23_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_24_blk_n = empty_24_empty_n;
    end else begin
        empty_24_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_24_read = 1'b1;
    end else begin
        empty_24_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_blk_n = empty_empty_n;
    end else begin
        empty_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        empty_read = 1'b1;
    end else begin
        empty_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ho_blk_n = ho_empty_n;
    end else begin
        ho_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ho_read = 1'b1;
    end else begin
        ho_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ko_2_blk_n = ko_2_empty_n;
    end else begin
        ko_2_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        ko_2_read = 1'b1;
    end else begin
        ko_2_read = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l1_0_ce0 = 1'b1;
    end else begin
        output_l1_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l1_1_ce0 = 1'b1;
    end else begin
        output_l1_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l1_2_ce0 = 1'b1;
    end else begin
        output_l1_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l1_3_ce0 = 1'b1;
    end else begin
        output_l1_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l2_0_ce0 = 1'b1;
    end else begin
        output_l2_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln51_reg_408_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l2_0_we0 = 1'b1;
    end else begin
        output_l2_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l2_1_ce0 = 1'b1;
    end else begin
        output_l2_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln51_reg_408_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l2_1_we0 = 1'b1;
    end else begin
        output_l2_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l2_2_ce0 = 1'b1;
    end else begin
        output_l2_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln51_reg_408_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l2_2_we0 = 1'b1;
    end else begin
        output_l2_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l2_3_ce0 = 1'b1;
    end else begin
        output_l2_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln51_reg_408_pp0_iter3_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        output_l2_3_we0 = 1'b1;
    end else begin
        output_l2_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        wo_blk_n = wo_empty_n;
    end else begin
        wo_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        wo_read = 1'b1;
    end else begin
        wo_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln51_fu_283_p2 == 1'd1)) & ~((ap_enable_reg_pp0_iter4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln51_fu_283_p2 == 1'd1)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln51_2_fu_288_p2 = (indvar_flatten_reg_210 + 64'd1);

assign add_ln51_3_fu_307_p2 = (32'd1 + ap_phi_mux_hi_phi_fu_225_p4);

assign add_ln53_fu_334_p2 = (32'd1 + select_ln51_fu_299_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state1 = ((empty_empty_n == 1'b0) | (wo_empty_n == 1'b0) | (ho_empty_n == 1'b0) | (ap_start == 1'b0) | (ko_2_empty_n == 1'b0) | (empty_24_empty_n == 1'b0) | (empty_23_empty_n == 1'b0) | (ap_done_reg == 1'b1));
end

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign bound_fu_277_p0 = bound_fu_277_p00;

assign bound_fu_277_p00 = empty_23_dout;

assign bound_fu_277_p1 = bound_fu_277_p10;

assign bound_fu_277_p10 = empty_24_dout;

assign empty_39_fu_330_p1 = select_ln51_fu_299_p3[8:0];

assign grp_fu_365_p0 = ($signed(mul11_i_i_reg_398) + $signed(trunc_ln51_fu_321_p1));

assign grp_fu_365_p3 = (mul5_i_i_reg_393 + empty_39_reg_427_pp0_iter1_reg);

assign icmp_ln51_fu_283_p2 = ((indvar_flatten_reg_210 == bound_reg_403) ? 1'b1 : 1'b0);

assign icmp_ln53_fu_294_p2 = ((wi_reg_232 == TILESIZE_W_assign_reg_373) ? 1'b1 : 1'b0);

assign idxprom16_i_i_fu_351_p1 = $unsigned(add15_i_i_reg_443);

assign idxprom_i_i_fu_344_p1 = $unsigned(grp_fu_358_p3);

assign mul3_i_i_fu_251_p1 = empty_23_dout[8:0];

assign mul5_i_i_fu_257_p1 = empty_24_dout[8:0];

assign output_l1_0_address0 = idxprom_i_i_fu_344_p1;

assign output_l1_1_address0 = idxprom_i_i_fu_344_p1;

assign output_l1_2_address0 = idxprom_i_i_fu_344_p1;

assign output_l1_3_address0 = idxprom_i_i_fu_344_p1;

assign output_l2_0_address0 = idxprom16_i_i_fu_351_p1;

assign output_l2_0_d0 = output_l1_0_q0;

assign output_l2_1_address0 = idxprom16_i_i_fu_351_p1;

assign output_l2_1_d0 = output_l1_1_q0;

assign output_l2_2_address0 = idxprom16_i_i_fu_351_p1;

assign output_l2_2_d0 = output_l1_2_q0;

assign output_l2_3_address0 = idxprom16_i_i_fu_351_p1;

assign output_l2_3_d0 = output_l1_3_q0;

assign select_ln51_1_fu_313_p3 = ((icmp_ln53_fu_294_p2[0:0] === 1'b1) ? add_ln51_3_fu_307_p2 : ap_phi_mux_hi_phi_fu_225_p4);

assign select_ln51_fu_299_p3 = ((icmp_ln53_fu_294_p2[0:0] === 1'b1) ? 32'd0 : wi_reg_232);

assign trunc_ln49_fu_243_p1 = empty_24_dout[8:0];

assign trunc_ln51_fu_321_p1 = select_ln51_1_fu_313_p3[8:0];

endmodule //Conv_sysarr_runOutputL1toL2