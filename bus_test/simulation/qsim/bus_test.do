onerror {exit -code 1}
vlib work
vcom -work work bus_test.vho
vcom -work work STDP_REG_TEST.vwf.vht
vsim -c -t 1ps -L cyclonev -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.shift_reg_post_add_vhd_vec_tst
vcd file -direction bus_test.msim.vcd
vcd add -internal shift_reg_post_add_vhd_vec_tst/*
vcd add -internal shift_reg_post_add_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f

