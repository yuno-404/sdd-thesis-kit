@echo off
setlocal

set "SOURCE=%~1"
set "OUTPUT=%~2"

if "%SOURCE%"=="" set "SOURCE=manuscript.tex"
if "%OUTPUT%"=="" set "OUTPUT=manuscript_single.tex"

powershell -NoProfile -ExecutionPolicy Bypass -File "scripts\export-single.ps1" -Source "%SOURCE%" -Output "%OUTPUT%"
if errorlevel 1 exit /b 1

echo Done. Output: %OUTPUT%
