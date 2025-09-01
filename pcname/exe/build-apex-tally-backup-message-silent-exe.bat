@echo off
title Apex Infotech - Apex Tally Backup Message EXE Builder
color 0A

echo.
echo ========================================
echo   Apex Infotech - EXE Builder
echo   Apex Tally Backup Message v1.0.0.1
echo ========================================
echo.

echo Company: Apex Infotech
echo Product: Apex Tally Backup Message
echo Version: 1.0.0.1
echo Description: Professional Tally Backup Message System
echo.

echo Starting build process...
echo.

powershell -ExecutionPolicy Bypass -File "build-apex-tally-backup-message-silent-exe.ps1"

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo Build completed successfully!
    echo ========================================
) else (
    echo.
    echo ========================================
    echo Build failed! Check errors above.
    echo ========================================
)

echo.
echo Press any key to exit...
pause >nul
