onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+selectio_wiz_ser -L xil_defaultlib -L xpm -L work -L unisims_ver -L unimacro_ver -L secureip -O5 work.selectio_wiz_ser work.glbl

do {wave.do}

view wave
view structure

do {selectio_wiz_ser.udo}

run -all

endsim

quit -force
