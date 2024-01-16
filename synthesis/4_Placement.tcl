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
