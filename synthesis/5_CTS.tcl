

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