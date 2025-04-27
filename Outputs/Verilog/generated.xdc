set_property PACKAGE_PIN AB9 [get_ports clock]
create_clock -period 4 -name clock [get_ports clock]

set_property PACKAGE_PIN J18      [get_ports "HBM_CATTRIP"]
set_property IOSTANDARD  LVCMOS18 [get_ports "HBM_CATTRIP"]
set_property PULLDOWN TRUE        [get_ports "HBM_CATTRIP"]
