' Apex Tally Backup Message Silent Launcher
' Runs executable completely silently without any prompts
Option Explicit

Dim objFSO, objShell, scriptPath, exePath

' Create objects
Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objShell = CreateObject("WScript.Shell")

' Get current directory
scriptPath = objFSO.GetParentFolderName(WScript.ScriptFullName)
exePath = scriptPath & "\Apex_Tally_Backup_Message.exe"

' Check if executable exists
If objFSO.FileExists(exePath) Then
    ' Run executable silently (0 = hide window, False = don't wait)
    objShell.Run exePath, 0, False
Else
    ' Show error message if executable not found
    MsgBox "ERROR: Apex_Tally_Backup_Message.exe not found!" & vbCrLf & _
           "Please ensure the executable file is in the same directory.", _
           vbCritical, "Apex Tally Backup Message - Error"
End If

' Clean up
Set objShell = Nothing
Set objFSO = Nothing
