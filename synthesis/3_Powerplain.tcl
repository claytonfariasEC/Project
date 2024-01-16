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


add_rings -spacing 5 -width 10 -layer {top M4 bottom M4 left M3 right M3} -jog_distance 2.5 -offset 5 -nets {gnd vdd} -threshold 2.5

route_special -connect {block_pin core_pin pad_pin pad_ring floating_stripe} -layer_change_range {M1 M5} -block_pin_target {nearest_target} -pad_pin_port_connect {all_port one_geom} -block_pin {use_lef} -allow_jogging 1  -crossover_via_layer_range {M1 M5} -allow_layer_change 1 -target_via_layer_range {M1 M5} -nets {gnd vdd}

#add_well_taps -cell FEED1 -cell_interval 60 -fixed_gap -prefix WELLTAP -in_row_offset 8.0

add_stripes -block_ring_top_layer_limit M4 -max_same_layer_jog_length 6 -pad_core_ring_bottom_layer_limit M1 -number_of_sets 2 -pad_core_ring_top_layer_limit M4 -spacing 40  -start_offset 160 -stop_offset 160 -merge_stripes_value 2.5 -layer M4 -block_ring_bottom_layer_limit M1 -width 5 -nets {gnd vdd}
gui_fit
write_to_gif imgs/2_power.gif

#check_drc