transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+data_ram  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_9 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.data_ram xil_defaultlib.glbl

do {data_ram.udo}

run 1000ns

endsim

quit -force
