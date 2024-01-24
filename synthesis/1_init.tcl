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

#include PADFRAME in design
read_io_file padframe.io

#read io file for pad cells placement
#read_io_file core_top.save.io
#creates floorplan

