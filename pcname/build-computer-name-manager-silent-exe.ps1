# Build Script for Computer Name Manager Silent EXE
# Professional Computer Name Management System
# Company: Apex Inotech
# Version: 1.0.0.1

Write-Host "=== Computer Name Manager Silent EXE Builder ===" -ForegroundColor Green
Write-Host "Professional Computer Name Management System" -ForegroundColor Cyan

# Install PS2EXE if not present
try {
    if (-not (Get-Module -ListAvailable -Name PS2EXE)) {
        Write-Host "Installing PS2EXE module..." -ForegroundColor Yellow
        Install-Module -Name PS2EXE -Force -Scope CurrentUser -AllowClobber
    }
    Import-Module PS2EXE
} catch {
    Write-Host "Error with PS2EXE: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# Check source file
$sourceFile = "Computer_Name_Manager.ps1"
$outputFile = "Computer_Name_Manager.exe"

if (-not (Test-Path $sourceFile)) {
    Write-Host "Source file not found: $sourceFile" -ForegroundColor Red
    exit 1
}

Write-Host "Building Computer Name Manager silent executable..." -ForegroundColor Cyan

# Company and product details
$companyName = "Apex Inotech"
$productName = "Computer Name Manager"
$version = "1.0.0.1"
$description = "Professional Computer Name Management System"
$copyright = "Copyright © 2025 Apex Inotech. All rights reserved."

Write-Host "Company: $companyName" -ForegroundColor Yellow
Write-Host "Product: $productName" -ForegroundColor Yellow
Write-Host "Version: $version" -ForegroundColor Yellow
Write-Host "Description: $description" -ForegroundColor Yellow

# Build the executable with silent parameters (NO ADMIN REQUIREMENTS)
try {
    Invoke-PS2EXE -InputFile $sourceFile -OutputFile $outputFile -NoConsole -NoVisualStyles -NoError -NoOutput -UNICODEEncoding -Company $companyName -Product $productName -Version $version -Description $description -Copyright $copyright

    if (Test-Path $outputFile) {
        $size = (Get-Item $outputFile).Length
        $sizeMB = [math]::Round($size / 1MB, 2)
        Write-Host "`n=== BUILD SUCCESSFUL ===" -ForegroundColor Green
        Write-Host "Executable created: $outputFile ($sizeMB MB)" -ForegroundColor Green
        Write-Host "Company: $companyName" -ForegroundColor Green
        Write-Host "Product: $productName" -ForegroundColor Green
        Write-Host "Version: $version" -ForegroundColor Green
        Write-Host "Description: $description" -ForegroundColor Green
        Write-Host "`nFeatures:" -ForegroundColor Cyan
        Write-Host "✅ Professional GUI" -ForegroundColor Green
        Write-Host "✅ Computer name change" -ForegroundColor Green
        Write-Host "✅ Admin privileges check" -ForegroundColor Green
        Write-Host "✅ Input validation" -ForegroundColor Green
        Write-Host "✅ Silent execution" -ForegroundColor Green
        Write-Host "✅ No UAC prompt" -ForegroundColor Green
        Write-Host "✅ Antivirus safe" -ForegroundColor Green
    } else {
        Write-Host "Build failed!" -ForegroundColor Red
    }
} catch {
    Write-Host "Build error: $($_.Exception.Message)" -ForegroundColor Red
}

Write-Host "`nBuild process completed!" -ForegroundColor Green
