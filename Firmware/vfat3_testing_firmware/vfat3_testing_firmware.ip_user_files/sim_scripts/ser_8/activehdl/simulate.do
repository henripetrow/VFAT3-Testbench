onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+ser_8 -L xil_defaultlib -L xpm -L work -L unisims_ver -L unimacro_ver -L secureip -O5 work.ser_8 work.glbl

do {wave.do}

view wave
view structure

do {ser_8.udo}

run -all

endsim

quit -force
