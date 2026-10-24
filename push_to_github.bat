@echo off
title Push Edge MPQ Project to GitHub
color 0A
echo =======================================================
echo   EDGE AI MIXED-PRECISION QUANTIZATION: GITHUB PUSHER
echo =======================================================
echo.

set /p REPO_URL="Enter your GitHub Repository URL (e.g. https://github.com/username/repo.git): "

if "%REPO_URL%"=="" (
    echo [ERROR] No repository URL provided! Exiting...
    pause
    exit /b
)

echo.
echo [1/5] Initializing Git repository...
git init -b main

echo [2/5] Staging files...
git add .

echo [3/5] Creating commit...
git commit -m "Initial commit: Edge AI Mixed-Precision Quantization Studio & Benchmarks"

echo [4/5] Setting remote repository...
git remote remove origin 2>nul
git remote add origin %REPO_URL%

echo [5/5] Pushing to main branch...
git push -u origin main

echo.
echo =======================================================
echo   DONE! Your project is now pushed to GitHub!
echo =======================================================
pause
