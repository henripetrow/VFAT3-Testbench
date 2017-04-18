onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+selectio_wiz_serdes -L xil_defaultlib -L xpm -L work -L unisims_ver -L unimacro_ver -L secureip -O5 work.selectio_wiz_serdes work.glbl

do {wave.do}

view wave
view structure

do {selectio_wiz_serdes.udo}

run -all

endsim

quit -force
