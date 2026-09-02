onerror {quit -f}
vlib work
vlog -work work encode.vo
vlog -work work encode.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.encode_vlg_vec_tst
vcd file -direction encode.msim.vcd
vcd add -internal encode_vlg_vec_tst/*
vcd add -internal encode_vlg_vec_tst/i1/*
add wave /*
run -all
