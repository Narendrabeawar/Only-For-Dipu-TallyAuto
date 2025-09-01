@echo off
title Apex Inotech - Computer Name Manager v1.0.0.1
color 0A

echo.
echo ========================================
echo   Apex Inotech - Computer Name Manager
echo   Version 1.0.0.1 - Silent Launcher
echo ========================================
echo.

echo Company: Apex Inotech
echo Product: Computer Name Manager
echo Version: 1.0.0.1
echo Description: Professional Computer Name Management System
echo.

echo Starting Computer Name Manager silently...
echo.

' Launch the VBS launcher
cscript //nologo "Computer-Name-Manager-Silent-Launcher.vbs"

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo Application launched successfully!
    echo ========================================
) else (
    echo.
    echo ========================================
    echo Error launching application!
    echo Check if executable exists.
    echo ========================================
)

echo.
echo Press any key to exit...
pause >nul
