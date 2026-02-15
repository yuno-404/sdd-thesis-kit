@echo off
setlocal

set "TARGET=%~1"
if "%TARGET%"=="" set "TARGET=manuscript.tex"

where latexmk >nul 2>nul
if %errorlevel%==0 (
  latexmk -pdf -interaction=nonstopmode "%TARGET%"
  goto :eof
)

set "MIKTEX_LATEXMK=%LOCALAPPDATA%\Programs\MiKTeX\miktex\bin\x64\latexmk.exe"
if exist "%MIKTEX_LATEXMK%" (
  "%MIKTEX_LATEXMK%" -pdf -interaction=nonstopmode "%TARGET%"
  goto :eof
)

echo latexmk not found. Reopen terminal or install MiKTeX.
exit /b 1
