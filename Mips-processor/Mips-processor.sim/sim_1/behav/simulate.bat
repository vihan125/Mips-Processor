@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xsim ALU_control_Unit_TB_behav -key {Behavioral:sim_1:Functional:ALU_control_Unit_TB} -tclbatch ALU_control_Unit_TB.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
