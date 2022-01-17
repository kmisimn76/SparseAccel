
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set conv_out_group [add_wave_group conv_out(fifo) -into $coutputgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/conv_out_V_write -into $conv_out_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/conv_out_V_full_n -into $conv_out_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/conv_out_V_din -into $conv_out_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set data_in_group [add_wave_group data_in(fifo) -into $cinputgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/data_in_V_read -into $data_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/data_in_V_empty_n -into $data_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/data_in_V_dout -into $data_in_group -radix hex
set weight_in_group [add_wave_group weight_in(fifo) -into $cinputgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/weight_in_V_read -into $weight_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/weight_in_V_empty_n -into $weight_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/weight_in_V_dout -into $weight_in_group -radix hex
set bias_in_group [add_wave_group bias_in(fifo) -into $cinputgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/bias_in_V_read -into $bias_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/bias_in_V_empty_n -into $bias_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/bias_in_V_dout -into $bias_in_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/ap_start -into $blocksiggroup
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/ap_done -into $blocksiggroup
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/ap_idle -into $blocksiggroup
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/AESL_inst_Conv_sysarr_dbbuf/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/LENGTH_bias_in_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/LENGTH_weight_in_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/LENGTH_data_in_V -into $tb_portdepth_group -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/LENGTH_conv_out_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_conv_out_group [add_wave_group conv_out(fifo) -into $tbcoutputgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/conv_out_V_write -into $tb_conv_out_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/conv_out_V_full_n -into $tb_conv_out_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/conv_out_V_din -into $tb_conv_out_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_data_in_group [add_wave_group data_in(fifo) -into $tbcinputgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/data_in_V_read -into $tb_data_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/data_in_V_empty_n -into $tb_data_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/data_in_V_dout -into $tb_data_in_group -radix hex
set tb_weight_in_group [add_wave_group weight_in(fifo) -into $tbcinputgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/weight_in_V_read -into $tb_weight_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/weight_in_V_empty_n -into $tb_weight_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/weight_in_V_dout -into $tb_weight_in_group -radix hex
set tb_bias_in_group [add_wave_group bias_in(fifo) -into $tbcinputgroup]
add_wave /apatb_Conv_sysarr_dbbuf_top/bias_in_V_read -into $tb_bias_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/bias_in_V_empty_n -into $tb_bias_in_group -color #ffff00 -radix hex
add_wave /apatb_Conv_sysarr_dbbuf_top/bias_in_V_dout -into $tb_bias_in_group -radix hex
save_wave_config Conv_sysarr_dbbuf.wcfg
run all

