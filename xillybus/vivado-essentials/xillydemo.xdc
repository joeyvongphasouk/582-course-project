create_clock -name sys_clk -period 10 [get_ports PCIE_REFCLK_P]

set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 85.0 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN disable [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes [current_design]
set_property CFGBVS GND [current_design]

set_false_path -from [get_ports PCIE_PERST_B_LS]
set_property LOC [get_package_pins -filter {PIN_FUNC == IO_T3U_N12_PERSTN0_65}] [get_ports PCIE_PERST_B_LS]

set_property LOC {AF9} [get_cells -hier -filter {name=~*/pcieclk_ibuf} ]

set_property -dict "IOSTANDARD LVCMOS18 PULLUP true" [get_ports PCIE_PERST_B_LS]

set_property PACKAGE_PIN J18      [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68
set_property IOSTANDARD  LVCMOS18 [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68
set_property PULLDOWN TRUE        [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68