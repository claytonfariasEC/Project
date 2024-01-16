#**********************************Verification & Save *******************************
check_drc

write_netlist core.v

#set_analysis_view -setup worst_view -hold worst_view
#extract_rc
#write_sdf core_worst.sdf
#report_area   >> layout_reports/area_worst.rpt
#report_power  >> layout_reports/power_worst.rpt
#report_timing >> layout_reports/timing_worst.rpt

set_analysis_view -setup nominal_view -hold nominal_view

extract_rc

write_sdf core_nominal.sdf

report_area   >> layout_reports/area_nominal.rpt
report_power  >> layout_reports/power_nominal.rpt
report_timing >> layout_reports/timing_nominal.rpt


#set_analysis_view -setup best_view -hold best_view
#extract_rc
#write_sdf core_best.sdf
#report_area   >> layout_reports/area_best.rpt
#report_power  >> layout_reports/power_best.rpt
#report_timing >> layout_reports/timing_best.rpt

gui_fit