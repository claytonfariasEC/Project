# ####################################################################

#  Created by Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1 on Mon Jan 22 18:27:40 -0300 2024

# ####################################################################

set sdc_version 1.7

set_units -capacitance 1000.0fF
set_units -time 1000.0ps

# Set the current design
current_design unsig_altmult_accum

create_clock -name "clk" -add -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_load -pin_load 0.1 [get_ports {adder_out[15]}]
set_load -pin_load 0.1 [get_ports {adder_out[14]}]
set_load -pin_load 0.1 [get_ports {adder_out[13]}]
set_load -pin_load 0.1 [get_ports {adder_out[12]}]
set_load -pin_load 0.1 [get_ports {adder_out[11]}]
set_load -pin_load 0.1 [get_ports {adder_out[10]}]
set_load -pin_load 0.1 [get_ports {adder_out[9]}]
set_load -pin_load 0.1 [get_ports {adder_out[8]}]
set_load -pin_load 0.1 [get_ports {adder_out[7]}]
set_load -pin_load 0.1 [get_ports {adder_out[6]}]
set_load -pin_load 0.1 [get_ports {adder_out[5]}]
set_load -pin_load 0.1 [get_ports {adder_out[4]}]
set_load -pin_load 0.1 [get_ports {adder_out[3]}]
set_load -pin_load 0.1 [get_ports {adder_out[2]}]
set_load -pin_load 0.1 [get_ports {adder_out[1]}]
set_load -pin_load 0.1 [get_ports {adder_out[0]}]
group_path -name cg_enable_group_clk -through [list \
  [get_pins RC_CG_HIER_INST1/enable]  \
  [get_pins RC_CG_HIER_INST1/enable] ]
set_clock_gating_check -setup 0.0 
set_max_fanout 24.000 [current_design]
set_max_transition 0.8 [current_design]
set_wire_load_selection_group "4_metls_routing" -library "D_CELLS_MOSST_typ_1_80V_25C"
set_dont_use [get_lib_cells AN322X0]
set_dont_use [get_lib_cells AN322X1]
set_dont_use [get_lib_cells AN331X0]
set_dont_use [get_lib_cells AN331X1]
set_dont_use [get_lib_cells AN332X0]
set_dont_use [get_lib_cells AN332X1]
set_dont_use [get_lib_cells AN333X0]
set_dont_use [get_lib_cells AN333X1]
set_dont_use [get_lib_cells AND7X0]
set_dont_use [get_lib_cells AND7X1]
set_dont_use [get_lib_cells AND8X0]
set_dont_use [get_lib_cells AND8X1]
set_dont_use [get_lib_cells ANTENNACELL10]
set_dont_use [get_lib_cells ANTENNACELL2]
set_dont_use [get_lib_cells ANTENNACELL25]
set_dont_use [get_lib_cells ANTENNACELL5]
set_dont_use [get_lib_cells ANTENNACELLN10]
set_dont_use [get_lib_cells ANTENNACELLN2]
set_dont_use [get_lib_cells ANTENNACELLN25]
set_dont_use [get_lib_cells ANTENNACELLN5]
set_dont_use [get_lib_cells AO322X0]
set_dont_use [get_lib_cells AO322X1]
set_dont_use [get_lib_cells AO331X0]
set_dont_use [get_lib_cells AO331X1]
set_dont_use [get_lib_cells AO332X0]
set_dont_use [get_lib_cells AO332X1]
set_dont_use [get_lib_cells AO333X0]
set_dont_use [get_lib_cells AO333X1]
set_dont_use [get_lib_cells LGCNX0]
set_dont_use [get_lib_cells LGCNX1]
set_dont_use [get_lib_cells LGCNX2]
set_dont_use [get_lib_cells LGCNX3]
set_dont_use [get_lib_cells LGCNX4]
set_dont_use [get_lib_cells LGCNX6]
set_dont_use [get_lib_cells LGCNX8]
set_dont_use [get_lib_cells LGCPX0]
set_dont_use [get_lib_cells LGCPX1]
set_dont_use [get_lib_cells LGCPX2]
set_dont_use [get_lib_cells LGCPX3]
set_dont_use [get_lib_cells LGCPX4]
set_dont_use [get_lib_cells LGCPX6]
set_dont_use [get_lib_cells LGCPX8]
set_dont_use [get_lib_cells LSGCNX0]
set_dont_use [get_lib_cells LSGCNX1]
set_dont_use [get_lib_cells LSGCNX2]
set_dont_use [get_lib_cells LSGCNX3]
set_dont_use [get_lib_cells LSGCNX4]
set_dont_use [get_lib_cells LSGCNX6]
set_dont_use [get_lib_cells LSGCNX8]
set_dont_use [get_lib_cells LSGCPX0]
set_dont_use [get_lib_cells LSGCPX1]
set_dont_use [get_lib_cells LSGCPX2]
set_dont_use [get_lib_cells LSGCPX3]
set_dont_use [get_lib_cells LSGCPX4]
set_dont_use [get_lib_cells LSGCPX6]
set_dont_use [get_lib_cells LSGCPX8]
set_dont_use [get_lib_cells LSOGCNX0]
set_dont_use [get_lib_cells LSOGCNX1]
set_dont_use [get_lib_cells LSOGCNX2]
set_dont_use [get_lib_cells LSOGCNX3]
set_dont_use [get_lib_cells LSOGCNX4]
set_dont_use [get_lib_cells LSOGCNX6]
set_dont_use [get_lib_cells LSOGCNX8]
set_dont_use [get_lib_cells LSOGCPX0]
set_dont_use [get_lib_cells LSOGCPX1]
set_dont_use [get_lib_cells LSOGCPX2]
set_dont_use [get_lib_cells LSOGCPX3]
set_dont_use [get_lib_cells LSOGCPX4]
set_dont_use [get_lib_cells LSOGCPX6]
set_dont_use [get_lib_cells LSOGCPX8]
set_dont_use [get_lib_cells NA7X0]
set_dont_use [get_lib_cells NA7X1]
set_dont_use [get_lib_cells NA8X0]
set_dont_use [get_lib_cells NA8X1]
set_dont_use [get_lib_cells NO7X0]
set_dont_use [get_lib_cells NO7X1]
set_dont_use [get_lib_cells NO8X0]
set_dont_use [get_lib_cells NO8X1]
set_dont_use [get_lib_cells OA322X0]
set_dont_use [get_lib_cells OA322X1]
set_dont_use [get_lib_cells OA331X0]
set_dont_use [get_lib_cells OA331X1]
set_dont_use [get_lib_cells OA332X0]
set_dont_use [get_lib_cells OA332X1]
set_dont_use [get_lib_cells OA333X0]
set_dont_use [get_lib_cells OA333X1]
set_dont_use [get_lib_cells ON322X0]
set_dont_use [get_lib_cells ON322X1]
set_dont_use [get_lib_cells ON331X0]
set_dont_use [get_lib_cells ON331X1]
set_dont_use [get_lib_cells ON332X0]
set_dont_use [get_lib_cells ON332X1]
set_dont_use [get_lib_cells ON333X0]
set_dont_use [get_lib_cells ON333X1]
set_dont_use [get_lib_cells OR7X0]
set_dont_use [get_lib_cells OR7X1]
set_dont_use [get_lib_cells OR8X0]
set_dont_use [get_lib_cells OR8X1]
set_dont_use [get_lib_cells SIGNALHOLD]
set_dont_use [get_lib_cells FEED1]
set_dont_use [get_lib_cells FEED2]
set_dont_use [get_lib_cells FEED5]
set_dont_use [get_lib_cells FEED10]
set_dont_use [get_lib_cells FEED25]
set_dont_use [get_lib_cells FEEDCAP2]
set_dont_use [get_lib_cells FEEDCAP5]
set_dont_use [get_lib_cells FEEDCAP5LP]
set_dont_use [get_lib_cells FEEDCAP7]
set_dont_use [get_lib_cells FEEDCAP7LP]
set_dont_use [get_lib_cells FEEDCAP10]
set_dont_use [get_lib_cells FEEDCAP10LP]
set_dont_use [get_lib_cells FEEDCAP15]
set_dont_use [get_lib_cells FEEDCAP15LP]
set_dont_use [get_lib_cells FEEDCAP25]
set_dont_use [get_lib_cells FEEDCAP25LP]
set_dont_use [get_lib_cells APR00DP]
set_dont_use [get_lib_cells APR00P]
set_dont_use [get_lib_cells APR01DP]
set_dont_use [get_lib_cells APR01P]
set_dont_use [get_lib_cells APR04DP]
set_dont_use [get_lib_cells APR04P]
set_dont_use [get_lib_cells APR10DP]
set_dont_use [get_lib_cells APR10P]
set_dont_use [get_lib_cells APR15DP]
set_dont_use [get_lib_cells APR15P]
set_dont_use [get_lib_cells BBC16P]
set_dont_use [get_lib_cells BBC16SMP]
set_dont_use [get_lib_cells BBC16SP]
set_dont_use [get_lib_cells BBC1P]
set_dont_use [get_lib_cells BBC24P]
set_dont_use [get_lib_cells BBC24SMP]
set_dont_use [get_lib_cells BBC24SP]
set_dont_use [get_lib_cells BBC2P]
set_dont_use [get_lib_cells BBC2SP]
set_dont_use [get_lib_cells BBC4P]
set_dont_use [get_lib_cells BBC4SMP]
set_dont_use [get_lib_cells BBC4SP]
set_dont_use [get_lib_cells BBC8P]
set_dont_use [get_lib_cells BBC8SMP]
set_dont_use [get_lib_cells BBC8SP]
set_dont_use [get_lib_cells BBCA16P]
set_dont_use [get_lib_cells BBCA16SMP]
set_dont_use [get_lib_cells BBCA16SP]
set_dont_use [get_lib_cells BBCA1P]
set_dont_use [get_lib_cells BBCA24P]
set_dont_use [get_lib_cells BBCA24SMP]
set_dont_use [get_lib_cells BBCA24SP]
set_dont_use [get_lib_cells BBCA2P]
set_dont_use [get_lib_cells BBCA2SP]
set_dont_use [get_lib_cells BBCA4P]
set_dont_use [get_lib_cells BBCA4SMP]
set_dont_use [get_lib_cells BBCA4SP]
set_dont_use [get_lib_cells BBCA8P]
set_dont_use [get_lib_cells BBCA8SMP]
set_dont_use [get_lib_cells BBCA8SP]
set_dont_use [get_lib_cells BBCHD16P]
set_dont_use [get_lib_cells BBCHD16SMP]
set_dont_use [get_lib_cells BBCHD16SP]
set_dont_use [get_lib_cells BBCHD1P]
set_dont_use [get_lib_cells BBCHD24P]
set_dont_use [get_lib_cells BBCHD24SMP]
set_dont_use [get_lib_cells BBCHD24SP]
set_dont_use [get_lib_cells BBCHD2P]
set_dont_use [get_lib_cells BBCHD2SP]
set_dont_use [get_lib_cells BBCHD4P]
set_dont_use [get_lib_cells BBCHD4SMP]
set_dont_use [get_lib_cells BBCHD4SP]
set_dont_use [get_lib_cells BBCHD8P]
set_dont_use [get_lib_cells BBCHD8SMP]
set_dont_use [get_lib_cells BBCHD8SP]
set_dont_use [get_lib_cells BBCUD16P]
set_dont_use [get_lib_cells BBCUD16SMP]
set_dont_use [get_lib_cells BBCUD16SP]
set_dont_use [get_lib_cells BBCUD1P]
set_dont_use [get_lib_cells BBCUD24P]
set_dont_use [get_lib_cells BBCUD24SMP]
set_dont_use [get_lib_cells BBCUD24SP]
set_dont_use [get_lib_cells BBCUD2P]
set_dont_use [get_lib_cells BBCUD2SP]
set_dont_use [get_lib_cells BBCUD4P]
set_dont_use [get_lib_cells BBCUD4SMP]
set_dont_use [get_lib_cells BBCUD4SP]
set_dont_use [get_lib_cells BBCUD8P]
set_dont_use [get_lib_cells BBCUD8SMP]
set_dont_use [get_lib_cells BBCUD8SP]
set_dont_use [get_lib_cells BBL16P]
set_dont_use [get_lib_cells BBL16SMP]
set_dont_use [get_lib_cells BBL16SP]
set_dont_use [get_lib_cells BBL1P]
set_dont_use [get_lib_cells BBL24P]
set_dont_use [get_lib_cells BBL24SMP]
set_dont_use [get_lib_cells BBL24SP]
set_dont_use [get_lib_cells BBL2P]
set_dont_use [get_lib_cells BBL2SP]
set_dont_use [get_lib_cells BBL4P]
set_dont_use [get_lib_cells BBL4SMP]
set_dont_use [get_lib_cells BBL4SP]
set_dont_use [get_lib_cells BBL8P]
set_dont_use [get_lib_cells BBL8SMP]
set_dont_use [get_lib_cells BBL8SP]
set_dont_use [get_lib_cells BBLHD16P]
set_dont_use [get_lib_cells BBLHD16SMP]
set_dont_use [get_lib_cells BBLHD16SP]
set_dont_use [get_lib_cells BBLHD1P]
set_dont_use [get_lib_cells BBLHD24P]
set_dont_use [get_lib_cells BBLHD24SMP]
set_dont_use [get_lib_cells BBLHD24SP]
set_dont_use [get_lib_cells BBLHD2P]
set_dont_use [get_lib_cells BBLHD2SP]
set_dont_use [get_lib_cells BBLHD4P]
set_dont_use [get_lib_cells BBLHD4SMP]
set_dont_use [get_lib_cells BBLHD4SP]
set_dont_use [get_lib_cells BBLHD8P]
set_dont_use [get_lib_cells BBLHD8SMP]
set_dont_use [get_lib_cells BBLHD8SP]
set_dont_use [get_lib_cells BBLUD16P]
set_dont_use [get_lib_cells BBLUD16SMP]
set_dont_use [get_lib_cells BBLUD16SP]
set_dont_use [get_lib_cells BBLUD1P]
set_dont_use [get_lib_cells BBLUD24P]
set_dont_use [get_lib_cells BBLUD24SMP]
set_dont_use [get_lib_cells BBLUD24SP]
set_dont_use [get_lib_cells BBLUD2P]
set_dont_use [get_lib_cells BBLUD2SP]
set_dont_use [get_lib_cells BBLUD4P]
set_dont_use [get_lib_cells BBLUD4SMP]
set_dont_use [get_lib_cells BBLUD4SP]
set_dont_use [get_lib_cells BBLUD8P]
set_dont_use [get_lib_cells BBLUD8SMP]
set_dont_use [get_lib_cells BBLUD8SP]
set_dont_use [get_lib_cells BBS16P]
set_dont_use [get_lib_cells BBS16SMP]
set_dont_use [get_lib_cells BBS16SP]
set_dont_use [get_lib_cells BBS1P]
set_dont_use [get_lib_cells BBS24P]
set_dont_use [get_lib_cells BBS24SMP]
set_dont_use [get_lib_cells BBS24SP]
set_dont_use [get_lib_cells BBS2P]
set_dont_use [get_lib_cells BBS2SP]
set_dont_use [get_lib_cells BBS4P]
set_dont_use [get_lib_cells BBS4SMP]
set_dont_use [get_lib_cells BBS4SP]
set_dont_use [get_lib_cells BBS8P]
set_dont_use [get_lib_cells BBS8SMP]
set_dont_use [get_lib_cells BBS8SP]
set_dont_use [get_lib_cells BBSHD16P]
set_dont_use [get_lib_cells BBSHD16SMP]
set_dont_use [get_lib_cells BBSHD16SP]
set_dont_use [get_lib_cells BBSHD1P]
set_dont_use [get_lib_cells BBSHD24P]
set_dont_use [get_lib_cells BBSHD24SMP]
set_dont_use [get_lib_cells BBSHD24SP]
set_dont_use [get_lib_cells BBSHD2P]
set_dont_use [get_lib_cells BBSHD2SP]
set_dont_use [get_lib_cells BBSHD4P]
set_dont_use [get_lib_cells BBSHD4SMP]
set_dont_use [get_lib_cells BBSHD4SP]
set_dont_use [get_lib_cells BBSHD8P]
set_dont_use [get_lib_cells BBSHD8SMP]
set_dont_use [get_lib_cells BBSHD8SP]
set_dont_use [get_lib_cells BBSUD16P]
set_dont_use [get_lib_cells BBSUD16SMP]
set_dont_use [get_lib_cells BBSUD16SP]
set_dont_use [get_lib_cells BBSUD1P]
set_dont_use [get_lib_cells BBSUD24P]
set_dont_use [get_lib_cells BBSUD24SMP]
set_dont_use [get_lib_cells BBSUD24SP]
set_dont_use [get_lib_cells BBSUD2P]
set_dont_use [get_lib_cells BBSUD2SP]
set_dont_use [get_lib_cells BBSUD4P]
set_dont_use [get_lib_cells BBSUD4SMP]
set_dont_use [get_lib_cells BBSUD4SP]
set_dont_use [get_lib_cells BBSUD8P]
set_dont_use [get_lib_cells BBSUD8SMP]
set_dont_use [get_lib_cells BBSUD8SP]
set_dont_use [get_lib_cells BBT16P]
set_dont_use [get_lib_cells BBT16SMP]
set_dont_use [get_lib_cells BBT16SP]
set_dont_use [get_lib_cells BBT1P]
set_dont_use [get_lib_cells BBT24P]
set_dont_use [get_lib_cells BBT24SMP]
set_dont_use [get_lib_cells BBT24SP]
set_dont_use [get_lib_cells BBT2P]
set_dont_use [get_lib_cells BBT2SP]
set_dont_use [get_lib_cells BBT4P]
set_dont_use [get_lib_cells BBT4SMP]
set_dont_use [get_lib_cells BBT4SP]
set_dont_use [get_lib_cells BBT8P]
set_dont_use [get_lib_cells BBT8SMP]
set_dont_use [get_lib_cells BBT8SP]
set_dont_use [get_lib_cells BBTHD16P]
set_dont_use [get_lib_cells BBTHD16SMP]
set_dont_use [get_lib_cells BBTHD16SP]
set_dont_use [get_lib_cells BBTHD1P]
set_dont_use [get_lib_cells BBTHD24P]
set_dont_use [get_lib_cells BBTHD24SMP]
set_dont_use [get_lib_cells BBTHD24SP]
set_dont_use [get_lib_cells BBTHD2P]
set_dont_use [get_lib_cells BBTHD2SP]
set_dont_use [get_lib_cells BBTHD4P]
set_dont_use [get_lib_cells BBTHD4SMP]
set_dont_use [get_lib_cells BBTHD4SP]
set_dont_use [get_lib_cells BBTHD8P]
set_dont_use [get_lib_cells BBTHD8SMP]
set_dont_use [get_lib_cells BBTHD8SP]
set_dont_use [get_lib_cells BBTUD16P]
set_dont_use [get_lib_cells BBTUD16SMP]
set_dont_use [get_lib_cells BBTUD16SP]
set_dont_use [get_lib_cells BBTUD1P]
set_dont_use [get_lib_cells BBTUD24P]
set_dont_use [get_lib_cells BBTUD24SMP]
set_dont_use [get_lib_cells BBTUD24SP]
set_dont_use [get_lib_cells BBTUD2P]
set_dont_use [get_lib_cells BBTUD2SP]
set_dont_use [get_lib_cells BBTUD4P]
set_dont_use [get_lib_cells BBTUD4SMP]
set_dont_use [get_lib_cells BBTUD4SP]
set_dont_use [get_lib_cells BBTUD8P]
set_dont_use [get_lib_cells BBTUD8SMP]
set_dont_use [get_lib_cells BBTUD8SP]
set_dont_use [get_lib_cells BD16P]
set_dont_use [get_lib_cells BD16SMP]
set_dont_use [get_lib_cells BD16SP]
set_dont_use [get_lib_cells BD1P]
set_dont_use [get_lib_cells BD24P]
set_dont_use [get_lib_cells BD24SMP]
set_dont_use [get_lib_cells BD24SP]
set_dont_use [get_lib_cells BD2P]
set_dont_use [get_lib_cells BD2SP]
set_dont_use [get_lib_cells BD4P]
set_dont_use [get_lib_cells BD4SMP]
set_dont_use [get_lib_cells BD4SP]
set_dont_use [get_lib_cells BD8P]
set_dont_use [get_lib_cells BD8SMP]
set_dont_use [get_lib_cells BD8SP]
set_dont_use [get_lib_cells BOC16P]
set_dont_use [get_lib_cells BOC16SMP]
set_dont_use [get_lib_cells BOC16SP]
set_dont_use [get_lib_cells BOC1P]
set_dont_use [get_lib_cells BOC24P]
set_dont_use [get_lib_cells BOC24SMP]
set_dont_use [get_lib_cells BOC24SP]
set_dont_use [get_lib_cells BOC2P]
set_dont_use [get_lib_cells BOC2SP]
set_dont_use [get_lib_cells BOC4P]
set_dont_use [get_lib_cells BOC4SMP]
set_dont_use [get_lib_cells BOC4SP]
set_dont_use [get_lib_cells BOC8P]
set_dont_use [get_lib_cells BOC8SMP]
set_dont_use [get_lib_cells BOC8SP]
set_dont_use [get_lib_cells BOCA16P]
set_dont_use [get_lib_cells BOCA16SMP]
set_dont_use [get_lib_cells BOCA16SP]
set_dont_use [get_lib_cells BOCA1P]
set_dont_use [get_lib_cells BOCA24P]
set_dont_use [get_lib_cells BOCA24SMP]
set_dont_use [get_lib_cells BOCA24SP]
set_dont_use [get_lib_cells BOCA2P]
set_dont_use [get_lib_cells BOCA2SP]
set_dont_use [get_lib_cells BOCA4P]
set_dont_use [get_lib_cells BOCA4SMP]
set_dont_use [get_lib_cells BOCA4SP]
set_dont_use [get_lib_cells BOCA8P]
set_dont_use [get_lib_cells BOCA8SMP]
set_dont_use [get_lib_cells BOCA8SP]
set_dont_use [get_lib_cells BOCGD16P]
set_dont_use [get_lib_cells BOCGD16SMP]
set_dont_use [get_lib_cells BOCGD16SP]
set_dont_use [get_lib_cells BOCGD1P]
set_dont_use [get_lib_cells BOCGD24P]
set_dont_use [get_lib_cells BOCGD24SMP]
set_dont_use [get_lib_cells BOCGD24SP]
set_dont_use [get_lib_cells BOCGD2P]
set_dont_use [get_lib_cells BOCGD2SP]
set_dont_use [get_lib_cells BOCGD4P]
set_dont_use [get_lib_cells BOCGD4SMP]
set_dont_use [get_lib_cells BOCGD4SP]
set_dont_use [get_lib_cells BOCGD8P]
set_dont_use [get_lib_cells BOCGD8SMP]
set_dont_use [get_lib_cells BOCGD8SP]
set_dont_use [get_lib_cells BOL16P]
set_dont_use [get_lib_cells BOL16SMP]
set_dont_use [get_lib_cells BOL16SP]
set_dont_use [get_lib_cells BOL1P]
set_dont_use [get_lib_cells BOL24P]
set_dont_use [get_lib_cells BOL24SMP]
set_dont_use [get_lib_cells BOL24SP]
set_dont_use [get_lib_cells BOL2P]
set_dont_use [get_lib_cells BOL2SP]
set_dont_use [get_lib_cells BOL4P]
set_dont_use [get_lib_cells BOL4SMP]
set_dont_use [get_lib_cells BOL4SP]
set_dont_use [get_lib_cells BOL8P]
set_dont_use [get_lib_cells BOL8SMP]
set_dont_use [get_lib_cells BOL8SP]
set_dont_use [get_lib_cells BOLGD16P]
set_dont_use [get_lib_cells BOLGD16SMP]
set_dont_use [get_lib_cells BOLGD16SP]
set_dont_use [get_lib_cells BOLGD1P]
set_dont_use [get_lib_cells BOLGD24P]
set_dont_use [get_lib_cells BOLGD24SMP]
set_dont_use [get_lib_cells BOLGD24SP]
set_dont_use [get_lib_cells BOLGD2P]
set_dont_use [get_lib_cells BOLGD2SP]
set_dont_use [get_lib_cells BOLGD4P]
set_dont_use [get_lib_cells BOLGD4SMP]
set_dont_use [get_lib_cells BOLGD4SP]
set_dont_use [get_lib_cells BOLGD8P]
set_dont_use [get_lib_cells BOLGD8SMP]
set_dont_use [get_lib_cells BOLGD8SP]
set_dont_use [get_lib_cells BOS16P]
set_dont_use [get_lib_cells BOS16SMP]
set_dont_use [get_lib_cells BOS16SP]
set_dont_use [get_lib_cells BOS1P]
set_dont_use [get_lib_cells BOS24P]
set_dont_use [get_lib_cells BOS24SMP]
set_dont_use [get_lib_cells BOS24SP]
set_dont_use [get_lib_cells BOS2P]
set_dont_use [get_lib_cells BOS2SP]
set_dont_use [get_lib_cells BOS4P]
set_dont_use [get_lib_cells BOS4SMP]
set_dont_use [get_lib_cells BOS4SP]
set_dont_use [get_lib_cells BOS8P]
set_dont_use [get_lib_cells BOS8SMP]
set_dont_use [get_lib_cells BOS8SP]
set_dont_use [get_lib_cells BOSGD16P]
set_dont_use [get_lib_cells BOSGD16SMP]
set_dont_use [get_lib_cells BOSGD16SP]
set_dont_use [get_lib_cells BOSGD1P]
set_dont_use [get_lib_cells BOSGD24P]
set_dont_use [get_lib_cells BOSGD24SMP]
set_dont_use [get_lib_cells BOSGD24SP]
set_dont_use [get_lib_cells BOSGD2P]
set_dont_use [get_lib_cells BOSGD2SP]
set_dont_use [get_lib_cells BOSGD4P]
set_dont_use [get_lib_cells BOSGD4SMP]
set_dont_use [get_lib_cells BOSGD4SP]
set_dont_use [get_lib_cells BOSGD8P]
set_dont_use [get_lib_cells BOSGD8SMP]
set_dont_use [get_lib_cells BOSGD8SP]
set_dont_use [get_lib_cells BOT16P]
set_dont_use [get_lib_cells BOT16SMP]
set_dont_use [get_lib_cells BOT16SP]
set_dont_use [get_lib_cells BOT1P]
set_dont_use [get_lib_cells BOT24P]
set_dont_use [get_lib_cells BOT24SMP]
set_dont_use [get_lib_cells BOT24SP]
set_dont_use [get_lib_cells BOT2P]
set_dont_use [get_lib_cells BOT2SP]
set_dont_use [get_lib_cells BOT4P]
set_dont_use [get_lib_cells BOT4SMP]
set_dont_use [get_lib_cells BOT4SP]
set_dont_use [get_lib_cells BOT8P]
set_dont_use [get_lib_cells BOT8SMP]
set_dont_use [get_lib_cells BOT8SP]
set_dont_use [get_lib_cells BOTGD16P]
set_dont_use [get_lib_cells BOTGD16SMP]
set_dont_use [get_lib_cells BOTGD16SP]
set_dont_use [get_lib_cells BOTGD1P]
set_dont_use [get_lib_cells BOTGD24P]
set_dont_use [get_lib_cells BOTGD24SMP]
set_dont_use [get_lib_cells BOTGD24SP]
set_dont_use [get_lib_cells BOTGD2P]
set_dont_use [get_lib_cells BOTGD2SP]
set_dont_use [get_lib_cells BOTGD4P]
set_dont_use [get_lib_cells BOTGD4SMP]
set_dont_use [get_lib_cells BOTGD4SP]
set_dont_use [get_lib_cells BOTGD8P]
set_dont_use [get_lib_cells BOTGD8SMP]
set_dont_use [get_lib_cells BOTGD8SP]
set_dont_use [get_lib_cells BT16P]
set_dont_use [get_lib_cells BT16SMP]
set_dont_use [get_lib_cells BT16SP]
set_dont_use [get_lib_cells BT1P]
set_dont_use [get_lib_cells BT24P]
set_dont_use [get_lib_cells BT24SMP]
set_dont_use [get_lib_cells BT24SP]
set_dont_use [get_lib_cells BT2P]
set_dont_use [get_lib_cells BT2SP]
set_dont_use [get_lib_cells BT4P]
set_dont_use [get_lib_cells BT4SMP]
set_dont_use [get_lib_cells BT4SP]
set_dont_use [get_lib_cells BT8P]
set_dont_use [get_lib_cells BT8SMP]
set_dont_use [get_lib_cells BT8SP]
set_dont_use [get_lib_cells GNDIPADP]
set_dont_use [get_lib_cells GNDOPADP]
set_dont_use [get_lib_cells GNDORPADP]
set_dont_use [get_lib_cells GNDRPADP]
set_dont_use [get_lib_cells FILLER01P]
set_dont_use [get_lib_cells FILLER02P]
set_dont_use [get_lib_cells FILLER05P]
set_dont_use [get_lib_cells FILLER10P]
set_dont_use [get_lib_cells FILLER20P]
set_dont_use [get_lib_cells FILLER40P]
set_dont_use [get_lib_cells FILLER50P]
set_dont_use [get_lib_cells FILLER60P]
set_dont_use [get_lib_cells ICAP]
set_dont_use [get_lib_cells ICHDP]
set_dont_use [get_lib_cells ICP]
set_dont_use [get_lib_cells ICUDP]
set_dont_use [get_lib_cells ILHDP]
set_dont_use [get_lib_cells ILP]
set_dont_use [get_lib_cells ILUDP]
set_dont_use [get_lib_cells ISHDP]
set_dont_use [get_lib_cells ISP]
set_dont_use [get_lib_cells ISUDP]
set_dont_use [get_lib_cells ITHDP]
set_dont_use [get_lib_cells ITP]
set_dont_use [get_lib_cells ITUDP]
set_dont_use [get_lib_cells JCAP]
set_dont_use [get_lib_cells JCGDP]
set_dont_use [get_lib_cells JCP]
set_dont_use [get_lib_cells JLGDP]
set_dont_use [get_lib_cells JLP]
set_dont_use [get_lib_cells JSGDP]
set_dont_use [get_lib_cells JSP]
set_dont_use [get_lib_cells JTGDP]
set_dont_use [get_lib_cells JTP]
set_dont_use [get_lib_cells POWERCUTP]
set_dont_use [get_lib_cells VDDCPADP]
set_dont_use [get_lib_cells VDDIPADP]
set_dont_use [get_lib_cells VDDOPADP]
set_dont_use [get_lib_cells VDDORPADP]
set_dont_use [get_lib_cells VDDPADP]
set_dont_use [get_lib_cells VDDRPADP]
set_dont_use [get_lib_cells CORNERBP]
set_dont_use [get_lib_cells CORNERESDP]
set_dont_use [get_lib_cells CORNERP]
