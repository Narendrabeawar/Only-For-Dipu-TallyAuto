' Apex Tally Auto Backup - Silent Launcher
' Professional Silent Message Display System
' Company: Apex Infotech
' Developed by: Zexa Technology

Option Explicit

Dim objShell, strScriptPath, strPowerShellPath

' Create Shell object
Set objShell = CreateObject("WScript.Shell")

' Get the current directory where this VBS file is located
strScriptPath = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

' Build the full path to the PowerShell script
strScriptPath = strScriptPath & "\Apex_Tally_Backup_Message.ps1"

' PowerShell execution policy bypass command
strPowerShellPath = "powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File """ & strScriptPath & """"

' Execute PowerShell script silently
objShell.Run strPowerShellPath, 0, False

' Clean up
Set objShell = Nothing

' Exit silently
WScript.Quit
