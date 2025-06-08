::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDZdXxeLMG6GIrAP4/z0/9aquw07Xe46a7PryLuEJeMH+XnTfJgp2W1J2JpcTDZsTC64YQkgvm9Qs1iGOMqMugPkTnSI5V85DWRggi3VlC5b
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
title Activation Script
color 0F
goto script

:script
cls
echo This script will activate windows automatically. If this doesn't work, try this product key:
echo M7XTQ-FN8P6-TTKYV-9D4CC-J462D [Press 1 to copy to clipboard]
echo.
echo Press 2 to start script. [Requires Internet connection and administrative priviliges]
echo.
echo Note: THis product key works for both 1809 and 21H2 versions of Windows 10 MTR.
choice /c 12 /n
if %errorlevel%==1 echo M7XTQ-FN8P6-TTKYV-9D4CC-J462D | clip
if %errorlevel%==2 goto activate
goto script

:activate
net session >nul 2>&1
if %errorlevel%==0 set admin=true
if %errorlevel% neq 0 set admin=false
if %admin%==false (
    echo.
    echo ERROR: Access denied, please run the script with administrative privileges.
    pause
    exit /b 1
)
ping www.google.com -n 1 >nul 2>&1
if %errorlevel%==0 set internet=true
if %errorlevel% neq 0 set internet=false
if %internet%==false (
    echo.
    echo ERROR: Failed to connect to the internet. Please check your internet connection and try again.
    pause
    exit /b 1
)
cscript.exe %windir%\system32\slmgr.vbs /rilc
cscript.exe %windir%\system32\slmgr.vbs /upk >nul 2>&1
cscript.exe %windir%\system32\slmgr.vbs /ckms >nul 2>&1
cscript.exe %windir%\system32\slmgr.vbs /cpky >nul 2>&1
cscript.exe %windir%\system32\slmgr.vbs /ipk M7XTQ-FN8P6-TTKYV-9D4CC-J462D
cscript.exe %windir%\system32\slmgr.vbs /skms kms.digiboy.ir
cscript.exe %windir%\system32\slmgr.vbs /ato
pause >nul