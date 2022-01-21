`timescale 1 ns / 1 ps

module AESL_deadlock_detector (
    input reset,
    input clock);

    wire [3:0] proc_dep_vld_vec_0;
    reg [3:0] proc_dep_vld_vec_0_reg;
    wire [3:0] in_chan_dep_vld_vec_0;
    wire [19:0] in_chan_dep_data_vec_0;
    wire [3:0] token_in_vec_0;
    wire [3:0] out_chan_dep_vld_vec_0;
    wire [4:0] out_chan_dep_data_0;
    wire [3:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [4:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [4:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_3_0;
    wire [4:0] dep_chan_data_3_0;
    wire token_3_0;
    wire dep_chan_vld_4_0;
    wire [4:0] dep_chan_data_4_0;
    wire token_4_0;
    wire [2:0] proc_dep_vld_vec_1;
    reg [2:0] proc_dep_vld_vec_1_reg;
    wire [2:0] in_chan_dep_vld_vec_1;
    wire [14:0] in_chan_dep_data_vec_1;
    wire [2:0] token_in_vec_1;
    wire [2:0] out_chan_dep_vld_vec_1;
    wire [4:0] out_chan_dep_data_1;
    wire [2:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [4:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_3_1;
    wire [4:0] dep_chan_data_3_1;
    wire token_3_1;
    wire dep_chan_vld_4_1;
    wire [4:0] dep_chan_data_4_1;
    wire token_4_1;
    wire [1:0] proc_dep_vld_vec_2;
    reg [1:0] proc_dep_vld_vec_2_reg;
    wire [1:0] in_chan_dep_vld_vec_2;
    wire [9:0] in_chan_dep_data_vec_2;
    wire [1:0] token_in_vec_2;
    wire [1:0] out_chan_dep_vld_vec_2;
    wire [4:0] out_chan_dep_data_2;
    wire [1:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [4:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_3_2;
    wire [4:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [3:0] proc_dep_vld_vec_3;
    reg [3:0] proc_dep_vld_vec_3_reg;
    wire [3:0] in_chan_dep_vld_vec_3;
    wire [19:0] in_chan_dep_data_vec_3;
    wire [3:0] token_in_vec_3;
    wire [3:0] out_chan_dep_vld_vec_3;
    wire [4:0] out_chan_dep_data_3;
    wire [3:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_0_3;
    wire [4:0] dep_chan_data_0_3;
    wire token_0_3;
    wire dep_chan_vld_1_3;
    wire [4:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_2_3;
    wire [4:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_4_3;
    wire [4:0] dep_chan_data_4_3;
    wire token_4_3;
    wire [2:0] proc_dep_vld_vec_4;
    reg [2:0] proc_dep_vld_vec_4_reg;
    wire [2:0] in_chan_dep_vld_vec_4;
    wire [14:0] in_chan_dep_data_vec_4;
    wire [2:0] token_in_vec_4;
    wire [2:0] out_chan_dep_vld_vec_4;
    wire [4:0] out_chan_dep_data_4;
    wire [2:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_0_4;
    wire [4:0] dep_chan_data_0_4;
    wire token_0_4;
    wire dep_chan_vld_1_4;
    wire [4:0] dep_chan_data_1_4;
    wire token_1_4;
    wire dep_chan_vld_3_4;
    wire [4:0] dep_chan_data_3_4;
    wire token_3_4;
    wire [4:0] dl_in_vec;
    wire dl_detect_out;
    wire [4:0] origin;
    wire token_clear;

    reg ap_done_reg_0;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ap_done;
        end
    end

    reg ap_done_reg_1;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_done;
        end
    end

    reg ap_done_reg_2;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_done;
        end
    end

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$dataflow_in_loop_LOOP_S_OUTER_entry25_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$dataflow_in_loop_LOOP_S_OUTER_entry25_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$dataflow_in_loop_LOOP_S_OUTER_entry25_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0
    AESL_deadlock_detect_unit #(5, 0, 4, 4) AESL_deadlock_detect_unit_0 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out1_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.ko_2_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.co_1_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.ro_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.so_out_blk_n);
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.co_1_out2_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.ro_out3_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.so_out4_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out5_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out7_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.ho_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.wo_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out11_blk_n);
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out6_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out8_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out12_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out13_blk_n);
    assign proc_dep_vld_vec_0[3] = dl_detect_out ? proc_dep_vld_vec_0_reg[3] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.ho_out9_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.wo_out10_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.dataflow_in_loop_LOOP_S_OUTER_entry25_U0.p_out14_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[4 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[9 : 5] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_3_0;
    assign in_chan_dep_data_vec_0[14 : 10] = dep_chan_data_3_0;
    assign token_in_vec_0[2] = token_3_0;
    assign in_chan_dep_vld_vec_0[3] = dep_chan_vld_4_0;
    assign in_chan_dep_data_vec_0[19 : 15] = dep_chan_data_4_0;
    assign token_in_vec_0[3] = token_4_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[1];
    assign dep_chan_vld_0_3 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_3 = out_chan_dep_data_0;
    assign token_0_3 = token_out_vec_0[2];
    assign dep_chan_vld_0_4 = out_chan_dep_vld_vec_0[3];
    assign dep_chan_data_0_4 = out_chan_dep_data_0;
    assign token_0_4 = token_out_vec_0[3];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runWeight2Reg_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runWeight2Reg_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runWeight2Reg_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0
    AESL_deadlock_detect_unit #(5, 1, 3, 3) AESL_deadlock_detect_unit_1 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.empty_19_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.empty_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.ko_2_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.co_1_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.ro_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.so_blk_n);
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.ko_2_out_blk_n);
    assign proc_dep_vld_vec_1[2] = dl_detect_out ? proc_dep_vld_vec_1_reg[2] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.ro_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runWeight2Reg_U0.so_out_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[4 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[9 : 5] = dep_chan_data_3_1;
    assign token_in_vec_1[1] = token_3_1;
    assign in_chan_dep_vld_vec_1[2] = dep_chan_vld_4_1;
    assign in_chan_dep_data_vec_1[14 : 10] = dep_chan_data_4_1;
    assign token_in_vec_1[2] = token_4_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_4 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_4 = out_chan_dep_data_1;
    assign token_1_4 = token_out_vec_1[1];
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[2];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[2];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runDataL2toL1_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runDataL2toL1_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runDataL2toL1_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0
    AESL_deadlock_detect_unit #(5, 2, 2, 2) AESL_deadlock_detect_unit_2 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_0_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_0_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_1_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_1_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_2_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_2_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_3_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_3_U.t_read);
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.empty_25_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.empty_26_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.co_1_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ho_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.wo_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.ro_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.so_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runDataL2toL1_U0.empty_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[4 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[9 : 5] = dep_chan_data_3_2;
    assign token_in_vec_2[1] = token_3_2;
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[0];
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runSysArr_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runSysArr_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runSysArr_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0
    AESL_deadlock_detect_unit #(5, 3, 4, 4) AESL_deadlock_detect_unit_3 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_0_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_0_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_1_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_1_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_2_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_2_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_3_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_0_3_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_0_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_0_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_1_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_1_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_2_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_2_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_3_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_1_3_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_0_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_0_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_1_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_1_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_2_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_2_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_3_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_2_3_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_0_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_0_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_1_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_1_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_2_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_2_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_3_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.weight_regfile_3_3_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.so_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ro_blk_n);
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_0_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_0_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_1_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_1_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_2_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_2_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_3_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.data_l1_3_U.i_write);
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_0_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_done & deadlock_detector.ap_done_reg_1 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_0_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_1_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_done & deadlock_detector.ap_done_reg_1 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_1_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_2_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_done & deadlock_detector.ap_done_reg_1 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_2_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_3_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.ap_done & deadlock_detector.ap_done_reg_1 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_3_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.p_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.p_out1_blk_n);
    assign proc_dep_vld_vec_3[3] = dl_detect_out ? proc_dep_vld_vec_3_reg[3] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.empty_20_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.empty_21_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.empty_22_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runSysArr_U0.empty_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_0_3;
    assign in_chan_dep_data_vec_3[4 : 0] = dep_chan_data_0_3;
    assign token_in_vec_3[0] = token_0_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[9 : 5] = dep_chan_data_1_3;
    assign token_in_vec_3[1] = token_1_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[14 : 10] = dep_chan_data_2_3;
    assign token_in_vec_3[2] = token_2_3;
    assign in_chan_dep_vld_vec_3[3] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[19 : 15] = dep_chan_data_4_3;
    assign token_in_vec_3[3] = token_4_3;
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[0];
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[1];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[2];
    assign dep_chan_vld_3_0 = out_chan_dep_vld_vec_3[3];
    assign dep_chan_data_3_0 = out_chan_dep_data_3;
    assign token_3_0 = token_out_vec_3[3];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runOutputL1toL2_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runOutputL1toL2_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc20_fu_530$dataflow_parent_loop_proc19_U0$dataflow_parent_loop_proc18_U0$dataflow_parent_loop_proc17_U0$dataflow_parent_loop_proc16_U0$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_OUTER_U0$runOutputL1toL2_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0
    AESL_deadlock_detect_unit #(5, 4, 3, 3) AESL_deadlock_detect_unit_4 (
        .reset(reset),
        .clock(clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_0_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_0_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_1_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_1_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_2_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_2_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_3_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.output_l1_3_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.empty_23_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.empty_24_blk_n);
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ko_2_blk_n);
    assign proc_dep_vld_vec_4[2] = dl_detect_out ? proc_dep_vld_vec_4_reg[2] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.ho_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.wo_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc20_fu_530.dataflow_parent_loop_proc19_U0.dataflow_parent_loop_proc18_U0.dataflow_parent_loop_proc17_U0.dataflow_parent_loop_proc16_U0.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_OUTER_U0.runOutputL1toL2_U0.empty_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_0_4;
    assign in_chan_dep_data_vec_4[4 : 0] = dep_chan_data_0_4;
    assign token_in_vec_4[0] = token_0_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_1_4;
    assign in_chan_dep_data_vec_4[9 : 5] = dep_chan_data_1_4;
    assign token_in_vec_4[1] = token_1_4;
    assign in_chan_dep_vld_vec_4[2] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[14 : 10] = dep_chan_data_3_4;
    assign token_in_vec_4[2] = token_3_4;
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[0];
    assign dep_chan_vld_4_1 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_1 = out_chan_dep_data_4;
    assign token_4_1 = token_out_vec_4[1];
    assign dep_chan_vld_4_0 = out_chan_dep_vld_vec_4[2];
    assign dep_chan_data_4_0 = out_chan_dep_data_4;
    assign token_4_0 = token_out_vec_4[2];


    AESL_deadlock_report_unit #(5) AESL_deadlock_report_unit_inst (
        .reset(reset),
        .clock(clock),
        .dl_in_vec(dl_in_vec),
        .dl_detect_out(dl_detect_out),
        .origin(origin),
        .token_clear(token_clear));

endmodule