# Computer Name Manager - Professional GUI
# Converted from VBS to PowerShell
# Company: Apex Inotech
# Version: 1.0.0.1
# Description: Professional Computer Name Management System

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Check admin privileges
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if (-not $isAdmin) {
    [System.Windows.Forms.MessageBox]::Show("Administrator privileges required! Please run as Administrator.", "Apex Inotech - Access Denied", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    exit
}

# Create main form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Apex Inotech - Computer Name Manager v1.0.0.1"
$form.Size = New-Object System.Drawing.Size(600, 500)
$form.StartPosition = "CenterScreen"
$form.BackColor = [System.Drawing.Color]::LightCyan
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$form.MaximizeBox = $false
$form.ShowInTaskbar = $false
$form.TopMost = $true
$form.Icon = [System.Drawing.SystemIcons]::Information

# Title Label
$titleLabel = New-Object System.Windows.Forms.Label
$titleLabel.Text = "Computer Name Manager"
$titleLabel.Font = New-Object System.Drawing.Font("Segoe UI", 18, [System.Drawing.FontStyle]::Bold)
$titleLabel.ForeColor = [System.Drawing.Color]::DarkBlue
$titleLabel.Size = New-Object System.Drawing.Size(450, 35)
$titleLabel.Location = New-Object System.Drawing.Point(75, 25)
$titleLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($titleLabel)

# Subtitle Label
$subtitleLabel = New-Object System.Windows.Forms.Label
$subtitleLabel.Text = "Professional Computer Name Management System by Apex Inotech"
$subtitleLabel.Font = New-Object System.Drawing.Font("Segoe UI", 9, [System.Drawing.FontStyle]::Italic)
$subtitleLabel.ForeColor = [System.Drawing.Color]::DarkGray
$subtitleLabel.Size = New-Object System.Drawing.Size(450, 20)
$subtitleLabel.Location = New-Object System.Drawing.Point(75, 55)
$subtitleLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($subtitleLabel)

# Current Computer Name Label
$currentLabel = New-Object System.Windows.Forms.Label
$currentLabel.Text = "Current Computer Name:"
$currentLabel.Font = New-Object System.Drawing.Font("Segoe UI", 11, [System.Drawing.FontStyle]::Bold)
$currentLabel.Size = New-Object System.Drawing.Size(250, 25)
$currentLabel.Location = New-Object System.Drawing.Point(75, 100)
$form.Controls.Add($currentLabel)

# Current Name Display
$currentNameLabel = New-Object System.Windows.Forms.Label
$currentNameLabel.Text = $env:COMPUTERNAME
$currentNameLabel.Font = New-Object System.Drawing.Font("Segoe UI", 12, [System.Drawing.FontStyle]::Bold)
$currentNameLabel.ForeColor = [System.Drawing.Color]::DarkGreen
$currentNameLabel.Size = New-Object System.Drawing.Size(400, 30)
$currentNameLabel.Location = New-Object System.Drawing.Point(75, 125)
$currentNameLabel.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$currentNameLabel.BackColor = [System.Drawing.Color]::White
$currentNameLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($currentNameLabel)

# New Computer Name Label
$newLabel = New-Object System.Windows.Forms.Label
$newLabel.Text = "New Computer Name:"
$newLabel.Font = New-Object System.Drawing.Font("Segoe UI", 11, [System.Drawing.FontStyle]::Bold)
$newLabel.Size = New-Object System.Drawing.Size(250, 25)
$newLabel.Location = New-Object System.Drawing.Point(75, 175)
$form.Controls.Add($newLabel)

# New Name TextBox
$newNameTextBox = New-Object System.Windows.Forms.TextBox
$newNameTextBox.Size = New-Object System.Drawing.Size(400, 30)
$newNameTextBox.Location = New-Object System.Drawing.Point(75, 200)
$newNameTextBox.Font = New-Object System.Drawing.Font("Segoe UI", 12)
$newNameTextBox.PlaceholderText = "Enter new computer name here..."
$newNameTextBox.TextAlign = [System.Windows.Forms.HorizontalAlignment]::Center
$form.Controls.Add($newNameTextBox)

# Warning Label
$warningLabel = New-Object System.Windows.Forms.Label
$warningLabel.Text = "Warning: System restart required after name change!"
$warningLabel.Font = New-Object System.Drawing.Font("Segoe UI", 9, [System.Drawing.FontStyle]::Bold)
$warningLabel.ForeColor = [System.Drawing.Color]::Red
$warningLabel.Size = New-Object System.Drawing.Size(500, 25)
$warningLabel.Location = New-Object System.Drawing.Point(50, 250)
$warningLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($warningLabel)

# Change Button
$changeButton = New-Object System.Windows.Forms.Button
$changeButton.Text = "Change Computer Name"
$changeButton.Size = New-Object System.Drawing.Size(200, 45)
$changeButton.Location = New-Object System.Drawing.Point(100, 300)
$changeButton.Font = New-Object System.Drawing.Font("Segoe UI", 11, [System.Drawing.FontStyle]::Bold)
$changeButton.BackColor = [System.Drawing.Color]::LightGreen
$changeButton.ForeColor = [System.Drawing.Color]::Black
$changeButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$changeButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$form.Controls.Add($changeButton)

# Refresh Button
$refreshButton = New-Object System.Windows.Forms.Button
$refreshButton.Text = "Refresh"
$refreshButton.Size = New-Object System.Drawing.Size(140, 45)
$refreshButton.Location = New-Object System.Drawing.Point(320, 300)
$refreshButton.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
$refreshButton.BackColor = [System.Drawing.Color]::LightBlue
$refreshButton.ForeColor = [System.Drawing.Color]::Black
$refreshButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$refreshButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$form.Controls.Add($refreshButton)

# Close Button
$exitButton = New-Object System.Windows.Forms.Button
$exitButton.Text = "Close"
$exitButton.Size = New-Object System.Drawing.Size(120, 40)
$exitButton.Location = New-Object System.Drawing.Point(240, 370)
$exitButton.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Bold)
$exitButton.BackColor = [System.Drawing.Color]::LightCoral
$exitButton.ForeColor = [System.Drawing.Color]::Black
$exitButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$exitButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$form.Controls.Add($exitButton)

# Status Label
$statusLabel = New-Object System.Windows.Forms.Label
$statusLabel.Text = "Ready to change computer name - Apex Inotech"
$statusLabel.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$statusLabel.ForeColor = [System.Drawing.Color]::DarkBlue
$statusLabel.Size = New-Object System.Drawing.Size(500, 20)
$statusLabel.Location = New-Object System.Drawing.Point(50, 430)
$statusLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($statusLabel)

# Change Button Click Event
$changeButton.Add_Click({
    $newName = $newNameTextBox.Text.Trim()
    if ([string]::IsNullOrEmpty($newName)) {
        [System.Windows.Forms.MessageBox]::Show("Please enter a new computer name!", "Apex Inotech - Input Required", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)
        return
    }
    if ($newName.Length -lt 3) {
        [System.Windows.Forms.MessageBox]::Show("Computer name must be at least 3 characters long!", "Apex Inotech - Invalid Name", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Warning)
        return
    }
    if ($newName -eq $env:COMPUTERNAME) {
        [System.Windows.Forms.MessageBox]::Show("New name is same as current name!", "Apex Inotech - No Change", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
        return
    }
    $result = [System.Windows.Forms.MessageBox]::Show("Are you sure you want to change the computer name to '$newName'?\n\nThis will require a system restart to take effect.", "Apex Inotech - Confirm Change", [System.Windows.Forms.MessageBoxButtons]::YesNo, [System.Windows.Forms.MessageBoxIcon]::Question)
    if ($result -eq [System.Windows.Forms.DialogResult]::Yes) {
        try {
            $statusLabel.Text = "Changing computer name... - Apex Inotech"
            $statusLabel.ForeColor = [System.Drawing.Color]::Orange
            $form.Refresh()
            $computer = Get-WmiObject -Class Win32_ComputerSystem
            $computer.Rename($newName)
            $statusLabel.Text = "Computer name changed successfully! - Apex Inotech"
            $statusLabel.ForeColor = [System.Drawing.Color]::Green
            [System.Windows.Forms.MessageBox]::Show("Computer name changed successfully to '$newName'!\n\nPlease restart your computer for changes to take effect.\n\nThank you for using Apex Inotech!", "Apex Inotech - Success", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Information)
            $currentNameLabel.Text = $newName
            $newNameTextBox.Clear()
        } catch {
            $statusLabel.Text = "Error changing computer name! - Apex Inotech"
            $statusLabel.ForeColor = [System.Drawing.Color]::Red
            [System.Windows.Forms.MessageBox]::Show("Error changing computer name: " + $_.Exception.Message, "Apex Inotech - Error", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
        }
    }
})

# Refresh Button Click Event
$refreshButton.Add_Click({
    $currentNameLabel.Text = $env:COMPUTERNAME
    $statusLabel.Text = "Current name refreshed - Apex Inotech"
    $statusLabel.ForeColor = [System.Drawing.Color]::DarkBlue
})

# Exit Button Click Event
$exitButton.Add_Click({ $form.Close() })

# Show the form
$form.ShowDialog()
