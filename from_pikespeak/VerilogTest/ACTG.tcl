read_verilog ACTG.v 
read_xdc constraints.xdc

synth_design -top main -part xcu50-fsvh2104-2-e
opt_design
place_design
phys_opt_design
route_design
write_bitstream "ACTG.bit"

report_timing_summary -datasheet -file timing_report.txt
report_power -file power_report.txt
report_utilization -file utilization_report.txt