// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.1 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      Conv_sysarr_dbbuf
`define AUTOTB_DUT_INST AESL_inst_Conv_sysarr_dbbuf
`define AUTOTB_TOP      apatb_Conv_sysarr_dbbuf_top
`define AUTOTB_LAT_RESULT_FILE "Conv_sysarr_dbbuf.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "Conv_sysarr_dbbuf.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_Conv_sysarr_dbbuf_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_FIFO_bias_in_V AESL_autofifo_bias_in_V
`define AESL_FIFO_INST_bias_in_V AESL_autofifo_inst_bias_in_V
`define AESL_FIFO_weight_in_V AESL_autofifo_weight_in_V
`define AESL_FIFO_INST_weight_in_V AESL_autofifo_inst_weight_in_V
`define AESL_FIFO_data_in_V AESL_autofifo_data_in_V
`define AESL_FIFO_INST_data_in_V AESL_autofifo_inst_data_in_V
`define AESL_FIFO_conv_out_V AESL_autofifo_conv_out_V
`define AESL_FIFO_INST_conv_out_V AESL_autofifo_inst_conv_out_V
`define AUTOTB_TVIN_bias_in_V  "../tv/cdatafile/c.Conv_sysarr_dbbuf.autotvin_bias_in_V.dat"
`define AUTOTB_TVIN_weight_in_V  "../tv/cdatafile/c.Conv_sysarr_dbbuf.autotvin_weight_in_V.dat"
`define AUTOTB_TVIN_data_in_V  "../tv/cdatafile/c.Conv_sysarr_dbbuf.autotvin_data_in_V.dat"
`define AUTOTB_TVIN_conv_out_V  "../tv/cdatafile/c.Conv_sysarr_dbbuf.autotvin_conv_out_V.dat"
`define AUTOTB_TVIN_bias_in_V_out_wrapc  "../tv/rtldatafile/rtl.Conv_sysarr_dbbuf.autotvin_bias_in_V.dat"
`define AUTOTB_TVIN_weight_in_V_out_wrapc  "../tv/rtldatafile/rtl.Conv_sysarr_dbbuf.autotvin_weight_in_V.dat"
`define AUTOTB_TVIN_data_in_V_out_wrapc  "../tv/rtldatafile/rtl.Conv_sysarr_dbbuf.autotvin_data_in_V.dat"
`define AUTOTB_TVIN_conv_out_V_out_wrapc  "../tv/rtldatafile/rtl.Conv_sysarr_dbbuf.autotvin_conv_out_V.dat"
`define AUTOTB_TVOUT_conv_out_V  "../tv/cdatafile/c.Conv_sysarr_dbbuf.autotvout_conv_out_V.dat"
`define AUTOTB_TVOUT_conv_out_V_out_wrapc  "../tv/rtldatafile/rtl.Conv_sysarr_dbbuf.autotvout_conv_out_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 4;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = -1;
parameter LENGTH_bias_in_V = 21;
parameter LENGTH_weight_in_V = 576;
parameter LENGTH_data_in_V = 324;
parameter LENGTH_conv_out_V = 784;

task read_token;
    input integer fp;
    output reg [175 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

reg AESL_clock;
reg rst;
reg dut_rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [63 : 0] bias_in_V_dout;
wire  bias_in_V_empty_n;
wire  bias_in_V_read;
wire [63 : 0] weight_in_V_dout;
wire  weight_in_V_empty_n;
wire  weight_in_V_read;
wire [63 : 0] data_in_V_dout;
wire  data_in_V_empty_n;
wire  data_in_V_read;
wire [63 : 0] conv_out_V_din;
wire  conv_out_V_full_n;
wire  conv_out_V_write;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .bias_in_V_dout(bias_in_V_dout),
    .bias_in_V_empty_n(bias_in_V_empty_n),
    .bias_in_V_read(bias_in_V_read),
    .weight_in_V_dout(weight_in_V_dout),
    .weight_in_V_empty_n(weight_in_V_empty_n),
    .weight_in_V_read(weight_in_V_read),
    .data_in_V_dout(data_in_V_dout),
    .data_in_V_empty_n(data_in_V_empty_n),
    .data_in_V_read(data_in_V_read),
    .conv_out_V_din(conv_out_V_din),
    .conv_out_V_full_n(conv_out_V_full_n),
    .conv_out_V_write(conv_out_V_write));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = dut_rst;
assign ap_rst_n = ~dut_rst;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation bias_in_V

wire fifobias_in_V_rd;
wire [63 : 0] fifobias_in_V_dout;
wire fifobias_in_V_empty_n;
wire fifobias_in_V_ready;
wire fifobias_in_V_done;
reg [31:0] ap_c_n_tvin_trans_num_bias_in_V;
reg bias_in_V_ready_reg;

`AESL_FIFO_bias_in_V `AESL_FIFO_INST_bias_in_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifobias_in_V_rd),
    .if_dout      (fifobias_in_V_dout),
    .if_empty_n   (fifobias_in_V_empty_n),
    .ready        (fifobias_in_V_ready),
    .done         (fifobias_in_V_done)
);

// Assignment between dut and fifobias_in_V

// Assign input of fifobias_in_V
assign      fifobias_in_V_rd        =   bias_in_V_read & bias_in_V_empty_n;
assign    fifobias_in_V_ready   =   bias_in_V_ready_reg | ready_initial;
assign    fifobias_in_V_done    =   0;
// Assign input of dut
assign      bias_in_V_dout       =   fifobias_in_V_dout;
reg   reg_fifobias_in_V_empty_n;
initial begin : gen_reg_fifobias_in_V_empty_n_process
    integer proc_rand;
    reg_fifobias_in_V_empty_n = fifobias_in_V_empty_n;
    while (1) begin
        @ (fifobias_in_V_empty_n);
        reg_fifobias_in_V_empty_n = fifobias_in_V_empty_n;
    end
end

assign      bias_in_V_empty_n    =   reg_fifobias_in_V_empty_n;


// Fifo Instantiation weight_in_V

wire fifoweight_in_V_rd;
wire [63 : 0] fifoweight_in_V_dout;
wire fifoweight_in_V_empty_n;
wire fifoweight_in_V_ready;
wire fifoweight_in_V_done;
reg [31:0] ap_c_n_tvin_trans_num_weight_in_V;
reg weight_in_V_ready_reg;

`AESL_FIFO_weight_in_V `AESL_FIFO_INST_weight_in_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifoweight_in_V_rd),
    .if_dout      (fifoweight_in_V_dout),
    .if_empty_n   (fifoweight_in_V_empty_n),
    .ready        (fifoweight_in_V_ready),
    .done         (fifoweight_in_V_done)
);

// Assignment between dut and fifoweight_in_V

// Assign input of fifoweight_in_V
assign      fifoweight_in_V_rd        =   weight_in_V_read & weight_in_V_empty_n;
assign    fifoweight_in_V_ready   =   weight_in_V_ready_reg | ready_initial;
assign    fifoweight_in_V_done    =   0;
// Assign input of dut
assign      weight_in_V_dout       =   fifoweight_in_V_dout;
reg   reg_fifoweight_in_V_empty_n;
initial begin : gen_reg_fifoweight_in_V_empty_n_process
    integer proc_rand;
    reg_fifoweight_in_V_empty_n = fifoweight_in_V_empty_n;
    while (1) begin
        @ (fifoweight_in_V_empty_n);
        reg_fifoweight_in_V_empty_n = fifoweight_in_V_empty_n;
    end
end

assign      weight_in_V_empty_n    =   reg_fifoweight_in_V_empty_n;


// Fifo Instantiation data_in_V

wire fifodata_in_V_rd;
wire [63 : 0] fifodata_in_V_dout;
wire fifodata_in_V_empty_n;
wire fifodata_in_V_ready;
wire fifodata_in_V_done;
reg [31:0] ap_c_n_tvin_trans_num_data_in_V;
reg data_in_V_ready_reg;

`AESL_FIFO_data_in_V `AESL_FIFO_INST_data_in_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifodata_in_V_rd),
    .if_dout      (fifodata_in_V_dout),
    .if_empty_n   (fifodata_in_V_empty_n),
    .ready        (fifodata_in_V_ready),
    .done         (fifodata_in_V_done)
);

// Assignment between dut and fifodata_in_V

// Assign input of fifodata_in_V
assign      fifodata_in_V_rd        =   data_in_V_read & data_in_V_empty_n;
assign    fifodata_in_V_ready   =   data_in_V_ready_reg | ready_initial;
assign    fifodata_in_V_done    =   0;
// Assign input of dut
assign      data_in_V_dout       =   fifodata_in_V_dout;
reg   reg_fifodata_in_V_empty_n;
initial begin : gen_reg_fifodata_in_V_empty_n_process
    integer proc_rand;
    reg_fifodata_in_V_empty_n = fifodata_in_V_empty_n;
    while (1) begin
        @ (fifodata_in_V_empty_n);
        reg_fifodata_in_V_empty_n = fifodata_in_V_empty_n;
    end
end

assign      data_in_V_empty_n    =   reg_fifodata_in_V_empty_n;


//------------------------Fifoconv_out_V Instantiation--------------

// The input and output of fifoconv_out_V
wire  fifoconv_out_V_wr;
wire  [63 : 0] fifoconv_out_V_din;
wire  fifoconv_out_V_full_n;
wire  fifoconv_out_V_ready;
wire  fifoconv_out_V_done;

`AESL_FIFO_conv_out_V `AESL_FIFO_INST_conv_out_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifoconv_out_V_wr),
    .if_din       (fifoconv_out_V_din),
    .if_full_n    (fifoconv_out_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifoconv_out_V_ready),
    .done         (fifoconv_out_V_done)
);

// Assignment between dut and fifoconv_out_V

// Assign input of fifoconv_out_V
assign      fifoconv_out_V_wr        =   conv_out_V_write & conv_out_V_full_n;
assign      fifoconv_out_V_din        =   conv_out_V_din;
assign    fifoconv_out_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifoconv_out_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifoconv_out_V_full_n;
initial begin : gen_reg_fifoconv_out_V_full_n_process
    integer proc_rand;
    reg_fifoconv_out_V_full_n = fifoconv_out_V_full_n;
    while (1) begin
        @ (fifoconv_out_V_full_n);
        reg_fifoconv_out_V_full_n = fifoconv_out_V_full_n;
    end
end

assign      conv_out_V_full_n    =   reg_fifoconv_out_V_full_n;


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_bias_in_V;
reg [31:0] size_bias_in_V;
reg [31:0] size_bias_in_V_backup;
reg end_weight_in_V;
reg [31:0] size_weight_in_V;
reg [31:0] size_weight_in_V_backup;
reg end_data_in_V;
reg [31:0] size_data_in_V;
reg [31:0] size_data_in_V_backup;
reg end_conv_out_V;
reg [31:0] size_conv_out_V;
reg [31:0] size_conv_out_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(100+3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : initial_process_for_dut_rst
    integer proc_rand;
    dut_rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    dut_rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        if (start_cnt >= AUTOTB_TRANSACTION_NUM + 1) begin
            #0 start = 0;
        end
        @ (posedge AESL_clock);
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_bias_in_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    bias_in_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_bias_in_V > internal_trans_num) begin
            bias_in_V_ready_reg <= 1;
            @(posedge AESL_clock);
            bias_in_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    bias_in_V_ready_reg <= 0;
end
initial begin : proc_gen_weight_in_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    weight_in_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_weight_in_V > internal_trans_num) begin
            weight_in_V_ready_reg <= 1;
            @(posedge AESL_clock);
            weight_in_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    weight_in_V_ready_reg <= 0;
end
initial begin : proc_gen_data_in_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    data_in_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_data_in_V > internal_trans_num) begin
            data_in_V_ready_reg <= 1;
            @(posedge AESL_clock);
            data_in_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    data_in_V_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_bias_in_V "../tv/stream_size/stream_size_in_bias_in_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_bias_in_V
        integer fp_bias_in_V;
        reg [127:0] token_bias_in_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_bias_in_V = 0;
        end_bias_in_V = 0;
        wait (AESL_reset === 0);
        
        fp_bias_in_V = $fopen(`STREAM_SIZE_IN_bias_in_V, "r");
        if(fp_bias_in_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_bias_in_V);
            $finish;
        end
        read_token(fp_bias_in_V, token_bias_in_V); // should be [[[runtime]]]
        if (token_bias_in_V != "[[[runtime]]]") begin
            $display("ERROR: token_bias_in_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_bias_in_V = 0;
        size_bias_in_V_backup = 0;
        while (size_bias_in_V == 0 && end_bias_in_V == 0) begin
            ap_c_n_tvin_trans_num_bias_in_V = ap_c_n_tvin_trans_num_bias_in_V + 1;
            read_token(fp_bias_in_V, token_bias_in_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_bias_in_V == "[[transaction]]") begin
                read_token(fp_bias_in_V, token_bias_in_V); // should be transaction number
                read_token(fp_bias_in_V, token_bias_in_V); // should be size for hls::stream
                ret = $sscanf(token_bias_in_V, "%d", size_bias_in_V);
                if (size_bias_in_V > 0) begin
                    size_bias_in_V_backup = size_bias_in_V;
                end
                read_token(fp_bias_in_V, token_bias_in_V); // should be [[/transaction]]
            end else if (token_bias_in_V == "[[[/runtime]]]") begin
                $fclose(fp_bias_in_V);
                end_bias_in_V = 1;
            end else begin
                $display("ERROR: unknown token_bias_in_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_bias_in_V == 0) begin
                if (bias_in_V_read == 1 && bias_in_V_empty_n == 1) begin
                    if (size_bias_in_V > 0) begin
                        size_bias_in_V = size_bias_in_V - 1;
                        while (size_bias_in_V == 0 && end_bias_in_V == 0) begin
                            ap_c_n_tvin_trans_num_bias_in_V = ap_c_n_tvin_trans_num_bias_in_V + 1;
                            read_token(fp_bias_in_V, token_bias_in_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_bias_in_V == "[[transaction]]") begin
                                read_token(fp_bias_in_V, token_bias_in_V); // should be transaction number
                                read_token(fp_bias_in_V, token_bias_in_V); // should be size for hls::stream
                                ret = $sscanf(token_bias_in_V, "%d", size_bias_in_V);
                                if (size_bias_in_V > 0) begin
                                    size_bias_in_V_backup = size_bias_in_V;
                                end
                                read_token(fp_bias_in_V, token_bias_in_V); // should be [[/transaction]]
                            end else if (token_bias_in_V == "[[[/runtime]]]") begin
                                size_bias_in_V = size_bias_in_V_backup;
                                $fclose(fp_bias_in_V);
                                end_bias_in_V = 1;
                            end else begin
                                $display("ERROR: unknown token_bias_in_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (bias_in_V_read == 1 && bias_in_V_empty_n == 1) begin
                    if (size_bias_in_V > 0) begin
                        size_bias_in_V = size_bias_in_V - 1;
                        if (size_bias_in_V == 0) begin
                            ap_c_n_tvin_trans_num_bias_in_V = ap_c_n_tvin_trans_num_bias_in_V + 1;
                            size_bias_in_V = size_bias_in_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_weight_in_V "../tv/stream_size/stream_size_in_weight_in_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_weight_in_V
        integer fp_weight_in_V;
        reg [127:0] token_weight_in_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_weight_in_V = 0;
        end_weight_in_V = 0;
        wait (AESL_reset === 0);
        
        fp_weight_in_V = $fopen(`STREAM_SIZE_IN_weight_in_V, "r");
        if(fp_weight_in_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_weight_in_V);
            $finish;
        end
        read_token(fp_weight_in_V, token_weight_in_V); // should be [[[runtime]]]
        if (token_weight_in_V != "[[[runtime]]]") begin
            $display("ERROR: token_weight_in_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_weight_in_V = 0;
        size_weight_in_V_backup = 0;
        while (size_weight_in_V == 0 && end_weight_in_V == 0) begin
            ap_c_n_tvin_trans_num_weight_in_V = ap_c_n_tvin_trans_num_weight_in_V + 1;
            read_token(fp_weight_in_V, token_weight_in_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_weight_in_V == "[[transaction]]") begin
                read_token(fp_weight_in_V, token_weight_in_V); // should be transaction number
                read_token(fp_weight_in_V, token_weight_in_V); // should be size for hls::stream
                ret = $sscanf(token_weight_in_V, "%d", size_weight_in_V);
                if (size_weight_in_V > 0) begin
                    size_weight_in_V_backup = size_weight_in_V;
                end
                read_token(fp_weight_in_V, token_weight_in_V); // should be [[/transaction]]
            end else if (token_weight_in_V == "[[[/runtime]]]") begin
                $fclose(fp_weight_in_V);
                end_weight_in_V = 1;
            end else begin
                $display("ERROR: unknown token_weight_in_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_weight_in_V == 0) begin
                if (weight_in_V_read == 1 && weight_in_V_empty_n == 1) begin
                    if (size_weight_in_V > 0) begin
                        size_weight_in_V = size_weight_in_V - 1;
                        while (size_weight_in_V == 0 && end_weight_in_V == 0) begin
                            ap_c_n_tvin_trans_num_weight_in_V = ap_c_n_tvin_trans_num_weight_in_V + 1;
                            read_token(fp_weight_in_V, token_weight_in_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_weight_in_V == "[[transaction]]") begin
                                read_token(fp_weight_in_V, token_weight_in_V); // should be transaction number
                                read_token(fp_weight_in_V, token_weight_in_V); // should be size for hls::stream
                                ret = $sscanf(token_weight_in_V, "%d", size_weight_in_V);
                                if (size_weight_in_V > 0) begin
                                    size_weight_in_V_backup = size_weight_in_V;
                                end
                                read_token(fp_weight_in_V, token_weight_in_V); // should be [[/transaction]]
                            end else if (token_weight_in_V == "[[[/runtime]]]") begin
                                size_weight_in_V = size_weight_in_V_backup;
                                $fclose(fp_weight_in_V);
                                end_weight_in_V = 1;
                            end else begin
                                $display("ERROR: unknown token_weight_in_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (weight_in_V_read == 1 && weight_in_V_empty_n == 1) begin
                    if (size_weight_in_V > 0) begin
                        size_weight_in_V = size_weight_in_V - 1;
                        if (size_weight_in_V == 0) begin
                            ap_c_n_tvin_trans_num_weight_in_V = ap_c_n_tvin_trans_num_weight_in_V + 1;
                            size_weight_in_V = size_weight_in_V_backup;
                        end
                    end
                end
            end
        end
    end
    
    
    `define STREAM_SIZE_IN_data_in_V "../tv/stream_size/stream_size_in_data_in_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_data_in_V
        integer fp_data_in_V;
        reg [127:0] token_data_in_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_data_in_V = 0;
        end_data_in_V = 0;
        wait (AESL_reset === 0);
        
        fp_data_in_V = $fopen(`STREAM_SIZE_IN_data_in_V, "r");
        if(fp_data_in_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_data_in_V);
            $finish;
        end
        read_token(fp_data_in_V, token_data_in_V); // should be [[[runtime]]]
        if (token_data_in_V != "[[[runtime]]]") begin
            $display("ERROR: token_data_in_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_data_in_V = 0;
        size_data_in_V_backup = 0;
        while (size_data_in_V == 0 && end_data_in_V == 0) begin
            ap_c_n_tvin_trans_num_data_in_V = ap_c_n_tvin_trans_num_data_in_V + 1;
            read_token(fp_data_in_V, token_data_in_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_data_in_V == "[[transaction]]") begin
                read_token(fp_data_in_V, token_data_in_V); // should be transaction number
                read_token(fp_data_in_V, token_data_in_V); // should be size for hls::stream
                ret = $sscanf(token_data_in_V, "%d", size_data_in_V);
                if (size_data_in_V > 0) begin
                    size_data_in_V_backup = size_data_in_V;
                end
                read_token(fp_data_in_V, token_data_in_V); // should be [[/transaction]]
            end else if (token_data_in_V == "[[[/runtime]]]") begin
                $fclose(fp_data_in_V);
                end_data_in_V = 1;
            end else begin
                $display("ERROR: unknown token_data_in_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_data_in_V == 0) begin
                if (data_in_V_read == 1 && data_in_V_empty_n == 1) begin
                    if (size_data_in_V > 0) begin
                        size_data_in_V = size_data_in_V - 1;
                        while (size_data_in_V == 0 && end_data_in_V == 0) begin
                            ap_c_n_tvin_trans_num_data_in_V = ap_c_n_tvin_trans_num_data_in_V + 1;
                            read_token(fp_data_in_V, token_data_in_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_data_in_V == "[[transaction]]") begin
                                read_token(fp_data_in_V, token_data_in_V); // should be transaction number
                                read_token(fp_data_in_V, token_data_in_V); // should be size for hls::stream
                                ret = $sscanf(token_data_in_V, "%d", size_data_in_V);
                                if (size_data_in_V > 0) begin
                                    size_data_in_V_backup = size_data_in_V;
                                end
                                read_token(fp_data_in_V, token_data_in_V); // should be [[/transaction]]
                            end else if (token_data_in_V == "[[[/runtime]]]") begin
                                size_data_in_V = size_data_in_V_backup;
                                $fclose(fp_data_in_V);
                                end_data_in_V = 1;
                            end else begin
                                $display("ERROR: unknown token_data_in_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (data_in_V_read == 1 && data_in_V_empty_n == 1) begin
                    if (size_data_in_V > 0) begin
                        size_data_in_V = size_data_in_V - 1;
                        if (size_data_in_V == 0) begin
                            ap_c_n_tvin_trans_num_data_in_V = ap_c_n_tvin_trans_num_data_in_V + 1;
                            size_data_in_V = size_data_in_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_conv_out_V;

initial begin : dump_tvout_runtime_sign_conv_out_V
    integer fp;
    dump_tvout_finish_conv_out_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_conv_out_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_conv_out_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_conv_out_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_conv_out_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_conv_out_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    if (AESL_reset == 1) begin
        clk_cnt <= 32'h0;
        AESL_ready_p1 <= 1'b0;
        AESL_start_p1 <= 1'b0;
    end
    else begin
        clk_cnt <= clk_cnt + 1;
        AESL_ready_p1 <= AESL_ready;
        AESL_start_p1 <= AESL_start;
    end
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
reg [31:0] lat_total;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    reg [31:0] total_execute_time;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;
        total_execute_time = lat_total;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = start_timestamp[i + 1] - start_timestamp[i];
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);
        $fdisplay(fp, "$TOTAL_EXECUTE_TIME = \"%0d\"", total_execute_time);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask

always @(posedge AESL_clock)
begin
    if (done_cnt == AUTOTB_TRANSACTION_NUM - 1 && AESL_done == 1'b1)
        lat_total = clk_cnt - start_timestamp[0];
end

////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

// Dependence Check (WAR) "ap_enable_operation_1048"(R:SV34-35) -> "ap_enable_operation_1210"(W:SV39-39) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_1050"(R:SV34-35) -> "ap_enable_operation_1216"(W:SV39-39) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_1052"(R:SV34-35) -> "ap_enable_operation_1222"(W:SV39-39) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_1054"(R:SV34-35) -> "ap_enable_operation_1225"(W:SV39-39) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_1210"(W:SV39-39) -> "ap_enable_operation_1007"(R:SV34-35) @ `AUTOTB_DUT_INST
reg [9:0] DEP_address_4_to [5 - 1:0];
time DEP_time_4_to [5 - 1:0];
reg [9:0] DEP_address_4_from [1 - 1:0];
time DEP_time_4_from [1 - 1:0];
reg DEP_error_4 = 0;
integer DEP_i_4;

initial begin
    DEP_address_4_to[0] = 0;
    DEP_time_4_to[0] = 0;
    DEP_address_4_to[1] = 0;
    DEP_time_4_to[1] = 0;
    DEP_address_4_to[2] = 0;
    DEP_time_4_to[2] = 0;
    DEP_address_4_to[3] = 0;
    DEP_time_4_to[3] = 0;
    DEP_address_4_to[4] = 0;
    DEP_time_4_to[4] = 0;
    DEP_address_4_from[0] = 0;
    DEP_time_4_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp8) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter2) begin 
            DEP_address_4_to[4] = DEP_address_4_to[3];
            DEP_time_4_to[4] = DEP_time_4_to[3];
            DEP_address_4_to[3] = DEP_address_4_to[2];
            DEP_time_4_to[3] = DEP_time_4_to[2];
            DEP_address_4_to[2] = DEP_address_4_to[1];
            DEP_time_4_to[2] = DEP_time_4_to[1];
            DEP_address_4_to[1] = DEP_address_4_to[0];
            DEP_time_4_to[1] = DEP_time_4_to[0];
            if (`AUTOTB_DUT_INST.ap_enable_operation_1007) begin
                DEP_address_4_to[0] = {1'b1, `AUTOTB_DUT_INST.output_l1_3_address1};
                DEP_time_4_to[0] = $time;
            end else begin
                DEP_address_4_to[0] = {1'b0, 9'b0};
                DEP_time_4_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0||
            `AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0||
            `AUTOTB_DUT_INST.ap_enable_state60_pp8_iter3_stage0||
            `AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0)
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp8_iter2) begin
            DEP_address_4_to[4] = DEP_address_4_to[3];
            DEP_time_4_to[4] = DEP_time_4_to[3];
            DEP_address_4_to[3] = DEP_address_4_to[2];
            DEP_time_4_to[3] = DEP_time_4_to[2];
            DEP_address_4_to[2] = DEP_address_4_to[1];
            DEP_time_4_to[2] = DEP_time_4_to[1];
            DEP_address_4_to[1] = DEP_address_4_to[0];
            DEP_time_4_to[1] = DEP_time_4_to[0];
            DEP_address_4_to[0] = {1'b0, 9'b0};
            DEP_time_4_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter7) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_1210) begin
                if (DEP_address_4_from[0][9]) begin
                    $display("// ERROR : \"DEP_address_4_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_4_from[0] = {1'b1, `AUTOTB_DUT_INST.output_l1_3_address0};
                DEP_time_4_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter7) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_1210) begin
                DEP_i_4 = 0;
                if (DEP_address_4_to[0][9]) begin
                    DEP_error_4 = (DEP_address_4_to[0][8:0] == DEP_address_4_from[DEP_i_4][8:0]);
                    if (DEP_error_4) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 5) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_4_from[DEP_i_4][8:0], DEP_time_4_from[DEP_i_4]);
                        $display("//                : To memory access \"output_l1_3_address1\" = DEP_address_4_to[0][8:0] = 0x%0h @ \"%0t\"", DEP_address_4_to[0][8:0], DEP_time_4_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1210"(W:SV39-39) -> "ap_enable_operation_1007"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_4_to[1][9]) begin
                    DEP_error_4 = (DEP_address_4_to[1][8:0] == DEP_address_4_from[DEP_i_4][8:0]);
                    if (DEP_error_4) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 4) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_4_from[DEP_i_4][8:0], DEP_time_4_from[DEP_i_4]);
                        $display("//                : To memory access \"output_l1_3_address1\" = DEP_address_4_to[1][8:0] = 0x%0h @ \"%0t\"", DEP_address_4_to[1][8:0], DEP_time_4_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1210"(W:SV39-39) -> "ap_enable_operation_1007"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_4_to[2][9]) begin
                    DEP_error_4 = (DEP_address_4_to[2][8:0] == DEP_address_4_from[DEP_i_4][8:0]);
                    if (DEP_error_4) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 3) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_4_from[DEP_i_4][8:0], DEP_time_4_from[DEP_i_4]);
                        $display("//                : To memory access \"output_l1_3_address1\" = DEP_address_4_to[2][8:0] = 0x%0h @ \"%0t\"", DEP_address_4_to[2][8:0], DEP_time_4_to[2]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1210"(W:SV39-39) -> "ap_enable_operation_1007"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_4_to[3][9]) begin
                    DEP_error_4 = (DEP_address_4_to[3][8:0] == DEP_address_4_from[DEP_i_4][8:0]);
                    if (DEP_error_4) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_4_from[DEP_i_4][8:0], DEP_time_4_from[DEP_i_4]);
                        $display("//                : To memory access \"output_l1_3_address1\" = DEP_address_4_to[3][8:0] = 0x%0h @ \"%0t\"", DEP_address_4_to[3][8:0], DEP_time_4_to[3]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1210"(W:SV39-39) -> "ap_enable_operation_1007"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_4_to[4][9]) begin
                    DEP_error_4 = (DEP_address_4_to[4][8:0] == DEP_address_4_from[DEP_i_4][8:0]);
                    if (DEP_error_4) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_3_address0\" = 0x%0h @ \"%0t\"", DEP_address_4_from[DEP_i_4][8:0], DEP_time_4_from[DEP_i_4]);
                        $display("//                : To memory access \"output_l1_3_address1\" = DEP_address_4_to[4][8:0] = 0x%0h @ \"%0t\"", DEP_address_4_to[4][8:0], DEP_time_4_to[4]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1210"(W:SV39-39) -> "ap_enable_operation_1007"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_4_from[DEP_i_4] = {1'b0, 9'b0};
                DEP_time_4_from[DEP_i_4] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_1216"(W:SV39-39) -> "ap_enable_operation_1011"(R:SV34-35) @ `AUTOTB_DUT_INST
reg [9:0] DEP_address_5_to [5 - 1:0];
time DEP_time_5_to [5 - 1:0];
reg [9:0] DEP_address_5_from [1 - 1:0];
time DEP_time_5_from [1 - 1:0];
reg DEP_error_5 = 0;
integer DEP_i_5;

initial begin
    DEP_address_5_to[0] = 0;
    DEP_time_5_to[0] = 0;
    DEP_address_5_to[1] = 0;
    DEP_time_5_to[1] = 0;
    DEP_address_5_to[2] = 0;
    DEP_time_5_to[2] = 0;
    DEP_address_5_to[3] = 0;
    DEP_time_5_to[3] = 0;
    DEP_address_5_to[4] = 0;
    DEP_time_5_to[4] = 0;
    DEP_address_5_from[0] = 0;
    DEP_time_5_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp8) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter2) begin 
            DEP_address_5_to[4] = DEP_address_5_to[3];
            DEP_time_5_to[4] = DEP_time_5_to[3];
            DEP_address_5_to[3] = DEP_address_5_to[2];
            DEP_time_5_to[3] = DEP_time_5_to[2];
            DEP_address_5_to[2] = DEP_address_5_to[1];
            DEP_time_5_to[2] = DEP_time_5_to[1];
            DEP_address_5_to[1] = DEP_address_5_to[0];
            DEP_time_5_to[1] = DEP_time_5_to[0];
            if (`AUTOTB_DUT_INST.ap_enable_operation_1011) begin
                DEP_address_5_to[0] = {1'b1, `AUTOTB_DUT_INST.output_l1_2_address1};
                DEP_time_5_to[0] = $time;
            end else begin
                DEP_address_5_to[0] = {1'b0, 9'b0};
                DEP_time_5_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0||
            `AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0||
            `AUTOTB_DUT_INST.ap_enable_state60_pp8_iter3_stage0||
            `AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0)
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp8_iter2) begin
            DEP_address_5_to[4] = DEP_address_5_to[3];
            DEP_time_5_to[4] = DEP_time_5_to[3];
            DEP_address_5_to[3] = DEP_address_5_to[2];
            DEP_time_5_to[3] = DEP_time_5_to[2];
            DEP_address_5_to[2] = DEP_address_5_to[1];
            DEP_time_5_to[2] = DEP_time_5_to[1];
            DEP_address_5_to[1] = DEP_address_5_to[0];
            DEP_time_5_to[1] = DEP_time_5_to[0];
            DEP_address_5_to[0] = {1'b0, 9'b0};
            DEP_time_5_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter7) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_1216) begin
                if (DEP_address_5_from[0][9]) begin
                    $display("// ERROR : \"DEP_address_5_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_5_from[0] = {1'b1, `AUTOTB_DUT_INST.output_l1_2_address0};
                DEP_time_5_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter7) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_1216) begin
                DEP_i_5 = 0;
                if (DEP_address_5_to[0][9]) begin
                    DEP_error_5 = (DEP_address_5_to[0][8:0] == DEP_address_5_from[DEP_i_5][8:0]);
                    if (DEP_error_5) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 5) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_5_from[DEP_i_5][8:0], DEP_time_5_from[DEP_i_5]);
                        $display("//                : To memory access \"output_l1_2_address1\" = DEP_address_5_to[0][8:0] = 0x%0h @ \"%0t\"", DEP_address_5_to[0][8:0], DEP_time_5_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1216"(W:SV39-39) -> "ap_enable_operation_1011"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_5_to[1][9]) begin
                    DEP_error_5 = (DEP_address_5_to[1][8:0] == DEP_address_5_from[DEP_i_5][8:0]);
                    if (DEP_error_5) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 4) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_5_from[DEP_i_5][8:0], DEP_time_5_from[DEP_i_5]);
                        $display("//                : To memory access \"output_l1_2_address1\" = DEP_address_5_to[1][8:0] = 0x%0h @ \"%0t\"", DEP_address_5_to[1][8:0], DEP_time_5_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1216"(W:SV39-39) -> "ap_enable_operation_1011"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_5_to[2][9]) begin
                    DEP_error_5 = (DEP_address_5_to[2][8:0] == DEP_address_5_from[DEP_i_5][8:0]);
                    if (DEP_error_5) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 3) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_5_from[DEP_i_5][8:0], DEP_time_5_from[DEP_i_5]);
                        $display("//                : To memory access \"output_l1_2_address1\" = DEP_address_5_to[2][8:0] = 0x%0h @ \"%0t\"", DEP_address_5_to[2][8:0], DEP_time_5_to[2]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1216"(W:SV39-39) -> "ap_enable_operation_1011"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_5_to[3][9]) begin
                    DEP_error_5 = (DEP_address_5_to[3][8:0] == DEP_address_5_from[DEP_i_5][8:0]);
                    if (DEP_error_5) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_5_from[DEP_i_5][8:0], DEP_time_5_from[DEP_i_5]);
                        $display("//                : To memory access \"output_l1_2_address1\" = DEP_address_5_to[3][8:0] = 0x%0h @ \"%0t\"", DEP_address_5_to[3][8:0], DEP_time_5_to[3]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1216"(W:SV39-39) -> "ap_enable_operation_1011"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_5_to[4][9]) begin
                    DEP_error_5 = (DEP_address_5_to[4][8:0] == DEP_address_5_from[DEP_i_5][8:0]);
                    if (DEP_error_5) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_2_address0\" = 0x%0h @ \"%0t\"", DEP_address_5_from[DEP_i_5][8:0], DEP_time_5_from[DEP_i_5]);
                        $display("//                : To memory access \"output_l1_2_address1\" = DEP_address_5_to[4][8:0] = 0x%0h @ \"%0t\"", DEP_address_5_to[4][8:0], DEP_time_5_to[4]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1216"(W:SV39-39) -> "ap_enable_operation_1011"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_5_from[DEP_i_5] = {1'b0, 9'b0};
                DEP_time_5_from[DEP_i_5] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_1222"(W:SV39-39) -> "ap_enable_operation_1015"(R:SV34-35) @ `AUTOTB_DUT_INST
reg [9:0] DEP_address_6_to [5 - 1:0];
time DEP_time_6_to [5 - 1:0];
reg [9:0] DEP_address_6_from [1 - 1:0];
time DEP_time_6_from [1 - 1:0];
reg DEP_error_6 = 0;
integer DEP_i_6;

initial begin
    DEP_address_6_to[0] = 0;
    DEP_time_6_to[0] = 0;
    DEP_address_6_to[1] = 0;
    DEP_time_6_to[1] = 0;
    DEP_address_6_to[2] = 0;
    DEP_time_6_to[2] = 0;
    DEP_address_6_to[3] = 0;
    DEP_time_6_to[3] = 0;
    DEP_address_6_to[4] = 0;
    DEP_time_6_to[4] = 0;
    DEP_address_6_from[0] = 0;
    DEP_time_6_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp8) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter2) begin 
            DEP_address_6_to[4] = DEP_address_6_to[3];
            DEP_time_6_to[4] = DEP_time_6_to[3];
            DEP_address_6_to[3] = DEP_address_6_to[2];
            DEP_time_6_to[3] = DEP_time_6_to[2];
            DEP_address_6_to[2] = DEP_address_6_to[1];
            DEP_time_6_to[2] = DEP_time_6_to[1];
            DEP_address_6_to[1] = DEP_address_6_to[0];
            DEP_time_6_to[1] = DEP_time_6_to[0];
            if (`AUTOTB_DUT_INST.ap_enable_operation_1015) begin
                DEP_address_6_to[0] = {1'b1, `AUTOTB_DUT_INST.output_l1_1_address1};
                DEP_time_6_to[0] = $time;
            end else begin
                DEP_address_6_to[0] = {1'b0, 9'b0};
                DEP_time_6_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0||
            `AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0||
            `AUTOTB_DUT_INST.ap_enable_state60_pp8_iter3_stage0||
            `AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0)
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp8_iter2) begin
            DEP_address_6_to[4] = DEP_address_6_to[3];
            DEP_time_6_to[4] = DEP_time_6_to[3];
            DEP_address_6_to[3] = DEP_address_6_to[2];
            DEP_time_6_to[3] = DEP_time_6_to[2];
            DEP_address_6_to[2] = DEP_address_6_to[1];
            DEP_time_6_to[2] = DEP_time_6_to[1];
            DEP_address_6_to[1] = DEP_address_6_to[0];
            DEP_time_6_to[1] = DEP_time_6_to[0];
            DEP_address_6_to[0] = {1'b0, 9'b0};
            DEP_time_6_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter7) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_1222) begin
                if (DEP_address_6_from[0][9]) begin
                    $display("// ERROR : \"DEP_address_6_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_6_from[0] = {1'b1, `AUTOTB_DUT_INST.output_l1_1_address0};
                DEP_time_6_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter7) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_1222) begin
                DEP_i_6 = 0;
                if (DEP_address_6_to[0][9]) begin
                    DEP_error_6 = (DEP_address_6_to[0][8:0] == DEP_address_6_from[DEP_i_6][8:0]);
                    if (DEP_error_6) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 5) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][8:0], DEP_time_6_from[DEP_i_6]);
                        $display("//                : To memory access \"output_l1_1_address1\" = DEP_address_6_to[0][8:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[0][8:0], DEP_time_6_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1222"(W:SV39-39) -> "ap_enable_operation_1015"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_6_to[1][9]) begin
                    DEP_error_6 = (DEP_address_6_to[1][8:0] == DEP_address_6_from[DEP_i_6][8:0]);
                    if (DEP_error_6) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 4) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][8:0], DEP_time_6_from[DEP_i_6]);
                        $display("//                : To memory access \"output_l1_1_address1\" = DEP_address_6_to[1][8:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[1][8:0], DEP_time_6_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1222"(W:SV39-39) -> "ap_enable_operation_1015"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_6_to[2][9]) begin
                    DEP_error_6 = (DEP_address_6_to[2][8:0] == DEP_address_6_from[DEP_i_6][8:0]);
                    if (DEP_error_6) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 3) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][8:0], DEP_time_6_from[DEP_i_6]);
                        $display("//                : To memory access \"output_l1_1_address1\" = DEP_address_6_to[2][8:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[2][8:0], DEP_time_6_to[2]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1222"(W:SV39-39) -> "ap_enable_operation_1015"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_6_to[3][9]) begin
                    DEP_error_6 = (DEP_address_6_to[3][8:0] == DEP_address_6_from[DEP_i_6][8:0]);
                    if (DEP_error_6) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][8:0], DEP_time_6_from[DEP_i_6]);
                        $display("//                : To memory access \"output_l1_1_address1\" = DEP_address_6_to[3][8:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[3][8:0], DEP_time_6_to[3]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1222"(W:SV39-39) -> "ap_enable_operation_1015"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_6_to[4][9]) begin
                    DEP_error_6 = (DEP_address_6_to[4][8:0] == DEP_address_6_from[DEP_i_6][8:0]);
                    if (DEP_error_6) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_1_address0\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][8:0], DEP_time_6_from[DEP_i_6]);
                        $display("//                : To memory access \"output_l1_1_address1\" = DEP_address_6_to[4][8:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[4][8:0], DEP_time_6_to[4]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1222"(W:SV39-39) -> "ap_enable_operation_1015"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_6_from[DEP_i_6] = {1'b0, 9'b0};
                DEP_time_6_from[DEP_i_6] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_1225"(W:SV39-39) -> "ap_enable_operation_1019"(R:SV34-35) @ `AUTOTB_DUT_INST
reg [9:0] DEP_address_7_to [5 - 1:0];
time DEP_time_7_to [5 - 1:0];
reg [9:0] DEP_address_7_from [1 - 1:0];
time DEP_time_7_from [1 - 1:0];
reg DEP_error_7 = 0;
integer DEP_i_7;

initial begin
    DEP_address_7_to[0] = 0;
    DEP_time_7_to[0] = 0;
    DEP_address_7_to[1] = 0;
    DEP_time_7_to[1] = 0;
    DEP_address_7_to[2] = 0;
    DEP_time_7_to[2] = 0;
    DEP_address_7_to[3] = 0;
    DEP_time_7_to[3] = 0;
    DEP_address_7_to[4] = 0;
    DEP_time_7_to[4] = 0;
    DEP_address_7_from[0] = 0;
    DEP_time_7_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp8) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter2) begin 
            DEP_address_7_to[4] = DEP_address_7_to[3];
            DEP_time_7_to[4] = DEP_time_7_to[3];
            DEP_address_7_to[3] = DEP_address_7_to[2];
            DEP_time_7_to[3] = DEP_time_7_to[2];
            DEP_address_7_to[2] = DEP_address_7_to[1];
            DEP_time_7_to[2] = DEP_time_7_to[1];
            DEP_address_7_to[1] = DEP_address_7_to[0];
            DEP_time_7_to[1] = DEP_time_7_to[0];
            if (`AUTOTB_DUT_INST.ap_enable_operation_1019) begin
                DEP_address_7_to[0] = {1'b1, `AUTOTB_DUT_INST.output_l1_0_address1};
                DEP_time_7_to[0] = $time;
            end else begin
                DEP_address_7_to[0] = {1'b0, 9'b0};
                DEP_time_7_to[0] = $time;
            end
        end // of record to access
        else if( (`AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0||
            `AUTOTB_DUT_INST.ap_enable_state59_pp8_iter2_stage0||
            `AUTOTB_DUT_INST.ap_enable_state60_pp8_iter3_stage0||
            `AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0)
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp8_iter2) begin
            DEP_address_7_to[4] = DEP_address_7_to[3];
            DEP_time_7_to[4] = DEP_time_7_to[3];
            DEP_address_7_to[3] = DEP_address_7_to[2];
            DEP_time_7_to[3] = DEP_time_7_to[2];
            DEP_address_7_to[2] = DEP_address_7_to[1];
            DEP_time_7_to[2] = DEP_time_7_to[1];
            DEP_address_7_to[1] = DEP_address_7_to[0];
            DEP_time_7_to[1] = DEP_time_7_to[0];
            DEP_address_7_to[0] = {1'b0, 9'b0};
            DEP_time_7_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter7) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_1225) begin
                if (DEP_address_7_from[0][9]) begin
                    $display("// ERROR : \"DEP_address_7_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_7_from[0] = {1'b1, `AUTOTB_DUT_INST.output_l1_0_address0};
                DEP_time_7_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state64_pp8_iter7_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp8_iter7) begin
            if (`AUTOTB_DUT_INST.ap_enable_operation_1225) begin
                DEP_i_7 = 0;
                if (DEP_address_7_to[0][9]) begin
                    DEP_error_7 = (DEP_address_7_to[0][8:0] == DEP_address_7_from[DEP_i_7][8:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 5) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_0_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][8:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"output_l1_0_address1\" = DEP_address_7_to[0][8:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[0][8:0], DEP_time_7_to[0]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1225"(W:SV39-39) -> "ap_enable_operation_1019"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_7_to[1][9]) begin
                    DEP_error_7 = (DEP_address_7_to[1][8:0] == DEP_address_7_from[DEP_i_7][8:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 4) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_0_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][8:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"output_l1_0_address1\" = DEP_address_7_to[1][8:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[1][8:0], DEP_time_7_to[1]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1225"(W:SV39-39) -> "ap_enable_operation_1019"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_7_to[2][9]) begin
                    DEP_error_7 = (DEP_address_7_to[2][8:0] == DEP_address_7_from[DEP_i_7][8:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 3) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_0_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][8:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"output_l1_0_address1\" = DEP_address_7_to[2][8:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[2][8:0], DEP_time_7_to[2]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1225"(W:SV39-39) -> "ap_enable_operation_1019"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_7_to[3][9]) begin
                    DEP_error_7 = (DEP_address_7_to[3][8:0] == DEP_address_7_from[DEP_i_7][8:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 2) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_0_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][8:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"output_l1_0_address1\" = DEP_address_7_to[3][8:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[3][8:0], DEP_time_7_to[3]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1225"(W:SV39-39) -> "ap_enable_operation_1019"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                if (DEP_address_7_to[4][9]) begin
                    DEP_error_7 = (DEP_address_7_to[4][8:0] == DEP_address_7_from[DEP_i_7][8:0]);
                    if (DEP_error_7) begin
                        $display("//Critical WARNING: Due to pragma (Systolic_Array_PCNN_based/conv_sysarr_dbbuf.cpp:183:61), dependence access (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//                : From memory access \"output_l1_0_address0\" = 0x%0h @ \"%0t\"", DEP_address_7_from[DEP_i_7][8:0], DEP_time_7_from[DEP_i_7]);
                        $display("//                : To memory access \"output_l1_0_address1\" = DEP_address_7_to[4][8:0] = 0x%0h @ \"%0t\"", DEP_address_7_to[4][8:0], DEP_time_7_to[4]);
                        $display("//If cosim fails, the WARNING should be checked. autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_1225"(W:SV39-39) -> "ap_enable_operation_1019"(R:SV34-35) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_7_from[DEP_i_7] = {1'b0, 9'b0};
                DEP_time_7_from[DEP_i_7] = 0;
            end
        end // of check access
    end 
end

`endif

endmodule
