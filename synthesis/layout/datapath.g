######################################################################

# Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1 on Mon Jan 22 18:27:40 -0300 2024

# This file contains the RC script for design:unsig_altmult_accum

######################################################################

set_db / .design_mode_process 230.0
set_db / .phys_assume_met_fill 0.0
set_db / .lp_insert_clock_gating true
set_db / .runtime_by_stage { {to_generic 2 35 2 31}  {first_condense 4 40 3 35}  {second_condense 0 40 1 36}  {reify 9 49 13 49}  {global_incr_map 1 50 0 50}  {incr_opt 1 51 0 51} }
set_db / .tinfo_tstamp_file .rs_clayton.farias.tstamp
set_db / .use_area_from_lef true
set_db / .ultra_global_mapping true
set_db / .flow_metrics_snapshot_uuid 3cace8d1
set_db / .read_qrc_tech_file_rc_corner true
set_db / .syn_global_effort high
set_db / .super_thread_servers {localhost localhost localhost localhost localhost localhost localhost localhost   }
if {[::legacy::find design:unsig_altmult_accum -mode nominal_view] eq ""} {  create_mode -name nominal_view -design design:unsig_altmult_accum  }
::legacy::set_attribute -quiet break_timing_paths_by_mode {{mode:unsig_altmult_accum/nominal_view clock_gating}} pin:unsig_altmult_accum/RC_CG_HIER_INST1/g17/A
::legacy::set_attribute -quiet phys_use_segment_parasitics true /
::legacy::set_attribute -quiet probabilistic_extraction true /
::legacy::set_attribute -quiet ple_correlation_factors {1.9000 2.0000} /
::legacy::set_attribute -quiet maximum_interval_of_vias infinity /
::legacy::set_attribute -quiet ple_mode global /
::legacy::set_attribute -quiet wireload_selection wireload_selection:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/4_metls_routing library_domain:nominal_timing_cond
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_98V_0C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_98V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_62V_70C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_62V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_70C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_0C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/TYPICAL
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/typ_1_80V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/D_CELLS_MOSST_typ_1_80V_25C/_nominal_
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C/typ_1_80V_3_30V_25C
::legacy::set_attribute -quiet tree_type balanced_tree operating_condition:nominal_libset/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C/_nominal_
# BEGIN MSV SECTION
::legacy::set_attribute -quiet library_domain library_domain:nominal_timing_cond design:unsig_altmult_accum
# END MSV SECTION
define_clock -name clk -mode mode:unsig_altmult_accum/nominal_view -domain domain_1 -period 10000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -design design:unsig_altmult_accum port:unsig_altmult_accum/clk
::legacy::set_attribute -quiet waveform { } clock:unsig_altmult_accum/nominal_view/clk
define_cost_group -design design:unsig_altmult_accum -name cg_enable_group_clk
define_cost_group -design design:unsig_altmult_accum -name clk
external_delay -accumulate -input {0.0 no_value 0.0 no_value} -clock clock:unsig_altmult_accum/nominal_view/clk -name create_clock_delay_domain_1_clk_R_0 port:unsig_altmult_accum/clk
::legacy::set_attribute -quiet clock_network_latency_included true external_delay:unsig_altmult_accum/nominal_view/create_clock_delay_domain_1_clk_R_0
external_delay -accumulate -input {no_value 0.0 no_value 0.0} -clock clock:unsig_altmult_accum/nominal_view/clk -edge_fall -name create_clock_delay_domain_1_clk_F_0 port:unsig_altmult_accum/clk
::legacy::set_attribute -quiet clock_network_latency_included true external_delay:unsig_altmult_accum/nominal_view/create_clock_delay_domain_1_clk_F_0
external_delay -accumulate -output {no_value no_value 0.0 0.0} -clock clock:unsig_altmult_accum/nominal_view/clk -name clk_gating_check_1 pin:unsig_altmult_accum/RC_CG_HIER_INST1/g17/A
::legacy::set_attribute -quiet clock_network_latency_included true external_delay:unsig_altmult_accum/nominal_view/clk_gating_check_1
::legacy::set_attribute -quiet clock_source_latency_included true external_delay:unsig_altmult_accum/nominal_view/clk_gating_check_1
path_group -paths [specify_paths -mode mode:unsig_altmult_accum/nominal_view -to clock:unsig_altmult_accum/nominal_view/clk]  -name clk -group cost_group:unsig_altmult_accum/clk -user_priority -1047552
path_group -paths [specify_paths -mode mode:unsig_altmult_accum/nominal_view -through hpin:unsig_altmult_accum/RC_CG_HIER_INST1/enable]  -name cg_enable_group_clk -group cost_group:unsig_altmult_accum/cg_enable_group_clk
# BEGIN DFT SECTION
::legacy::set_attribute -quiet dft_scan_style muxed_scan /
::legacy::set_attribute -quiet dft_scanbit_waveform_analysis false /
# END DFT SECTION
::legacy::set_attribute -quiet qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 12105} {cell_count 686} {utilization  0.00} {runtime 2 35 2 31} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 14252} {cell_count 820} {utilization  0.00} {runtime 4 40 3 35} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 14252} {cell_count 820} {utilization  0.00} {runtime 0 40 1 36} }{reify {wns 3180} {tns 0} {vep 0} {area 6966} {cell_count 227} {utilization  0.00} {runtime 9 49 13 49} }{global_incr_map {wns 3120} {tns 0} {vep 0} {area 6923} {cell_count 227} {utilization  0.00} {runtime 1 50 0 50} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 6625} {cell_count 225} {utilization  0.00} {runtime 1 51 0 51} }} design:unsig_altmult_accum
::legacy::set_attribute -quiet hdl_filelist {{default -v2001 {SYNTHESIS} {../rtl/core/unsig_altmult_accum.v} {}}} design:unsig_altmult_accum
::legacy::set_attribute -quiet hdl_user_name unsig_altmult_accum design:unsig_altmult_accum
::legacy::set_attribute -quiet verification_directory fv/unsig_altmult_accum design:unsig_altmult_accum
::legacy::set_attribute -quiet max_fanout 24.000 design:unsig_altmult_accum
::legacy::set_attribute -quiet max_transition 800.0 design:unsig_altmult_accum
::legacy::set_attribute -quiet seq_reason_deleted {{{dataa_reg_reg[9]} {{merged with dataa_reg_reg[8]}}} {{dataa_reg_reg[10]} {{merged with dataa_reg_reg[8]}}} {{dataa_reg_reg[11]} {{merged with dataa_reg_reg[8]}}} {{dataa_reg_reg[12]} {{merged with dataa_reg_reg[8]}}} {{dataa_reg_reg[13]} {{merged with dataa_reg_reg[8]}}} {{dataa_reg_reg[14]} {{merged with dataa_reg_reg[8]}}} {{dataa_reg_reg[15]} {{merged with dataa_reg_reg[8]}}} {{datab_reg_reg[8]} {{merged with dataa_reg_reg[8]}}} {{datab_reg_reg[9]} {{merged with dataa_reg_reg[8]}}} {{datab_reg_reg[10]} {{merged with dataa_reg_reg[8]}}} {{datab_reg_reg[11]} {{merged with dataa_reg_reg[8]}}} {{datab_reg_reg[12]} {{merged with dataa_reg_reg[8]}}} {{datab_reg_reg[13]} {{merged with dataa_reg_reg[8]}}} {{datab_reg_reg[14]} {{merged with dataa_reg_reg[8]}}} {{datab_reg_reg[15]} {{merged with dataa_reg_reg[8]}}} {{dataa_reg_reg[8]} {{constant 0}}}} design:unsig_altmult_accum
::legacy::set_attribute -quiet arch_filename ../rtl/core/unsig_altmult_accum.v design:unsig_altmult_accum
::legacy::set_attribute -quiet entity_filename ../rtl/core/unsig_altmult_accum.v design:unsig_altmult_accum
::legacy::set_attribute -quiet input_slew_max_rise no_value {port:unsig_altmult_accum/dataa[7]}
::legacy::set_attribute -quiet input_slew_max_fall no_value {port:unsig_altmult_accum/dataa[7]}
::legacy::set_attribute -quiet input_slew_min_rise no_value {port:unsig_altmult_accum/dataa[7]}
::legacy::set_attribute -quiet input_slew_min_fall no_value {port:unsig_altmult_accum/dataa[7]}
::legacy::set_attribute -quiet input_slew_max_rise no_value {port:unsig_altmult_accum/datab[7]}
::legacy::set_attribute -quiet input_slew_max_fall no_value {port:unsig_altmult_accum/datab[7]}
::legacy::set_attribute -quiet input_slew_min_rise no_value {port:unsig_altmult_accum/datab[7]}
::legacy::set_attribute -quiet input_slew_min_fall no_value {port:unsig_altmult_accum/datab[7]}
::legacy::set_attribute -quiet input_slew_max_rise no_value port:unsig_altmult_accum/clk
::legacy::set_attribute -quiet input_slew_max_fall no_value port:unsig_altmult_accum/clk
::legacy::set_attribute -quiet input_slew_min_rise no_value port:unsig_altmult_accum/clk
::legacy::set_attribute -quiet input_slew_min_fall no_value port:unsig_altmult_accum/clk
::legacy::set_attribute -quiet input_slew_max_rise no_value port:unsig_altmult_accum/aclr
::legacy::set_attribute -quiet input_slew_max_fall no_value port:unsig_altmult_accum/aclr
::legacy::set_attribute -quiet input_slew_min_rise no_value port:unsig_altmult_accum/aclr
::legacy::set_attribute -quiet input_slew_min_fall no_value port:unsig_altmult_accum/aclr
::legacy::set_attribute -quiet input_slew_max_rise no_value port:unsig_altmult_accum/clken
::legacy::set_attribute -quiet input_slew_max_fall no_value port:unsig_altmult_accum/clken
::legacy::set_attribute -quiet input_slew_min_rise no_value port:unsig_altmult_accum/clken
::legacy::set_attribute -quiet input_slew_min_fall no_value port:unsig_altmult_accum/clken
::legacy::set_attribute -quiet input_slew_max_rise no_value port:unsig_altmult_accum/sload
::legacy::set_attribute -quiet input_slew_max_fall no_value port:unsig_altmult_accum/sload
::legacy::set_attribute -quiet input_slew_min_rise no_value port:unsig_altmult_accum/sload
::legacy::set_attribute -quiet input_slew_min_fall no_value port:unsig_altmult_accum/sload
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[15]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[15]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[15]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[15]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[15]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[15]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[15]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[15]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[14]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[14]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[14]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[14]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[14]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[14]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[14]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[14]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[13]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[13]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[13]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[13]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[13]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[13]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[13]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[13]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[12]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[12]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[12]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[12]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[12]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[12]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[12]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[12]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[11]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[11]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[11]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[11]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[11]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[11]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[11]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[11]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[10]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[10]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[10]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[10]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[10]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[10]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[10]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[10]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[9]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[9]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[9]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[9]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[9]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[9]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[9]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[9]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[8]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[8]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[8]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[8]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[8]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[8]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[8]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[8]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[7]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[7]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[7]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[7]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[7]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[7]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[7]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[7]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[6]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[6]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[6]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[6]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[6]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[6]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[6]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[6]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[5]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[5]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[5]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[5]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[5]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[5]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[5]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[5]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[4]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[4]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[4]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[4]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[4]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[4]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[4]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[4]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[3]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[3]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[3]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[3]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[3]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[3]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[3]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[3]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[2]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[2]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[2]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[2]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[2]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[2]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[2]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[2]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[1]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[1]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[1]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[1]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[1]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[1]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[1]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[1]}
::legacy::set_attribute -quiet external_pin_cap_min 100.0 {port:unsig_altmult_accum/adder_out[0]}
::legacy::set_attribute -quiet external_capacitance_max {100.0 100.0} {port:unsig_altmult_accum/adder_out[0]}
::legacy::set_attribute -quiet external_capacitance_min 100.0 {port:unsig_altmult_accum/adder_out[0]}
::legacy::set_attribute -quiet external_pin_cap_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[0]}
::legacy::set_attribute -quiet external_capacitance_min_by_mode {{mode:unsig_altmult_accum/nominal_view 100.0}} {port:unsig_altmult_accum/adder_out[0]}
::legacy::set_attribute -quiet external_capacitance_max_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[0]}
::legacy::set_attribute -quiet external_pin_cap {100.0 100.0} {port:unsig_altmult_accum/adder_out[0]}
::legacy::set_attribute -quiet external_pin_cap_by_mode {{mode:unsig_altmult_accum/nominal_view {100.0 100.0}}} {port:unsig_altmult_accum/adder_out[0]}
::legacy::set_attribute -quiet logical_hier false module:unsig_altmult_accum/RC_CG_MOD_AUTO_unsig_altmult_accum
::legacy::set_attribute -quiet hdl_user_name RC_CG_MOD_AUTO_unsig_altmult_accum module:unsig_altmult_accum/RC_CG_MOD_AUTO_unsig_altmult_accum
::legacy::set_attribute -quiet boundary_opto false module:unsig_altmult_accum/RC_CG_MOD_AUTO_unsig_altmult_accum
::legacy::set_attribute -quiet arch_filename /tmp/latch_posedge_precontrol_unsig_altmult_accum_8227.v module:unsig_altmult_accum/RC_CG_MOD_AUTO_unsig_altmult_accum
::legacy::set_attribute -quiet entity_filename /tmp/latch_posedge_precontrol_unsig_altmult_accum_8227.v module:unsig_altmult_accum/RC_CG_MOD_AUTO_unsig_altmult_accum
::legacy::set_attribute -quiet logical_hier false module:unsig_altmult_accum/csa_tree_add_43_28_group_63
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
