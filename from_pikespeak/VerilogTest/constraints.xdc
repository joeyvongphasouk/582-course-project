set_property PACKAGE_PIN AB9 [get_ports clock]
create_clock -period 10 -name clock [get_ports clock]

set_property PACKAGE_PIN J18      [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68
set_property IOSTANDARD  LVCMOS18 [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68
set_property PULLDOWN TRUE        [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68