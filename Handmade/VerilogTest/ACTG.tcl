read_verilog ACTG.v 
read_xdc constraints.xdc

synth_design -top main -part xcu50-fsvh2104-2-e
opt_design
place_design
phys_opt_design
route_design

report_timing_summary -datasheet -file timing_report.txt
report_power -file power_report.txt
report_utilization -file utilization_report.txt

write_bitstream "ACTG.bit" -force

# write_cfgmem -force -format mcs -interface spix4 -size 128 -loadbit "up 0x01002000 xillydemo.runs/impl_1/xillydemo.bit" -file test.mcs
# sudo xbflash2 program --spi --device 02:00.0 --bar-offset 0x1F50000 --verbose --image test.mcs