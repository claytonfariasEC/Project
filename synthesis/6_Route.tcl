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

