onerror {quit -code 1}
source "/home/borg/Desktop/projet1/Z01.1-Hersheys/vunit_out/test_output/lib.tb_mux2way.all_5743cf7c7b26a8c9518b825ed27d1e0019ab4e51/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
