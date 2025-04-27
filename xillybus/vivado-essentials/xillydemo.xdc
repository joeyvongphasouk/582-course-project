create_clock -name sys_clk -period 10 [get_ports PCIE_REFCLK_P]

set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property CFGBVS GND [current_design]

set_false_path -from [get_ports PCIE_PERST_B_LS]
set_property LOC [get_package_pins -filter {PIN_FUNC == IO_T3U_N12_PERSTN0_65}] [get_ports PCIE_PERST_B_LS]

set_property LOC {AF9} [get_cells -hier -filter {name=~*/pcieclk_ibuf} ]

set_property -dict "IOSTANDARD LVCMOS18 PULLUP true" [get_ports PCIE_PERST_B_LS]
