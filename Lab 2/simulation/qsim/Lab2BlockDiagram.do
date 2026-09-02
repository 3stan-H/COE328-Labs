onerror {quit -f}
vlib work
vlog -work work Lab2BlockDiagram.vo
vlog -work work Lab2BlockDiagram.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Lab2BlockDiagram_vlg_vec_tst
vcd file -direction Lab2BlockDiagram.msim.vcd
vcd add -internal Lab2BlockDiagram_vlg_vec_tst/*
vcd add -internal Lab2BlockDiagram_vlg_vec_tst/i1/*
add wave /*
run -all
