# Apex Tally Auto Backup - Message Dialog
# Professional Message Display System
# Company: Apex Infotech
# Developed by: Zexa Technology

Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create main form
$form = New-Object System.Windows.Forms.Form
$form.Text = "Apex Tally Auto Backup - Installation Message"
$form.Size = New-Object System.Drawing.Size(700, 500)
$form.StartPosition = "CenterScreen"
$form.BackColor = [System.Drawing.Color]::LightCyan
$form.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::FixedDialog
$form.MaximizeBox = $false
$form.ShowInTaskbar = $false
$form.TopMost = $true
$form.Icon = [System.Drawing.SystemIcons]::Information

# Title Label
$titleLabel = New-Object System.Windows.Forms.Label
$titleLabel.Text = "Apex Tally Auto Backup"
$titleLabel.Font = New-Object System.Drawing.Font("Segoe UI", 20, [System.Drawing.FontStyle]::Bold)
$titleLabel.ForeColor = [System.Drawing.Color]::DarkBlue
$titleLabel.Size = New-Object System.Drawing.Size(600, 40)
$titleLabel.Location = New-Object System.Drawing.Point(50, 30)
$titleLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($titleLabel)

# Subtitle Label
$subtitleLabel = New-Object System.Windows.Forms.Label
$subtitleLabel.Text = "Install Successtuly on your computer"
$subtitleLabel.Font = New-Object System.Drawing.Font("Segoe UI", 12, [System.Drawing.FontStyle]::Bold)
$subtitleLabel.ForeColor = [System.Drawing.Color]::DarkGreen
$subtitleLabel.Size = New-Object System.Drawing.Size(600, 25)
$subtitleLabel.Location = New-Object System.Drawing.Point(50, 70)
$subtitleLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($subtitleLabel)

# Main Message Label
$messageLabel = New-Object System.Windows.Forms.Label
$messageLabel.Text = "Please check Tallyprime in D Drive and Data Folder name must be Data"
$messageLabel.Font = New-Object System.Drawing.Font("Segoe UI", 14, [System.Drawing.FontStyle]::Bold)
$messageLabel.ForeColor = [System.Drawing.Color]::DarkRed
$messageLabel.Size = New-Object System.Drawing.Size(600, 60)
$messageLabel.Location = New-Object System.Drawing.Point(50, 120)
$messageLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$messageLabel.BorderStyle = [System.Windows.Forms.BorderStyle]::FixedSingle
$messageLabel.BackColor = [System.Drawing.Color]::White
$form.Controls.Add($messageLabel)

# Thank You Label
$thankLabel = New-Object System.Windows.Forms.Label
$thankLabel.Text = "Thank You for using ApexTallyautoBackup Utility"
$thankLabel.Font = New-Object System.Drawing.Font("Segoe UI", 12, [System.Drawing.FontStyle]::Bold)
$thankLabel.ForeColor = [System.Drawing.Color]::DarkBlue
$thankLabel.Size = New-Object System.Drawing.Size(600, 30)
$thankLabel.Location = New-Object System.Drawing.Point(50, 200)
$thankLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($thankLabel)

# Company Info Label
$companyLabel = New-Object System.Windows.Forms.Label
$companyLabel.Text = "For Apex Infotech developed by Zexa Technology"
$companyLabel.Font = New-Object System.Drawing.Font("Segoe UI", 10, [System.Drawing.FontStyle]::Italic)
$companyLabel.ForeColor = [System.Drawing.Color]::DarkGray
$companyLabel.Size = New-Object System.Drawing.Size(600, 25)
$companyLabel.Location = New-Object System.Drawing.Point(50, 240)
$companyLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($companyLabel)

# OK Button
$okButton = New-Object System.Windows.Forms.Button
$okButton.Text = "OK"
$okButton.Size = New-Object System.Drawing.Size(120, 45)
$okButton.Location = New-Object System.Drawing.Point(290, 300)
$okButton.Font = New-Object System.Drawing.Font("Segoe UI", 12, [System.Drawing.FontStyle]::Bold)
$okButton.BackColor = [System.Drawing.Color]::LightGreen
$okButton.ForeColor = [System.Drawing.Color]::Black
$okButton.FlatStyle = [System.Windows.Forms.FlatStyle]::Flat
$okButton.Cursor = [System.Windows.Forms.Cursors]::Hand
$form.Controls.Add($okButton)

# Status Label
$statusLabel = New-Object System.Windows.Forms.Label
$statusLabel.Text = "Apex Infotech - Professional Tally Solutions"
$statusLabel.Font = New-Object System.Drawing.Font("Segoe UI", 9)
$statusLabel.ForeColor = [System.Drawing.Color]::DarkBlue
$statusLabel.Size = New-Object System.Drawing.Size(600, 20)
$statusLabel.Location = New-Object System.Drawing.Point(50, 370)
$statusLabel.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$form.Controls.Add($statusLabel)

# OK Button Click Event
$okButton.Add_Click({ $form.Close() })

# Show the form
$form.ShowDialog()
