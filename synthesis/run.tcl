#################################################################
## Physical Synthesis Script
#################################################################
## By Clayton Farias
#################################################################

## reset_design -> Comando apaga o design atual

##Loading std cell libs / netlist / constraints / setting vdd/gnd

#Pasta para salvar imagens
#mkdir imgs/


#************************** Init *******************

##Loading std cell libs / netlist / constraints / setting vdd/gnd
set_db design_process_node 180
set_db init_power_nets {VDD vdd vdd!}
set_db init_ground_nets {GND gnd gnd!}
source layout/datapath.invs_setup.tcl



#read io file for pad cells placement
#read_io_file core_top.save.io
#creates floorplan




#*********************** Floorplain ****************************


##Core é defino como o bloco interno que conterá as std cells e macros. Os pinos de I/O são adicionados no bloco externo
##Ratio(H/W) Relação para criar a área, valor aprox. a 1 cria uma área de chip quadrada, 0.5 gera um retângulo
##Core Utilization % de utilização da área ( default 70%)
##Core Margins fronteiras de IO do core Concept of Rows Standard cells são colocadas nas linhas (rows). Todas as linhas tem a mesma altura e espaçamento entre elas. A largura das linhas pode variar


# Floorplain site specifications   
#create_floorplan -site core -core_density_size 1 0.78 75 75 75 75
#create_floorplan -core_density_size 1 0.78 50 50 50 50
create_floorplan -site core -core_density_size 1 0.78 75 75 75 75


#*********************** Power Plain *****************************
connect power nets
connect_global_net gnd -type pg_pin -pin_base_name GNDO -inst_base_name *
connect_global_net vdd -type pg_pin -pin_base_name VDDI -inst_base_name *
connect_global_net vdd -type pg_pin -pin_base_name vdd -inst_base_name *
connect_global_net gnd -type pg_pin -pin_base_name gnd -inst_base_name *
connect_global_net vdd -type pg_pin -pin_base_name vdd! -inst_base_name *
connect_global_net gnd -type pg_pin -pin_base_name gnd! -inst_base_name *
connect_global_net vdd -type tie_hi -pin_base_name vdd! -inst *
connect_global_net gnd -type tie_lo -pin_base_name gnd! -inst *

add_io_fillers -cells FILLER60P -prefix io_fill
add_io_fillers -cells FILLER50P -prefix io_fill
add_io_fillers -cells FILLER40P -prefix io_fill
add_io_fillers -cells FILLER20P -prefix io_fill
add_io_fillers -cells FILLER10P -prefix io_fill
add_io_fillers -cells FILLER05P -prefix io_fill
add_io_fillers -cells FILLER02P -prefix io_fill
add_io_fillers -cells FILLER01P -prefix io_fill -fill_any_gap
gui_fit
write_to_gif imgs/1_floor.gif

##-------------------------------Power Plan------------------------------------
add_rings -spacing 5 -width 10 -layer {top M4 bottom M4 left M3 right M3} -jog_distance 2.5 -offset 5 -nets {gnd vdd} -threshold 2.5

route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {M1 M5} -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -block_pin {use_lef} -allow_jogging 1  -crossover_via_layer_range {M1 M5} -allow_layer_change 1 -target_via_layer_range {M1 M5} -nets {gnd vdd}

#add_well_taps -cell FEED1 -cell_interval 60 -fixed_gap -prefix WELLTAP -in_row_offset 8.0

add_stripes -block_ring_top_layer_limit M4 -max_same_layer_jog_length 6 -pad_core_ring_bottom_layer_limit M1 -number_of_sets 2 -pad_core_ring_top_layer_limit M4 -spacing 40  -start_offset 160 -stop_offset 160 -merge_stripes_value 2.5 -layer M4 -block_ring_bottom_layer_limit M1 -width 5 -nets {gnd vdd}
gui_fit
write_to_gif imgs/2_power.gif

#check_drc


#*********************** Placement *****************************



place_design
place_design -incremental
place_design -incremental
gui_fit

set latch_time_borrow_mode budget

gui_fit
write_to_gif imgs/3_place.gif


# 1000 Violations
#check_drc

##-------------------------------ADD TIE CELLS ------------------

add_tieoffs -lib_cell LOGIC0 -power_domain gnd -prefix tie_lo
#add_tieoffs -lib_cell LOGIC0 -power_domain vss -prefix tie_lo
add_tieoffs -lib_cell LOGIC1 -power_domain vdd -prefix tie_hi
gui_fit
#write_to_gif imgs/tie_cells.gif

# 1000 Violations
#check_drc

##-------------------------------Fillers--------------------------------------
add_fillers -base_cells FEED1 FEED10 FEED15 FEED2 FEED25 FEED3 FEED5 FEED7 FEEDCAP10 FEEDCAP10LP FEEDCAP15 FEEDCAP15LP FEEDCAP2 FEEDCAP25 FEEDCAP25LP FEEDCAP3 FEEDCAP5 FEEDCAP5LP FEEDCAP7 FEEDCAP7LP −prefix FILLER
#add_metal_fill -layers {M1 M2 M3 M4 M5 METTP} -nets {gnd} -mesh
#add_metal_fill -layers {M1 M2 M3 M4 M5 METTP} -nets {vss} -mesh
gui_fit
#gui_set_draw_view place
write_to_gif imgs/6_filler.gif

#********************************** CTS ***************************


##-------------------------------CTS------------------------------------------
##set_layer_preference net -is_visible 0
##set_layer_preference power -is_visible 0
##set_layer_preference pgPower -is_visible 0
##set_layer_preference pgGround -is_visible 0
##set_layer_preference shield -is_visible 0
##set_layer_preference metalFill -is_visible 0
##set_layer_preference whatIfShape -is_visible 0
##set_layer_preference clock -is_visible 1

write_to_gif imgs/4_prects.gif

set_db opt_fix_fanout_load true
opt_design -pre_cts -drv
create_clock_tree_spec 
ccopt_design 

gui_fit
opt_design -post_cts -incremental
gui_fit
opt_design -post_cts -setup
gui_fit
opt_design -post_cts -drv
gui_fit

write_to_gif imgs/4_postcts.gif
##set_layer_preference net -is_visible 1
##set_layer_preference power -is_visible 1
##set_layer_preference pgPower -is_visible 1
##set_layer_preference pgGround -is_visible 1
##set_layer_preference shield -is_visible 1
##set_layer_preference metalFill -is_visible 1
##set_layer_preference whatIfShape -is_visible 1
##set_layer_preference clock -is_visible 1


# 1000 Violations
#check_drc

#********************************** Route ***************************

set_db route_top_routing_layer 6
set_db route_with_timing_driven 1
set_db route_with_eco 0
set_db route_with_si_driven 0

route_design -global_detail

gui_fit
set_db route_with_timing_driven 0
set_db route_with_eco 1
set_db route_with_si_driven 0

route_design

gui_fit
gui_set_draw_view place
write_to_gif imgs/5_route.gif

# OK
check_process_antenna



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