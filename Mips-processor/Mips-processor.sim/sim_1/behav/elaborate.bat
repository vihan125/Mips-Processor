@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto ce9ec7a66d2749a2bac21839005f6abd -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot JR_control_unit_TB_behav xil_defaultlib.JR_control_unit_TB -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
