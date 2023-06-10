@echo off
taskkill /f /im explorer.exe
timeout /t 1 >nul
del /a "%LocalAppData%\Microsoft\Windows\Explorer\iconcache*.db"
reg delete "HKCU\Software\Classes\Local Settings\Software\Microsoft\Windows\CurrentVersion\TrayNotify" /va /f
start explorer.exe
start explorer.exe "%CD%"