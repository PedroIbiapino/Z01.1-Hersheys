onerror {quit -code 1}
source "/home/borg/Desktop/projet1/Z01.1-Hersheys/vunit_out/test_output/lib.tb_and16.all_67f8b0b4b21d5bd0e4aa37b46d244e59c8104249/modelsim/common.do"
set failed [vunit_load]
if {$failed} {quit -code 1}
set failed [vunit_run]
if {$failed} {quit -code 1}
quit -code 0
