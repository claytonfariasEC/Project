#################################################################################
#
# Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1 on Mon Jan 22 18:27:40 -0300 2024
#
#################################################################################

## library_sets
create_library_set -name nominal_libset \
    -timing { /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOSST/D_CELLS_MOSST_typ_1_80V_25C.lib \
              /pdk/xfab/XC018_61_3.1.3/synopsys/xc018/MOS3ST/IO_CELLS_3V_MOS3ST_typ_1_80V_3_30V_25C.lib }

## opcond
create_opcond -name nominal_opcond -voltage 1.8 -temperature 25.0

## timing_condition
create_timing_condition -name nominal_timing_cond \
    -opcond nominal_opcond \
    -library_sets { nominal_libset }

## rc_corner
create_rc_corner -name default_emulate_rc_corner \
    -post_route_res {1.0 1.0 1.0} \
    -post_route_cap {1.0 1.0 1.0} \
    -post_route_cross_cap {1.0 1.0 1.0} \
    -post_route_clock_res {1.0 1.0 1.0} \
    -post_route_clock_cap {1.0 1.0 1.0}

## delay_corner
create_delay_corner -name nominal_delay_corner \
    -early_timing_condition { nominal_timing_cond } \
    -late_timing_condition { nominal_timing_cond } \
    -early_rc_corner default_emulate_rc_corner \
    -late_rc_corner default_emulate_rc_corner

## constraint_mode
create_constraint_mode -name default_constraints \
    -sdc_files { layout//datapath.default_constraints.sdc }

## analysis_view
create_analysis_view -name nominal_view \
    -constraint_mode default_constraints \
    -delay_corner nominal_delay_corner

## set_analysis_view
set_analysis_view -setup { nominal_view } \
                  -hold { nominal_view }
