@echo off
setlocal

set "TARGET=%~1"
if "%TARGET%"=="" (
  echo Usage: switch-vscode-env.bat [windows^|mac]
  exit /b 1
)

if /I "%TARGET%"=="windows" (
  copy /Y ".vscode\settings.windows.json" ".vscode\settings.json" >nul
  echo Switched VS Code LaTeX settings to WINDOWS.
  echo Please run: Developer: Reload Window
  exit /b 0
)

if /I "%TARGET%"=="mac" (
  copy /Y ".vscode\settings.mac.json" ".vscode\settings.json" >nul
  echo Switched VS Code LaTeX settings to MAC.
  echo Please run: Developer: Reload Window
  exit /b 0
)

echo Invalid target: %TARGET%
echo Usage: switch-vscode-env.bat [windows^|mac]
exit /b 1
