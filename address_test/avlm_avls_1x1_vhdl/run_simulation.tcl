# setup variables for simulation script
set system_name      avlm_avls_1x1
set QSYS_SIMDIR      $system_name/simulation
set TOP_LEVEL_NAME   tb
source $QSYS_SIMDIR/mentor/msim_setup.tcl

# compile system
dev_com
com

vcom ../src/addr_slave.vhd

# compile testbench and test program
vcom test_program_pkg.vhd
vcom test_program.vhd
vcom tb.vhd

# load and run simulation
elab_debug
do wave.do
run 50ns

# alias to re-compile changes made to test program, load and run simulation
alias rerun {
   vcom test_program_pkg.vhd
   vcom test_program.vhd
   vcom ../src/addr_slave.vhd
   elab_debug
   do wave.do
   run 50ns
}

