@echo off 
color 0A
echo ..................................
echo ...... VOLTE HACKER for RN3 ......
echo .. By mmengi, @amog787, @agritux..
echo ..................................

echo Do this at YOUR OWN RISK!
echo We are not responsible if you screw up.

set sim=1
set op=1

if %sim%==1 if %op%==1 (set efs=SIM1_AIRT)


echo ...........................
echo ...........................


 
echo Please grant Root authorization for your device
Tool\adb.exe shell "su -c setprop sys.usb.config diag"

pause

Tool\EfsTools.exe uploadDirectory -i EFS/%efs%/ -o /

pause