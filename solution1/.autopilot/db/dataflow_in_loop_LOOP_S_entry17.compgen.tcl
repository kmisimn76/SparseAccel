# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name ko_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ko_1 \
    op interface \
    ports { ko_1 { I 9 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name co_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_co_2 \
    op interface \
    ports { co_2 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_r \
    op interface \
    ports { r { I 11 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name s \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_s \
    op interface \
    ports { s { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name p_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c \
    op interface \
    ports { p_c_din { O 11 vector } p_c_full_n { I 1 bit } p_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name p_c1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c1 \
    op interface \
    ports { p_c1_din { O 11 vector } p_c1_full_n { I 1 bit } p_c1_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name ko_1_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_ko_1_c \
    op interface \
    ports { ko_1_c_din { O 9 vector } ko_1_c_full_n { I 1 bit } ko_1_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name co_2_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_co_2_c \
    op interface \
    ports { co_2_c_din { O 9 vector } co_2_c_full_n { I 1 bit } co_2_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name co_2_c2 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_co_2_c2 \
    op interface \
    ports { co_2_c2_din { O 10 vector } co_2_c2_full_n { I 1 bit } co_2_c2_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name r_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_c \
    op interface \
    ports { r_c_din { O 11 vector } r_c_full_n { I 1 bit } r_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name r_c3 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_r_c3 \
    op interface \
    ports { r_c3_din { O 10 vector } r_c3_full_n { I 1 bit } r_c3_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name s_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_c \
    op interface \
    ports { s_c_din { O 11 vector } s_c_full_n { I 1 bit } s_c_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name s_c4 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_s_c4 \
    op interface \
    ports { s_c4_din { O 10 vector } s_c4_full_n { I 1 bit } s_c4_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name p_c5 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c5 \
    op interface \
    ports { p_c5_din { O 32 vector } p_c5_full_n { I 1 bit } p_c5_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name p_c6 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c6 \
    op interface \
    ports { p_c6_din { O 32 vector } p_c6_full_n { I 1 bit } p_c6_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name p_c7 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_c7 \
    op interface \
    ports { p_c7_din { O 10 vector } p_c7_full_n { I 1 bit } p_c7_write { O 1 bit } } \
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


