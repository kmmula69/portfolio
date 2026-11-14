@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Install Node.js LTS from https://nodejs.org then try again.
  pause
  exit /b 1
)
where git >nul 2>nul
if errorlevel 1 (
  echo Install Git for Windows from https://git-scm.com then try again.
  pause
  exit /b 1
)
node editor-server.mjs --open
pause
