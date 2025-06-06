
##-----------------------------------------------------------------------------
##
## (c) Copyright 2020-2025 Advanced Micro Devices, Inc. All rights reserved.
##
## This file contains confidential and proprietary information
## of AMD and is protected under U.S. and
## international copyright and other intellectual property
## laws.
##
## DISCLAIMER
## This disclaimer is not a license and does not grant any
## rights to the materials distributed herewith. Except as
## otherwise provided in a valid license issued to you by
## AMD, and to the maximum extent permitted by applicable
## law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
## WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
## AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
## BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
## INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
## (2) AMD shall not be liable (whether in contract or tort,
## including negligence, or under any other theory of
## liability) for any loss or damage of any kind or nature
## related to, arising under or in connection with these
## materials, including for any direct, or any indirect,
## special, incidental, or consequential loss or damage
## (including loss of data, profits, goodwill, or any type of
## loss or damage suffered as a result of any action brought
## by a third party) even if such damage or loss was
## reasonably foreseeable or AMD had been advised of the
## possibility of the same.
##
## CRITICAL APPLICATIONS
## AMD products are not designed or intended to be fail-
## safe, or for use in any application requiring fail-safe
## performance, such as life-support or safety devices or
## systems, Class III medical devices, nuclear facilities,
## applications related to the deployment of airbags, or any
## other applications that could lead to death, personal
## injury, or severe property or environmental damage
## (individually and collectively, "Critical
## Applications"). Customer assumes the sole risk and
## liability of any use of AMD products in Critical
## Applications, subject only to applicable laws and
## regulations governing limitations on product liability.
##
## THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
## PART OF THIS FILE AT ALL TIMES.
##
##-----------------------------------------------------------------------------
##
## Project    : Ultrascale FPGA Gen3 Integrated Block for PCI Express
## File       : pcie_ku_ooc.xdc
## Version    : 4.4 
##-----------------------------------------------------------------------------
#
# This constraints file contains default clock frequencies to be used during out-of-context flows such as
# OOC Synthesis and Hierarchical Designs. For best results the frequencies should be modified
# to match the target frequencies. 
# This constraints file is not used in normal top-down synthesis (the default flow of Vivado)
#

create_clock -name sys_clk -period 10 [get_ports sys_clk]
create_clock -name sys_clk_gt -period 10 [get_ports sys_clk_gt]
#
set_case_analysis 1 [get_nets  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/PHY_TXOUTCLKSEL[2]}] 
set_case_analysis 0 [get_nets  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/PHY_TXOUTCLKSEL[1]}]  
set_case_analysis 1 [get_nets  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/PHY_TXOUTCLKSEL[0]}]
#
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[0]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_userclk}]]
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[1]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_userclk}]]
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[2]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_userclk}]]
# Set Divide By 1
# Set Divide By 2
set_case_analysis 1 [get_pins  -filter {REF_PIN_NAME=~DIV[0]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_pclk}]]
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[1]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_pclk}]]
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[2]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_pclk}]]
 
# Set Divide By 2


set_case_analysis 1 [get_pins  -filter {REF_PIN_NAME=~DIV[0]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/bufg_mcap_clk}]]
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[1]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/bufg_mcap_clk}]]
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[2]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/bufg_mcap_clk}]]
# Set Divide By 1
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[0]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_coreclk}]]
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[1]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_coreclk}]]
set_case_analysis 0 [get_pins  -filter {REF_PIN_NAME=~DIV[2]} -of_objects [get_cells  -hierarchical -filter {NAME =~ *pcie_ku_gt_top_i/phy_clk_i/bufg_gt_coreclk}]]
#
 
