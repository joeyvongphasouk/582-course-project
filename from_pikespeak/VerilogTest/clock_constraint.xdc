set_property PACKAGE_PIN AB8 [get_ports clock]
set_property IOSTANDARD LVCMOS18 [get_ports clock]
create_clock -name clock -period 10 [get_ports clock]