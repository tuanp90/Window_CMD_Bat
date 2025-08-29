@echo off
set "AppName=YourApp.exe"
set "LogFile=launch_log.txt"

echo Starting %AppName%...
start "" "C:\Path\To\%AppName%"

echo Waiting 30 seconds...
timeout /t 30 /nobreak >nul

tasklist /fi "imagename eq %AppName%" | find /i "%AppName%" >nul
if %errorlevel%==0 (
    echo [%date% %time%] %AppName% started successfully. >> %LogFile%
) else (
    echo [%date% %time%] %AppName% failed to start. >> %LogFile%
)
