@echo off
start /min PowerShell.exe -NoProfile -Command "Start-Process -FilePath PowerShell.exe -Verb RunAs -ArgumentList '-NoExit -NoProfile -Command \"Get-AppxPackage Microsoft.ZuneVideo ^| Remove-AppxPackage\"'"