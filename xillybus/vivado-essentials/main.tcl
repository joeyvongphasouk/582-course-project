# Xillydemo project generation script for Vivado 2015.2

set proj_name xillydemo

# set thepart "xcvu095-ffva2104-2-e-es2"

# Recent versions of Vivado call the xcvu095-ffva2104-2-e-es2 just
# xcvu095-ffva2104-2-e, so pick the one that matches a glob pattern

set thepart [ get_parts -filter { NAME =~ xcvu095-ffva2104-2-e* } ]

set pcie_vivado pcie_ku

if {[string first { } $proj_dir] >= 0} {
send_msg_id xillydemo-1 error "The path to the the project directory contains white space(s): \"$proj_dir\". This is known to cause problems with Vivado. Please move the project to a path without white spaces, and try again."
}

# Create project
create_project $proj_name "$proj_dir/"

# Set project properties
set obj [get_projects $proj_name]
set_property "default_lib" "xil_defaultlib" $obj
set_property "part" $thepart $obj
set_property "simulator_language" "Mixed" $obj
set_property "source_mgmt_mode" "DisplayOnly" $obj
set_property target_language $proj_lang $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property "top" "xillydemo" $obj

set_msg_config -new_severity "INFO" -id {Coretcl 2-1280} -string {{pcie}}

# $blockbundle == 1 means we're invoked from blockdesign/

if $blockbundle {
  set_msg_config -new_severity "INFO" -id {IP_Flow 19-3298} -string {{fifo_xillybus_}}
  set_msg_config -new_severity "INFO" -id {filemgmt 20-1440} -string {{core/xillybus}}

  set_property "ip_repo_paths" "[file normalize "$proj_dir/../xillybus_block"]" [current_fileset]
  update_ip_catalog

  set files [list \
   "[file normalize "$proj_dir/../src/xillydemo.v"]"\
   "[file normalize "$essentials_dir/$pcie_vivado/$pcie_vivado.xci"]"\
   "[file normalize "$proj_dir/../blockdesign/blockdesign.bd"]"\
  ]
} else {
  set files [list \
   "[file normalize "$proj_dir/../src/xillydemo.$proj_suffix"]"\
   "[file normalize "$proj_dir/../src/xillybus.v"]"\
   "[file normalize "$proj_dir/../src/xillybus_core.v"]"\
   "[file normalize "$essentials_dir/fifo_8x2048/fifo_8x2048.xci"]"\
   "[file normalize "$essentials_dir/fifo_32x512/fifo_32x512.xci"]"\
   "[file normalize "$essentials_dir/$pcie_vivado/$pcie_vivado.xci"]"\
   "[file normalize "$proj_dir/../../core/xillybus_core.edf"]"\
  ]
}
# Add files to 'sources_1' fileset
set obj [get_filesets sources_1]
add_files -norecurse -fileset $obj $files

upgrade_ip [get_ips]

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Add files to 'constrs_1' fileset
set obj [get_filesets constrs_1]
add_files -fileset $obj -norecurse "[file normalize "$essentials_dir/xillydemo.xdc"]"

if $blockbundle {
  add_files -fileset $obj -norecurse "[file normalize "$proj_dir/../src/detach_clocks.xdc"]"
}

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets sim_1] ""]} {
  create_fileset -simset sim_1
}

# Create 'synth_1' run (if not found)
if {[string equal [get_runs synth_1] ""]} {
  create_run -name synth_1 -part $thepart -flow {Vivado Synthesis 2014} -strategy "Vivado Synthesis Defaults" -constrset constrs_1
}
set obj [get_runs synth_1]
set_property "part" $thepart $obj

# Create 'impl_1' run (if not found)
if {[string equal [get_runs impl_1] ""]} {
  create_run -name impl_1 -part $thepart -flow {Vivado Implementation 2014} -strategy "Vivado Implementation Defaults" -constrset constrs_1 -parent_run synth_1
}
set obj [get_runs impl_1]
set_property "part" $thepart $obj
set_property STEPS.PHYS_OPT_DESIGN.IS_ENABLED true $obj
set_property STEPS.POST_ROUTE_PHYS_OPT_DESIGN.IS_ENABLED true $obj
set_property STEPS.WRITE_BITSTREAM.TCL.PRE "$essentials_dir/showstopper.tcl" $obj

if $blockbundle {
    # The clocking wizard can't be part of blockdesign.bd, because the VLNV
    # definition requires a specific version. So grab the VLNV from the list
    # of IPs using wildcards, insert, configure and connect in Tcl.

    open_bd_design $proj_dir/../blockdesign/blockdesign.bd

    startgroup

    create_bd_cell -type ip -vlnv [get_ipdefs *:clk_wiz:*] stream_clk_gen
    set_property -dict [list CONFIG.PRIM_IN_FREQ.VALUE_SRC USER] \
	[get_bd_cells stream_clk_gen]

    set_property -dict [list \
			    CONFIG.PRIM_IN_FREQ {250} \
			    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} ] \
	[get_bd_cells stream_clk_gen]

    connect_bd_net [get_bd_pins stream_clk_gen/clk_in1] [get_bd_pins xillybus_bundled_0/bus_clk]
    connect_bd_net [get_bd_pins stream_clk_gen/clk_out1] [get_bd_pins xillybus_bundled_0/ap_clk]
    connect_bd_net [get_bd_pins stream_clk_gen/reset] [get_bd_pins xillybus_bundled_0/quiesce]

    endgroup

    # Improve the graphic layout (hopefully)
    regenerate_bd_layout

    save_bd_design
    close_bd_design [get_bd_designs blockdesign]
}

puts "INFO: Project created: $proj_name"

# Uncomment the two following lines for a full implementation
#launch_runs -jobs 8 impl_1 -to_step write_bitstream
#wait_on_run impl_1
