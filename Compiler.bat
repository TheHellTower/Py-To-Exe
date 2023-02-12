@echo off
Title Python Compiler Methods
cls

set program=%1
shift
set /p iconPath=Icon Path: 

:ask
title TheHellTower / 3 Ways To Compile Python
cls
echo 1) Pyinstaller
echo 2) Pyarmor (obfuscated)
echo 3) Nuitka
set /p firstChoice=Choice:
 
if /I "%firstChoice%"=="1" (goto :PyInstaller)
if /I "%firstChoice%"=="2" (goto :PyArmor)
if /I "%firstChoice%"=="3" (goto :Nuitka)
goto ask

:PyInstaller
pyinstaller --onefile --icon=%iconPath% %program%
pause
exit

:PyArmor
pyarmor pack -e " --onefile --icon %iconPath%" %program%
pause
exit

:Nuitka
nuitka --standalone --onefile --windows-icon-from-ico=%iconPath% %program%
pause
exit
