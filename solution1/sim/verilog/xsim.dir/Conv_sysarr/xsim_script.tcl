set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {Conv_sysarr} -view {{Conv_sysarr_dataflow_ana.wcfg}} -tclbatch {Conv_sysarr.tcl} -protoinst {Conv_sysarr.protoinst}
