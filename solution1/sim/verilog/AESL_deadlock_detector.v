`timescale 1 ns / 1 ps

module AESL_deadlock_detector (
    input reset,
    input clock);

    wire [2:0] proc_dep_vld_vec_0;
    reg [2:0] proc_dep_vld_vec_0_reg;
    wire [2:0] in_chan_dep_vld_vec_0;
    wire [11:0] in_chan_dep_data_vec_0;
    wire [2:0] token_in_vec_0;
    wire [2:0] out_chan_dep_vld_vec_0;
    wire [3:0] out_chan_dep_data_0;
    wire [2:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [3:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [3:0] dep_chan_data_2_0;
    wire token_2_0;
    wire dep_chan_vld_3_0;
    wire [3:0] dep_chan_data_3_0;
    wire token_3_0;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [7:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [3:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [3:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_3_1;
    wire [3:0] dep_chan_data_3_1;
    wire token_3_1;
    wire [1:0] proc_dep_vld_vec_2;
    reg [1:0] proc_dep_vld_vec_2_reg;
    wire [1:0] in_chan_dep_vld_vec_2;
    wire [7:0] in_chan_dep_data_vec_2;
    wire [1:0] token_in_vec_2;
    wire [1:0] out_chan_dep_vld_vec_2;
    wire [3:0] out_chan_dep_data_2;
    wire [1:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [3:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_3_2;
    wire [3:0] dep_chan_data_3_2;
    wire token_3_2;
    wire [2:0] proc_dep_vld_vec_3;
    reg [2:0] proc_dep_vld_vec_3_reg;
    wire [2:0] in_chan_dep_vld_vec_3;
    wire [11:0] in_chan_dep_data_vec_3;
    wire [2:0] token_in_vec_3;
    wire [2:0] out_chan_dep_vld_vec_3;
    wire [3:0] out_chan_dep_data_3;
    wire [2:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_0_3;
    wire [3:0] dep_chan_data_0_3;
    wire token_0_3;
    wire dep_chan_vld_1_3;
    wire [3:0] dep_chan_data_1_3;
    wire token_1_3;
    wire dep_chan_vld_2_3;
    wire [3:0] dep_chan_data_2_3;
    wire token_2_3;
    wire [3:0] dl_in_vec;
    wire dl_detect_out;
    wire [3:0] origin;
    wire token_clear;

    reg ap_done_reg_0;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.ap_done;
        end
    end

    reg ap_done_reg_1;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_done;
        end
    end

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$dataflow_in_loop_LOOP_S_entry18_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$dataflow_in_loop_LOOP_S_entry18_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$dataflow_in_loop_LOOP_S_entry18_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0
    AESL_deadlock_detect_unit #(4, 0, 3, 3) AESL_deadlock_detect_unit_0 (
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

    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.p_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.p_out1_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.ko_2_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.co_1_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.r_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.s_out_blk_n);
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.co_1_out2_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.r_out3_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.s_out4_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.p_out5_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.p_out7_blk_n);
    assign proc_dep_vld_vec_0[2] = dl_detect_out ? proc_dep_vld_vec_0_reg[2] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.dataflow_in_loop_LOOP_S_entry18_U0.p_out6_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[3 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[7 : 4] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign in_chan_dep_vld_vec_0[2] = dep_chan_vld_3_0;
    assign in_chan_dep_data_vec_0[11 : 8] = dep_chan_data_3_0;
    assign token_in_vec_0[2] = token_3_0;
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[0];
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[1];
    assign dep_chan_vld_0_3 = out_chan_dep_vld_vec_0[2];
    assign dep_chan_data_0_3 = out_chan_dep_data_0;
    assign token_0_3 = token_out_vec_0[2];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runWeight2Reg_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runWeight2Reg_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runWeight2Reg_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0
    AESL_deadlock_detect_unit #(4, 1, 2, 2) AESL_deadlock_detect_unit_1 (
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

    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.empty_14_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.empty_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.ko_2_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.co_1_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.r_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.s_blk_n);
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.r_out_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runWeight2Reg_U0.s_out_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[3 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_3_1;
    assign in_chan_dep_data_vec_1[7 : 4] = dep_chan_data_3_1;
    assign token_in_vec_1[1] = token_3_1;
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[0];
    assign dep_chan_vld_1_3 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_3 = out_chan_dep_data_1;
    assign token_1_3 = token_out_vec_1[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runL2toL1_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runL2toL1_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runL2toL1_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0
    AESL_deadlock_detect_unit #(4, 2, 2, 2) AESL_deadlock_detect_unit_2 (
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

    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_0_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_0_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_1_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_1_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_2_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_2_U.t_read | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_3_U.i_full_n & AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.ap_done & deadlock_detector.ap_done_reg_0 & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_3_U.t_read);
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.empty_15_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.co_1_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.r_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.s_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runL2toL1_U0.empty_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[3 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[7 : 4] = dep_chan_data_3_2;
    assign token_in_vec_2[1] = token_3_2;
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[0];
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[1];

    // delay ap_idle for one cycle
    reg [0:0] AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runSysArr_U0$ap_idle;
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runSysArr_U0$ap_idle <= 'b0;
        end
        else begin
            AESL_inst_Conv_sysarr$grp_dataflow_parent_loop_proc14_fu_736$dataflow_parent_loop_proc_U0$dataflow_in_loop_LOOP_S_U0$runSysArr_U0$ap_idle <= AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle;
        end
    end
    // Process: AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0
    AESL_deadlock_detect_unit #(4, 3, 3, 3) AESL_deadlock_detect_unit_3 (
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

    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_0_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_0_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_1_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_1_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_2_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_2_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_3_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_0_3_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_0_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_0_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_1_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_1_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_2_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_2_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_3_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_1_3_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_0_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_0_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_1_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_1_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_2_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_2_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_3_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_2_3_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_0_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_0_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_1_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_1_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_2_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_2_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_3_U.if_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.weight_regfile_3_3_U.if_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.s_blk_n | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.r_blk_n);
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_0_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_0_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_1_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_1_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_2_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_2_U.i_write | ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_3_U.t_empty_n & (AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_ready | AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.ap_idle) & ~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.data_l1buf_3_U.i_write);
    assign proc_dep_vld_vec_3[2] = dl_detect_out ? proc_dep_vld_vec_3_reg[2] : (~AESL_inst_Conv_sysarr.grp_dataflow_parent_loop_proc14_fu_736.dataflow_parent_loop_proc_U0.dataflow_in_loop_LOOP_S_U0.runSysArr_U0.empty_blk_n);
    always @ (negedge reset or posedge clock) begin
        if (~reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_0_3;
    assign in_chan_dep_data_vec_3[3 : 0] = dep_chan_data_0_3;
    assign token_in_vec_3[0] = token_0_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_1_3;
    assign in_chan_dep_data_vec_3[7 : 4] = dep_chan_data_1_3;
    assign token_in_vec_3[1] = token_1_3;
    assign in_chan_dep_vld_vec_3[2] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[11 : 8] = dep_chan_data_2_3;
    assign token_in_vec_3[2] = token_2_3;
    assign dep_chan_vld_3_1 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_1 = out_chan_dep_data_3;
    assign token_3_1 = token_out_vec_3[0];
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[1];
    assign dep_chan_vld_3_0 = out_chan_dep_vld_vec_3[2];
    assign dep_chan_data_3_0 = out_chan_dep_data_3;
    assign token_3_0 = token_out_vec_3[2];


    AESL_deadlock_report_unit #(4) AESL_deadlock_report_unit_inst (
        .reset(reset),
        .clock(clock),
        .dl_in_vec(dl_in_vec),
        .dl_detect_out(dl_detect_out),
        .origin(origin),
        .token_clear(token_clear));

endmodule
