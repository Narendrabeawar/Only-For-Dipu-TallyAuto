@echo off
title Apex Infotech - Apex Tally Backup Message v1.0.0.1
color 0A

echo.
echo ========================================
echo   Apex Infotech - Apex Tally Backup Message
echo   Version 1.0.0.1 - Silent Launcher
echo ========================================
echo.

echo Company: Apex Infotech
echo Product: Apex Tally Backup Message
echo Version: 1.0.0.1
echo Description: Professional Tally Backup Message System
echo.

echo Starting Apex Tally Backup Message silently...
echo.

' Launch the VBS launcher
cscript //nologo "Apex-Tally-Backup-Message-Silent-Launcher.vbs"

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

