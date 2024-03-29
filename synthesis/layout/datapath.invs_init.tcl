#####################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 01/22/2024 18:27:41
#
#####################################################################


read_mmmc layout/datapath.mmmc.tcl

read_physical -lef {/pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef /pdk/xfab/XC018_61_3.1.3/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_3V.lef}

read_netlist layout/datapath.v

init_design
