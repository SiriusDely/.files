@ECHO off
:top
CLS
ECHO Choose a shell:
ECHO [1] cmd
ECHO [2] cmder
ECHO [3] bash
ECHO [4] PowerShell
ECHO [5] Python
ECHO [6] ZSH
ECHO [7] Babun
ECHO.
ECHO [8] restart elevated
ECHO [9] exit
ECHO.

CHOICE /N /C:123456789 /M "> "
CLS
IF ERRORLEVEL ==9 GOTO end
IF ERRORLEVEL ==8 powershell -Command "Start-Process hyper -Verb RunAs"
IF ERRORLEVEL ==7 "%USERPROFILE%\.babun\cygwin\bin\zsh.exe"
IF ERRORLEVEL ==6 wsl
IF ERRORLEVEL ==5 python
IF ERRORLEVEL ==4 powershell
IF ERRORLEVEL ==3 bash
IF ERRORLEVEL ==2 cmd /k "C:\tools\cmder\vendor\init.bat"
IF ERRORLEVEL ==1 cmd

CLS
ECHO Switch or exit?
ECHO [1] Switch
ECHO [2] Exit

CHOICE /N /C:12 /D 2 /T 8 /M "> "
IF ERRORLEVEL ==2 GOTO end
IF ERRORLEVEL ==1 GOTO top

:end
