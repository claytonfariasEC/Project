#####################################################################
#
# Innovus setup file
# Created by Genus(TM) Synthesis Solution on 01/22/2024 18:27:41
#
# This file can only be run in Innovus Common UI mode.
#
#####################################################################


# User Specified CPU usage for Innovus
######################################
set_multi_cpu_usage -local_cpu 8


# Design Import
###########################################################
## Reading FlowKit settings file
source layout/datapath.flowkit_settings.tcl

source layout/datapath.invs_init.tcl

# Reading metrics file
######################
read_metric -id current layout/datapath.metrics.json 



# Mode Setup
###########################################################
source layout/datapath.mode

# Import list of instances with subdesigns having boundary optimization disabled
################################################################################
set_db opt_keep_ports layout/datapath.boundary_opto.tcl 

