@echo off
title Process Hacker Tespit
color 4F
setlocal enabledelayedexpansion
:loop
tasklist /FI "IMAGENAME eq ProcessHacker.exe" | find /I "ProcessHacker.exe" >nul
if %ERRORLEVEL%==0 (
    color 2F
    cls
    echo [✓] Process Hacker bulundu!
) else (
    color 4F
    cls
    echo [X] Process Hacker bulunamadi!
)

timeout /t 1 >nul
goto loop
