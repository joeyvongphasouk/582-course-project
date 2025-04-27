# Xillydemo project generation script for Vivado 2015.2

set proj_dir [file normalize [file dirname [info script]]/vivado]
set essentials_dir [file normalize "$proj_dir/../../vivado-essentials"]
set proj_lang Verilog
set proj_suffix v
set blockbundle 0

source $essentials_dir/main.tcl
