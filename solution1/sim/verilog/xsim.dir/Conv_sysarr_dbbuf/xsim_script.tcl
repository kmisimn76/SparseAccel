set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {Conv_sysarr_dbbuf} -view {{Conv_sysarr_dbbuf_dataflow_ana.wcfg}} -tclbatch {Conv_sysarr_dbbuf.tcl} -protoinst {Conv_sysarr_dbbuf.protoinst}
