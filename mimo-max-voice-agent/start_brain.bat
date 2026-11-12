@echo off
title MIMO-MAX BRAIN SERVER
color 0a
cls
echo ===================================================
echo   STARTING MIMO-MAX INTELLIGENCE CORE (BACKEND)
echo ===================================================
echo.
echo [1/3] Checking Python...
python --version
if %errorlevel% neq 0 (
    echo [ERROR] Python is not installed or not in PATH!
    pause
    exit
)
echo.

echo [2/3] Installing Dependencies...
cd backend
pip install -r requirements.txt
if %errorlevel% neq 0 (
    echo [WARNING] Some dependencies might have failed.
)
echo.

echo [3/3] Launching Neural Server...
echo ---------------------------------------------------
echo  Server should run on: http://localhost:3002
echo  Keep this window OPEN while using Mimo.
echo ---------------------------------------------------
python main.py
pause
