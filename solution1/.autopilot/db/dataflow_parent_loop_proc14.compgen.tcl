# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name weight_l2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_0 \
    op interface \
    ports { weight_l2_0_address0 { O 9 vector } weight_l2_0_ce0 { O 1 bit } weight_l2_0_d0 { O 8 vector } weight_l2_0_q0 { I 8 vector } weight_l2_0_we0 { O 1 bit } weight_l2_0_address1 { O 9 vector } weight_l2_0_ce1 { O 1 bit } weight_l2_0_d1 { O 8 vector } weight_l2_0_q1 { I 8 vector } weight_l2_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name weight_l2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_1 \
    op interface \
    ports { weight_l2_1_address0 { O 9 vector } weight_l2_1_ce0 { O 1 bit } weight_l2_1_d0 { O 8 vector } weight_l2_1_q0 { I 8 vector } weight_l2_1_we0 { O 1 bit } weight_l2_1_address1 { O 9 vector } weight_l2_1_ce1 { O 1 bit } weight_l2_1_d1 { O 8 vector } weight_l2_1_q1 { I 8 vector } weight_l2_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name weight_l2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_2 \
    op interface \
    ports { weight_l2_2_address0 { O 9 vector } weight_l2_2_ce0 { O 1 bit } weight_l2_2_d0 { O 8 vector } weight_l2_2_q0 { I 8 vector } weight_l2_2_we0 { O 1 bit } weight_l2_2_address1 { O 9 vector } weight_l2_2_ce1 { O 1 bit } weight_l2_2_d1 { O 8 vector } weight_l2_2_q1 { I 8 vector } weight_l2_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name weight_l2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_3 \
    op interface \
    ports { weight_l2_3_address0 { O 9 vector } weight_l2_3_ce0 { O 1 bit } weight_l2_3_d0 { O 8 vector } weight_l2_3_q0 { I 8 vector } weight_l2_3_we0 { O 1 bit } weight_l2_3_address1 { O 9 vector } weight_l2_3_ce1 { O 1 bit } weight_l2_3_d1 { O 8 vector } weight_l2_3_q1 { I 8 vector } weight_l2_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 224 \
    name data_l2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_0 \
    op interface \
    ports { data_l2_0_address0 { O 10 vector } data_l2_0_ce0 { O 1 bit } data_l2_0_d0 { O 8 vector } data_l2_0_q0 { I 8 vector } data_l2_0_we0 { O 1 bit } data_l2_0_address1 { O 10 vector } data_l2_0_ce1 { O 1 bit } data_l2_0_d1 { O 8 vector } data_l2_0_q1 { I 8 vector } data_l2_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 225 \
    name data_l2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_1 \
    op interface \
    ports { data_l2_1_address0 { O 10 vector } data_l2_1_ce0 { O 1 bit } data_l2_1_d0 { O 8 vector } data_l2_1_q0 { I 8 vector } data_l2_1_we0 { O 1 bit } data_l2_1_address1 { O 10 vector } data_l2_1_ce1 { O 1 bit } data_l2_1_d1 { O 8 vector } data_l2_1_q1 { I 8 vector } data_l2_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 226 \
    name data_l2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_2 \
    op interface \
    ports { data_l2_2_address0 { O 10 vector } data_l2_2_ce0 { O 1 bit } data_l2_2_d0 { O 8 vector } data_l2_2_q0 { I 8 vector } data_l2_2_we0 { O 1 bit } data_l2_2_address1 { O 10 vector } data_l2_2_ce1 { O 1 bit } data_l2_2_d1 { O 8 vector } data_l2_2_q1 { I 8 vector } data_l2_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 227 \
    name data_l2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_3 \
    op interface \
    ports { data_l2_3_address0 { O 10 vector } data_l2_3_ce0 { O 1 bit } data_l2_3_d0 { O 8 vector } data_l2_3_q0 { I 8 vector } data_l2_3_we0 { O 1 bit } data_l2_3_address1 { O 10 vector } data_l2_3_ce1 { O 1 bit } data_l2_3_d1 { O 8 vector } data_l2_3_q1 { I 8 vector } data_l2_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 230 \
    name output_l1_pass_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l1_pass_0 \
    op interface \
    ports { output_l1_pass_0_address0 { O 10 vector } output_l1_pass_0_ce0 { O 1 bit } output_l1_pass_0_d0 { O 32 vector } output_l1_pass_0_q0 { I 32 vector } output_l1_pass_0_we0 { O 1 bit } output_l1_pass_0_address1 { O 10 vector } output_l1_pass_0_ce1 { O 1 bit } output_l1_pass_0_d1 { O 32 vector } output_l1_pass_0_q1 { I 32 vector } output_l1_pass_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l1_pass_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 231 \
    name output_l1_pass_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l1_pass_1 \
    op interface \
    ports { output_l1_pass_1_address0 { O 10 vector } output_l1_pass_1_ce0 { O 1 bit } output_l1_pass_1_d0 { O 32 vector } output_l1_pass_1_q0 { I 32 vector } output_l1_pass_1_we0 { O 1 bit } output_l1_pass_1_address1 { O 10 vector } output_l1_pass_1_ce1 { O 1 bit } output_l1_pass_1_d1 { O 32 vector } output_l1_pass_1_q1 { I 32 vector } output_l1_pass_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l1_pass_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 232 \
    name output_l1_pass_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l1_pass_2 \
    op interface \
    ports { output_l1_pass_2_address0 { O 10 vector } output_l1_pass_2_ce0 { O 1 bit } output_l1_pass_2_d0 { O 32 vector } output_l1_pass_2_q0 { I 32 vector } output_l1_pass_2_we0 { O 1 bit } output_l1_pass_2_address1 { O 10 vector } output_l1_pass_2_ce1 { O 1 bit } output_l1_pass_2_d1 { O 32 vector } output_l1_pass_2_q1 { I 32 vector } output_l1_pass_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l1_pass_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 233 \
    name output_l1_pass_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l1_pass_3 \
    op interface \
    ports { output_l1_pass_3_address0 { O 10 vector } output_l1_pass_3_ce0 { O 1 bit } output_l1_pass_3_d0 { O 32 vector } output_l1_pass_3_q0 { I 32 vector } output_l1_pass_3_we0 { O 1 bit } output_l1_pass_3_address1 { O 10 vector } output_l1_pass_3_ce1 { O 1 bit } output_l1_pass_3_d1 { O 32 vector } output_l1_pass_3_q1 { I 32 vector } output_l1_pass_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l1_pass_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name RS \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_RS \
    op interface \
    ports { RS { I 32 vector } RS_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 9 vector } p_read_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 9 vector } p_read1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name ko_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ko_2 \
    op interface \
    ports { ko_2 { I 9 vector } ko_2_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name co_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_co_1 \
    op interface \
    ports { co_1 { I 10 vector } co_1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 32 vector } p_read2_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 10 vector } p_read3_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


