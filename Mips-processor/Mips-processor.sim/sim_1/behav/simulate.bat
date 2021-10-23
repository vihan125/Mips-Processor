@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim mux_2x5to5_TB_behav -key {Behavioral:sim_1:Functional:mux_2x5to5_TB} -tclbatch mux_2x5to5_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
