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
    id 323 \
    name data_l2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_0 \
    op interface \
    ports { data_l2_0_address0 { O 11 vector } data_l2_0_ce0 { O 1 bit } data_l2_0_d0 { O 8 vector } data_l2_0_q0 { I 8 vector } data_l2_0_we0 { O 1 bit } data_l2_0_address1 { O 11 vector } data_l2_0_ce1 { O 1 bit } data_l2_0_d1 { O 8 vector } data_l2_0_q1 { I 8 vector } data_l2_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name data_l2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_1 \
    op interface \
    ports { data_l2_1_address0 { O 11 vector } data_l2_1_ce0 { O 1 bit } data_l2_1_d0 { O 8 vector } data_l2_1_q0 { I 8 vector } data_l2_1_we0 { O 1 bit } data_l2_1_address1 { O 11 vector } data_l2_1_ce1 { O 1 bit } data_l2_1_d1 { O 8 vector } data_l2_1_q1 { I 8 vector } data_l2_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name data_l2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_2 \
    op interface \
    ports { data_l2_2_address0 { O 11 vector } data_l2_2_ce0 { O 1 bit } data_l2_2_d0 { O 8 vector } data_l2_2_q0 { I 8 vector } data_l2_2_we0 { O 1 bit } data_l2_2_address1 { O 11 vector } data_l2_2_ce1 { O 1 bit } data_l2_2_d1 { O 8 vector } data_l2_2_q1 { I 8 vector } data_l2_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 326 \
    name data_l2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename data_l2_3 \
    op interface \
    ports { data_l2_3_address0 { O 11 vector } data_l2_3_ce0 { O 1 bit } data_l2_3_d0 { O 8 vector } data_l2_3_q0 { I 8 vector } data_l2_3_we0 { O 1 bit } data_l2_3_address1 { O 11 vector } data_l2_3_ce1 { O 1 bit } data_l2_3_d1 { O 8 vector } data_l2_3_q1 { I 8 vector } data_l2_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'data_l2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 327 \
    name output_l2_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l2_0 \
    op interface \
    ports { output_l2_0_address0 { O 11 vector } output_l2_0_ce0 { O 1 bit } output_l2_0_d0 { O 32 vector } output_l2_0_q0 { I 32 vector } output_l2_0_we0 { O 1 bit } output_l2_0_address1 { O 11 vector } output_l2_0_ce1 { O 1 bit } output_l2_0_d1 { O 32 vector } output_l2_0_q1 { I 32 vector } output_l2_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 328 \
    name output_l2_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l2_1 \
    op interface \
    ports { output_l2_1_address0 { O 11 vector } output_l2_1_ce0 { O 1 bit } output_l2_1_d0 { O 32 vector } output_l2_1_q0 { I 32 vector } output_l2_1_we0 { O 1 bit } output_l2_1_address1 { O 11 vector } output_l2_1_ce1 { O 1 bit } output_l2_1_d1 { O 32 vector } output_l2_1_q1 { I 32 vector } output_l2_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 329 \
    name output_l2_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l2_2 \
    op interface \
    ports { output_l2_2_address0 { O 11 vector } output_l2_2_ce0 { O 1 bit } output_l2_2_d0 { O 32 vector } output_l2_2_q0 { I 32 vector } output_l2_2_we0 { O 1 bit } output_l2_2_address1 { O 11 vector } output_l2_2_ce1 { O 1 bit } output_l2_2_d1 { O 32 vector } output_l2_2_q1 { I 32 vector } output_l2_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 330 \
    name output_l2_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename output_l2_3 \
    op interface \
    ports { output_l2_3_address0 { O 11 vector } output_l2_3_ce0 { O 1 bit } output_l2_3_d0 { O 32 vector } output_l2_3_q0 { I 32 vector } output_l2_3_we0 { O 1 bit } output_l2_3_address1 { O 11 vector } output_l2_3_ce1 { O 1 bit } output_l2_3_d1 { O 32 vector } output_l2_3_q1 { I 32 vector } output_l2_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'output_l2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 331 \
    name weight_l2_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_0 \
    op interface \
    ports { weight_l2_0_address0 { O 12 vector } weight_l2_0_ce0 { O 1 bit } weight_l2_0_d0 { O 8 vector } weight_l2_0_q0 { I 8 vector } weight_l2_0_we0 { O 1 bit } weight_l2_0_address1 { O 12 vector } weight_l2_0_ce1 { O 1 bit } weight_l2_0_d1 { O 8 vector } weight_l2_0_q1 { I 8 vector } weight_l2_0_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 332 \
    name weight_l2_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_1 \
    op interface \
    ports { weight_l2_1_address0 { O 12 vector } weight_l2_1_ce0 { O 1 bit } weight_l2_1_d0 { O 8 vector } weight_l2_1_q0 { I 8 vector } weight_l2_1_we0 { O 1 bit } weight_l2_1_address1 { O 12 vector } weight_l2_1_ce1 { O 1 bit } weight_l2_1_d1 { O 8 vector } weight_l2_1_q1 { I 8 vector } weight_l2_1_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 333 \
    name weight_l2_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_2 \
    op interface \
    ports { weight_l2_2_address0 { O 12 vector } weight_l2_2_ce0 { O 1 bit } weight_l2_2_d0 { O 8 vector } weight_l2_2_q0 { I 8 vector } weight_l2_2_we0 { O 1 bit } weight_l2_2_address1 { O 12 vector } weight_l2_2_ce1 { O 1 bit } weight_l2_2_d1 { O 8 vector } weight_l2_2_q1 { I 8 vector } weight_l2_2_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 334 \
    name weight_l2_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename weight_l2_3 \
    op interface \
    ports { weight_l2_3_address0 { O 12 vector } weight_l2_3_ce0 { O 1 bit } weight_l2_3_d0 { O 8 vector } weight_l2_3_q0 { I 8 vector } weight_l2_3_we0 { O 1 bit } weight_l2_3_address1 { O 12 vector } weight_l2_3_ce1 { O 1 bit } weight_l2_3_d1 { O 8 vector } weight_l2_3_q1 { I 8 vector } weight_l2_3_we1 { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'weight_l2_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name param_L1_TILENUM_S \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_param_L1_TILENUM_S \
    op interface \
    ports { param_L1_TILENUM_S { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name param \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_param \
    op interface \
    ports { param { I 1184 vector } param_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name ko_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ko_1 \
    op interface \
    ports { ko_1 { I 12 vector } ko_1_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name co \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_co \
    op interface \
    ports { co { I 32 vector } co_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name ro \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ro \
    op interface \
    ports { ro { I 32 vector } ro_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name ho \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ho \
    op interface \
    ports { ho { I 11 vector } ho_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name wo \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_wo \
    op interface \
    ports { wo { I 11 vector } wo_ap_vld { I 1 bit } } \
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


