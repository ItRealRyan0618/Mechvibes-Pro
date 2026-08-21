@echo off
set NODE_DIR=%USERPROFILE%\Desktop\676767\node\node-v20.11.0-win-x64
set SRC_DIR=%USERPROFILE%\Downloads\mechvibes-master

:: Kill old Mechvibes processes
taskkill /f /im electron.exe 2>nul
taskkill /f /im Mechvibes.exe 2>nul
timeout /t 1 /nobreak >nul

:: Set PATH and launch
set PATH=%NODE_DIR%;%PATH%
cd /d "%SRC_DIR%"
start "" "%NODE_DIR%\node.exe" "node_modules\electron\cli.js" "."
