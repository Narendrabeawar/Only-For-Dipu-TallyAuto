@echo off
title Apex Inotech - Computer Name Manager Silent EXE Builder
color 0A

echo.
echo ========================================
echo   Apex Inotech - Computer Name Manager
echo   Silent EXE Builder v1.0.0.1
echo ========================================
echo.

echo Company: Apex Inotech
echo Product: Computer Name Manager
echo Version: 1.0.0.1
echo Description: Professional Computer Name Management System
echo.

echo Building silent executable...
echo.

powershell -ExecutionPolicy Bypass -File "build-computer-name-manager-silent-exe.ps1"

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
