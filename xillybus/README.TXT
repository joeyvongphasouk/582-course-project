Please refer to the documentation on http://xillybus.com. This text is just
a starter.

Software environment
====================

The core was developed with Vivado 2015.2, but later versions apply as well.

To get started, invoke Vivado, select Tools > Run Tcl Script... and pick
xillydemo-vivado.tcl under the verilog/ or vhdl/ directory, depending on
your preferred language.

This will result in the creation of the xillydemo project, which can be
implemented right away (with "Generate Bitstream"). The script should be
run once.

File outline
============

The bundle consists of five directories:

* core -- The binary of the Xillybus core is stored here
* instantiation templates -- Contains the instantiation template for the core
  in Verilog and VHDL
* verilog -- Contains the project file for the demo and the sources in Verilog
  (in the 'src' subdirectory)
* vhdl -- Contains the project file for the demo and the sources in VHDL (in
  the 'src' subdirectory)
* vivado-essentials -- Definition files and build directories for the PCIe
  Integrated Block and general-purpose logic for use by Vivado.

Note that vivado-essentials/xillydemo.xdc represents the pinout of the VCU108
evaluation kit. This file must be edited if another board is targeted.

Also note that the vhdl directory contains Verilog files, but none of which
should need editing by user.

The interface with Xillybus takes place in the xillydemo.v or xillydemo.vhd
files in the respective 'src' subdirectories. This is the file to edit in
order to try Xillybus with your own data sources and sinks.

--------------------------------------------------

For further information about how to get started, run tests and hack the
code, please refer to the documentation in the site: http://xillybus.com
