onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib pcie4c_uscale_plus_0_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {pcie4c_uscale_plus_0.udo}

run 1000ns

quit -force
