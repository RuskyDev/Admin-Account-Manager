@echo off
@mode 62,20
@title Admin Account Manager V1.0.0

net session >nul 2>&1
if %errorlevel% neq 0 (
    msg * You must run this script as an administrator.
    goto :eof
)x

echo [1] Enable Administrator (User Account)
echo [2] Disable Administrator (User Account)
echo.
set /p option="> "

if "%option%"=="1" (
  net user administrator /active:yes
  echo Administrator account enabled.
) else if "%option%"=="2" (
  net user administrator /active:no
  echo Administrator account disabled.
) else (
  echo Invalid option.
)
