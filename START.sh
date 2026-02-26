#!/bin/bash

echo "=========================================="
echo "   CryptoVault - Startup Script"
echo "=========================================="
echo ""

# Start Backend
echo "Starting Backend API (Port 5000)..."
cd cryptovault-api
npm start &
BACKEND_PID=$!
cd ..

# Wait a moment
sleep 3

# Start Frontend
echo "Starting Frontend (Port 5173)..."
cd app
npm run dev &
FRONTEND_PID=$!
cd ..

echo ""
echo "=========================================="
echo "   Both servers are starting!"
echo "=========================================="
echo ""
echo "Frontend: http://localhost:5173"
echo "Backend API: http://localhost:5000"
echo ""
echo "Admin Login: admin@cryptovault.com"
echo "Admin Password: admin123"
echo ""
echo "Press Ctrl+C to stop both servers"
echo ""

# Wait for user to press Ctrl+C
trap "kill $BACKEND_PID $FRONTEND_PID; exit" INT
wait
