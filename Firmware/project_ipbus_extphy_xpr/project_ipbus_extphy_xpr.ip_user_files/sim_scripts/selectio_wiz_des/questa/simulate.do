onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib selectio_wiz_des_opt

do {wave.do}

view wave
view structure
view signals

do {selectio_wiz_des.udo}

run -all

quit -force
