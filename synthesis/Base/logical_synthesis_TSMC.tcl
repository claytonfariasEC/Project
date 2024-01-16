#######################################################
## Circuit Synthesis - MMMC Script
#######################################################
## Made by: Clayton Farias
#######################################################

read_mmmc mmmc_TSMC.tcl


set DESIGN_NAME unsig_altmult_accum

#set LIB_PATH "/pdk/xfab/XC018_61_3.1.3"
set LIB_PATH "/pdk/tsmc/TSMC180/"

#set_db lef_library "${LIB_PATH}/cadence/xc018/LEF/xc018_m6_FE/xc018m6_FE.lef \ 
#	            ${LIB_PATH}/cadence/xc018/LEF/xc018_m6_FE/D_CELLS.lef \
#	            ${LIB_PATH}/cadence/xc018/LEF/xc018_m6_FE/IO_CELLS_3V.lef"
				
				
				
set_db lef_library "${LIB_PATH}/180/CMOS/G/stclib/7-track/tcb018gbwp7t_290a_FE/TSMCHOME/digital/Back_End/lef/tcb018gbwp7t_270a/lef/tcb018gbwp7t_4lm.lef"


#set_db lef_library "${LIB_PATH}/180/CMOS/G/stclib/7-track/tcb018gbwp7t_290a_FE/TSMCHOME/digital/Back_End/lef/tcb018gbwp7t_270a/lef/tcb018gbwp7t_4lm.lef \ 
#	            ${LIB_PATH}/180/CMOS/G/stclib/7-track/tcb018gbwp7t_290a_FE/TSMCHOME/digital/Back_End/lef/tcb018gbwp7t_270a/lef/tcb018gbwp7t_5lm.lef \
#	            ${LIB_PATH}/180/CMOS/G/stclib/7-track/tcb018gbwp7t_290a_FE/TSMCHOME/digital/Back_End/lef/tcb018gbwp7t_270a/lef/tcb018gbwp7t_6lm.lef"

set_db / .ultra_global_mapping true

set_db / .lp_insert_clock_gating true

#read_hdl "../rtl/picorv32.v \
	  ../rtl/picosoc/simpleuart.v \
	  ../rtl/picosoc/spiflash.v \
	  ../rtl/picosoc/spimemio.v \
	  ../rtl/picosoc/picosoc.v"
		 
#read_hdl "../rtl/source/TopCPU.v"

# Insert the RTL (Verilog or VHDL) project
#read_hdl "../rtl/core/CPU.v"
read_hdl "../rtl/core/unsig_altmult_accum.v"
	  
# Set the design name (Included in the core.v)
elaborate $DESIGN_NAME



init_design
set_db syn_global_effort high  
syn_generic
syn_map
syn_opt 

#Reports
report_area   > report/datapath_area.rep
report_timing > report/datapath_timing.rep
report_gates  > report/datapath_gates.rep
report_power  > report/datapath_power.rep


# Logical Synthesis RESULT
write_design -innovus -base_name layout/datapath
