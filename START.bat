@echo off
echo ==========================================
echo    CryptoVault - Startup Script
echo ==========================================
echo.

:: Start Backend
echo Starting Backend API (Port 5000)...
start "CryptoVault API" cmd /k "cd cryptovault-api && npm start"

:: Wait a moment
timeout /t 3 /nobreak > nul

:: Start Frontend
echo Starting Frontend (Port 5173)...
start "CryptoVault Frontend" cmd /k "cd app && npm run dev"

echo.
echo ==========================================
echo    Both servers are starting!
echo ==========================================
echo.
echo Frontend: http://localhost:5173
echo Backend API: http://localhost:5000
echo.
echo Admin Login: admin@cryptovault.com
echo Admin Password: admin123
echo.
pause
