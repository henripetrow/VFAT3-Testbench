onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L work -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib work.clk_wiz_0 work.glbl

do {wave.do}

view wave
view structure
view signals

do {clk_wiz_0.udo}

run -all

quit -force