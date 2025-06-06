#------------------------------------------------------------------------------
#  (c) Copyright 2023 Advanced Micro Devices, Inc. All rights reserved.
#
#  This file contains confidential and proprietary information
#  of AMD, Inc. and is protected under U.S. and
#  international copyright and other intellectual property
#  laws.
#
#  DISCLAIMER
#  This disclaimer is not a license and does not grant any
#  rights to the materials distributed herewith. Except as
#  otherwise provided in a valid license issued to you by
#  AMD, and to the maximum extent permitted by applicable
#  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#  WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
#  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#  (2) AMD shall not be liable (whether in contract or tort,
#  including negligence, or under any other theory of
#  liability) for any loss or damage of any kind or nature
#  related to, arising under or in connection with these
#  materials, including for any direct, or any indirect,
#  special, incidental, or consequential loss or damage
#  (including loss of data, profits, goodwill, or any type of
#  loss or damage suffered as a result of any action brought
#  by a third party) even if such damage or loss was
#  reasonably foreseeable or AMD had been advised of the
#  possibility of the same.
#
#  CRITICAL APPLICATIONS
#  AMD products are not designed or intended to be fail-
#  safe, or for use in any application requiring fail-safe
#  performance, such as life-support or safety devices or
#  systems, Class III medical devices, nuclear facilities,
#  applications related to the deployment of airbags, or any
#  other applications that could lead to death, personal
#  injury, or severe property or environmental damage
#  (individually and collectively, "Critical
#  Applications"). Customer assumes the sole risk and
#  liability of any use of AMD products in Critical
#  Applications, subject only to applicable laws and
#  regulations governing limitations on product liability.
#
#  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#  PART OF THIS FILE AT ALL TIMES.
#------------------------------------------------------------------------------


# UltraScale FPGAs Transceivers Wizard IP core-level XDC file
# ----------------------------------------------------------------------------------------------------------------------

# Commands for enabled transceiver GTYE4_CHANNEL_X1Y0
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y0 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[24].*gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin BE5 [get_ports gtyrxn_in[0]]
#set_property package_pin BE6 [get_ports gtyrxp_in[0]]
#set_property package_pin AT8 [get_ports gtytxn_out[0]]
#set_property package_pin AT9 [get_ports gtytxp_out[0]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[0].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y1
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y1 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[24].*gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin BD3 [get_ports gtyrxn_in[1]]
#set_property package_pin BD4 [get_ports gtyrxp_in[1]]
#set_property package_pin AR6 [get_ports gtytxn_out[1]]
#set_property package_pin AR7 [get_ports gtytxp_out[1]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[1].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y2
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y2 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[24].*gen_gtye4_channel_inst[2].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin BB3 [get_ports gtyrxn_in[2]]
#set_property package_pin BB4 [get_ports gtyrxp_in[2]]
#set_property package_pin AP8 [get_ports gtytxn_out[2]]
#set_property package_pin AP9 [get_ports gtytxp_out[2]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[2].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y3
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y3 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[24].*gen_gtye4_channel_inst[3].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AY3 [get_ports gtyrxn_in[3]]
#set_property package_pin AY4 [get_ports gtyrxp_in[3]]
#set_property package_pin AN6 [get_ports gtytxn_out[3]]
#set_property package_pin AN7 [get_ports gtytxp_out[3]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[3].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y4
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y4 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[25].*gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin BC1 [get_ports gtyrxn_in[4]]
#set_property package_pin BC2 [get_ports gtyrxp_in[4]]
#set_property package_pin AM8 [get_ports gtytxn_out[4]]
#set_property package_pin AM9 [get_ports gtytxp_out[4]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[4].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y5
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y5 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[25].*gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin BA1 [get_ports gtyrxn_in[5]]
#set_property package_pin BA2 [get_ports gtyrxp_in[5]]
#set_property package_pin AL6 [get_ports gtytxn_out[5]]
#set_property package_pin AL7 [get_ports gtytxp_out[5]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[5].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y6
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y6 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[25].*gen_gtye4_channel_inst[2].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AW1 [get_ports gtyrxn_in[6]]
#set_property package_pin AW2 [get_ports gtyrxp_in[6]]
#set_property package_pin AJ6 [get_ports gtytxn_out[6]]
#set_property package_pin AJ7 [get_ports gtytxp_out[6]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[6].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y7
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y7 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[25].*gen_gtye4_channel_inst[3].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AV3 [get_ports gtyrxn_in[7]]
#set_property package_pin AV4 [get_ports gtyrxp_in[7]]
#set_property package_pin AG6 [get_ports gtytxn_out[7]]
#set_property package_pin AG7 [get_ports gtytxp_out[7]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[7].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y8
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y8 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[26].*gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AU1 [get_ports gtyrxn_in[8]]
#set_property package_pin AU2 [get_ports gtyrxp_in[8]]
#set_property package_pin AH4 [get_ports gtytxn_out[8]]
#set_property package_pin AH5 [get_ports gtytxp_out[8]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[8].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[8].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[8].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[8].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[8].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[8].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[8].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y9
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y9 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[26].*gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AT3 [get_ports gtyrxn_in[9]]
#set_property package_pin AT4 [get_ports gtyrxp_in[9]]
#set_property package_pin AE6 [get_ports gtytxn_out[9]]
#set_property package_pin AE7 [get_ports gtytxp_out[9]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[9].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[9].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[9].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[9].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[9].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[9].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[9].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y10
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y10 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[26].*gen_gtye4_channel_inst[2].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AR1 [get_ports gtyrxn_in[10]]
#set_property package_pin AR2 [get_ports gtyrxp_in[10]]
#set_property package_pin AF4 [get_ports gtytxn_out[10]]
#set_property package_pin AF5 [get_ports gtytxp_out[10]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[10].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[10].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[10].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[10].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[10].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[10].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[10].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y11
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y11 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[26].*gen_gtye4_channel_inst[3].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AP3 [get_ports gtyrxn_in[11]]
#set_property package_pin AP4 [get_ports gtyrxp_in[11]]
#set_property package_pin AD4 [get_ports gtytxn_out[11]]
#set_property package_pin AD5 [get_ports gtytxp_out[11]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[11].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[11].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[11].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[11].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[11].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[11].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[11].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y12
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y12 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[27].*gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AN1 [get_ports gtyrxn_in[12]]
#set_property package_pin AN2 [get_ports gtyrxp_in[12]]
#set_property package_pin AC6 [get_ports gtytxn_out[12]]
#set_property package_pin AC7 [get_ports gtytxp_out[12]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[12].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[12].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[12].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[12].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[12].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[12].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[12].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y13
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y13 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[27].*gen_gtye4_channel_inst[1].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AK3 [get_ports gtyrxn_in[13]]
#set_property package_pin AK4 [get_ports gtyrxp_in[13]]
#set_property package_pin AB4 [get_ports gtytxn_out[13]]
#set_property package_pin AB5 [get_ports gtytxp_out[13]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[13].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[13].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[13].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[13].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[13].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[13].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[13].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y14
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y14 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[27].*gen_gtye4_channel_inst[2].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AM3 [get_ports gtyrxn_in[14]]
#set_property package_pin AM4 [get_ports gtyrxp_in[14]]
#set_property package_pin AA6 [get_ports gtytxn_out[14]]
#set_property package_pin AA7 [get_ports gtytxp_out[14]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[14].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[14].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[14].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[14].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[14].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[14].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[14].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



# Commands for enabled transceiver GTYE4_CHANNEL_X1Y15
# ----------------------------------------------------------------------------------------------------------------------

# Channel primitive location constraint
set_property LOC GTYE4_CHANNEL_X1Y15 [get_cells -hierarchical -filter {NAME =~ *gen_channel_container[27].*gen_gtye4_channel_inst[3].GTYE4_CHANNEL_PRIM_INST}]

# Channel primitive serial data pin location constraints
# (Provided as comments for your reference. The channel primitive location constraint is sufficient.)
#set_property package_pin AL1 [get_ports gtyrxn_in[15]]
#set_property package_pin AL2 [get_ports gtyrxp_in[15]]
#set_property package_pin Y4 [get_ports gtytxn_out[15]]
#set_property package_pin Y5 [get_ports gtytxp_out[15]]
# CPLL calibration block constraints
create_clock -period 8.0 [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[15].*bufg_gt_txoutclkmon_inst}]]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[15].*U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[15].*U_TXOUTCLK_FREQ_COUNTER/freq_cnt_o_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[15].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[15].*U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -quiet
set_false_path -from [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[15].*U_TXOUTCLK_FREQ_COUNTER/state_reg*}] -to [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[15].*U_TXOUTCLK_FREQ_COUNTER/testclk_en_dly1_reg*}] -quiet



create_waiver -internal -quiet -user gtwizard_ultrascale -tags 1025417 -type METHODOLOGY -id TIMING-3 -description "added waiver for CPLL CAL local BUFG_GT usecase"  -scope \
  -objects [get_pins -filter {REF_PIN_NAME=~*O} -of_objects [get_cells -hierarchical -filter {NAME =~ *gen_cpll_cal_inst[*].*bufg_gt_*xoutclkmon_inst}]]
create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1074717" -description "CDC-11 waiver for CPLL Calibration logic" -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*OUTCLK_FREQ_COUNTER/state_reg[0]}]]  -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*OUTCLK_FREQ_COUNTER/reset_synchronizer_testclk_rst_inst/rst_in_meta_reg*}]]
create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1074717" -description "CDC-11 waiver for CPLL Calibration logic" -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*OUTCLK_FREQ_COUNTER/state_reg[0]}]]  -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*OUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}]]

# False path constraints
# ----------------------------------------------------------------------------------------------------------------------

set_false_path -to [get_cells -hierarchical -filter {NAME =~ *bit_synchronizer*inst/i_in_meta_reg}] -quiet

##set_false_path -to [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_*_reg}] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_meta*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync1*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync2*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_sync3*}]] -quiet
set_false_path -to [get_pins -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~ *reset_synchronizer*inst/rst_in_out*}]] -quiet



## NEW Waivers


create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1165536" -description "CDC-11 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/bit_synchronizer_plllock_rx_inst/i_in_meta_reg}]] 
create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1165536" -description "CDC-11 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/bit_synchronizer_plllock_tx_inst/i_in_meta_reg}]] 
create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1165536" -description "CDC-11 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/reset_synchronizer_txprogdivreset_inst/rst_in_meta_reg}]] 

create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1165536" -description "CDC-11 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.int_pwr_on_fsm_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME=~*gen_powergood_delay.intclk_rrst_n_r_reg*}]]
create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1165536" -description "CDC-11 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.int_pwr_on_fsm_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME=~*gen_powergood_delay.intclk_rrst_n_r_reg*}]]
create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1165536" -description "CDC-11 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.int_pwr_on_fsm_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME=~*gen_powergood_delay.wait_cnt_reg*}]]


create_waiver -internal -quiet -type CDC -id {CDC-12} -user gtwizard_ultrascale -tags "1165536" -description "CDC-12 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.int_pwr_on_fsm_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME=~*gen_powergood_delay.wait_cnt_reg*}]]


create_waiver -internal -quiet -type CDC -id {CDC-12} -user gtwizard_ultrascale -tags "1165536" -description "CDC-12 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/bit_synchronizer_plllock_rx_inst/i_in_meta_reg}]] 
create_waiver -internal -quiet -type CDC -id {CDC-12} -user gtwizard_ultrascale -tags "1165536" -description "CDC-12 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/bit_synchronizer_plllock_tx_inst/i_in_meta_reg}]] 
create_waiver -internal -quiet -type CDC -id {CDC-12} -user gtwizard_ultrascale -tags "1165536" -description "CDC-12 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/reset_synchronizer_txprogdivreset_inst/rst_in_meta_reg}]] 


create_waiver -internal -quiet -type CDC -id {CDC-12} -user gtwizard_ultrascale -tags "1165536" -description "CDC-12 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_rx_i/gen_cal_rx_en.USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*bit_synchronizer_plllock_rx_inst/i_in_meta_reg}]] 




create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1165536" -description "CDC-10 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/bit_synchronizer_plllock_rx_inst/i_in_meta_reg}]] 
create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1165536" -description "CDC-10 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/bit_synchronizer_plllock_tx_inst/i_in_meta_reg}]] 
create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1165536" -description "CDC-10 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/reset_synchronizer_txprogdivreset_inst/rst_in_meta_reg}]] 

create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1165536" -description "CDC-10 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/pllreset_rx_out_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*rst_in_meta_reg}]] 

create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1165536" -description "CDC-10 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gtwiz_reset_inst/pllreset_tx_out_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*rst_in_meta_reg}]] 

create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1165536" -description "CDC-10 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.int_pwr_on_fsm_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.wait_cnt_reg*}]] 

create_waiver -internal -quiet -type CDC -id {CDC-1} -user gtwizard_ultrascale -tags "1165536" -description "CDC-1 waiver for CPLL Calibration logic" \
              -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.wait_cnt_reg*}]] \
			         -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.int_pwr_on_fsm_reg}]] 
create_waiver -internal -quiet -type CDC -id {CDC-1} -user gtwizard_ultrascale -tags "1165536" -description "CDC-1 waiver for CPLL Calibration logic" \
              -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.int_pwr_on_fsm_reg}]] \
			         -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*gen_powergood_delay.pwr_on_fsm_reg}]] 


## QDMA

create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1165536" -description "CDC-11 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gtye4_cpll_cal_tx_i/U_TXOUTCLK_FREQ_COUNTER/state_reg*}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*reset_synchronizer_testclk_rst_inst/rst_in_meta_reg}]] 
create_waiver -internal -quiet -type CDC -id {CDC-11} -user gtwizard_ultrascale -tags "1165536" -description "CDC-11 waiver for CPLL Calibration logic" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME =~*gtye4_cpll_cal_tx_i/U_TXOUTCLK_FREQ_COUNTER/state_reg*}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*cpll_cal_tx_i/U_TXOUTCLK_FREQ_COUNTER/tstclk_*_dly1_reg}]]



## reset_synchronizer_testclk_rst_inst/rst_in_meta_reg/PRE
################################
create_waiver -internal -quiet -type CDC -id {CDC-12} -user gtwizard_ultrascale -tags "1168849" -description "CDC-12 In exdes and vio path" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME=~*gtwiz_buffbypass_rx_done_out_reg*}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*i_in_meta_reg}]]

create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1168849" -description "CDC-10 In exdes and vio path" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME=~*prbs_match_out_reg_inv}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*rst_in_meta_reg}]]

create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1168849" -description "CDC-10 In exdes and vio path" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME=~*gen_cal_rx_en.USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*PRE} -of_objects [get_cells -hierarchical -filter {NAME =~*rst_in_meta_reg}]]
create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1168849" -description "CDC-10 In exdes and vio path" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME=~*gen_cal_rx_en.USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*rst_in_meta_reg}]]

create_waiver -internal -quiet -type CDC -id {CDC-10} -user gtwizard_ultrascale -tags "1168849" -description "CDC-10 In exdes and vio path" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME=~*gen_cal_rx_en.USER_CPLLLOCK_OUT_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*D} -of_objects [get_cells -hierarchical -filter {NAME =~*i_in_meta_reg}]]

create_waiver -internal -quiet -type CDC -id {CDC-1} -user gtwizard_ultrascale -tags "1168849" -description "CDC-1 In exdes and vio path" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME=~*int_pwr_on_fsm_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME =~*intclk_rrst_n_r_reg*}]]

create_waiver -internal -quiet -type CDC -id {CDC-1} -user gtwizard_ultrascale -tags "1168849" -description "CDC-1 In exdes and vio path" \
                        -scope -from [get_pins -quiet -filter {REF_PIN_NAME=~*C} -of_objects [get_cells -hierarchical -filter {NAME=~*int_pwr_on_fsm_reg}]] \
						       -to [get_pins -quiet -filter {REF_PIN_NAME=~*CE} -of_objects [get_cells -hierarchical -filter {NAME =~*wait_cnt_reg*}]]



