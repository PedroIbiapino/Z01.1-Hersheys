onerror {quit -code 1}
source "/home/borg/Desktop/projet1/Z01.1-Hersheys/vunit_out/test_output/lib.tb_or8way.all_7db2fcc4a54596dd4345e1e4eb3670ecf79e2819/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
