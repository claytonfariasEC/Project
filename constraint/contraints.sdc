##############################################################
## Logical / Physical synthesis constraints ##
## Modified Aug - Clayton R. Farias
##############################################################

set sdc_version 2.1
set_units -time ns -resistance Kohm -capacitance pF -voltage V -current mA

#create_clock -name "clk" -period 10 {clk} 

# Set frequency to 100 Mhz
create_clock -name "clk" -period 10 {clk} 

# Define tempo de subida/descida
#set_input_transition -rise 0.003 [all_inputs] 
#set_input_transition -fall 0.003 [all_inputs]

# Clock signal (adding margin to physical synthesis)  - define a carga nas saídas do circuito.
#set_load -min 0.0005 [all_outputs]
#set_load -max 0.0020 [all_outputs]
set_max_fanout 24 [current_design]
set_max_transition 0.8 [current_design]
set_load 0.100 [all_outputs]
set_output_load 0.100
 

