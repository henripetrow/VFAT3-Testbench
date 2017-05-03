onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+fifo_generator_0 -L xil_defaultlib -L xpm -L fifo_generator_v13_1_2 -L work -L unisims_ver -L unimacro_ver -L secureip -O5 work.fifo_generator_0 work.glbl

do {wave.do}

view wave
view structure

do {fifo_generator_0.udo}

run -all

endsim

quit -force