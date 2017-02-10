@echo off
set xv_path=D:\\Xilinx\\Vivado\\2016.3\\bin
call %xv_path%/xelab  -wto 4795e8b2598c4d15b579d8e2762f8683 -m64 --debug typical --relax --mt 2 -L work -L secureip -L xpm --snapshot top_tb_behav work.top_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
