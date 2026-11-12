@echo off
title MIMO-MAX SYSTEM LAUNCHER
color 0b
cls
echo ===================================================
echo       MIMO-MAX: INITIATING HYBRID SYSTEM
echo ===================================================
echo.
echo [1/2] Awakening the Brain (Backend)...
start "MIMO BRAIN" cmd /k "call start_brain.bat"
echo    > Brain signal sent.
echo.
echo [2/2] Connecting the Interface (Frontend)...
echo    > Starting Vite server...
start "MIMO INTERFACE" cmd /k "npm run dev"
echo.
echo ===================================================
echo    SYSTEM ONLINE. 
echo    Please wait for the browser to open...
echo ===================================================
timeout /t 5
start http://localhost:3000
exit
