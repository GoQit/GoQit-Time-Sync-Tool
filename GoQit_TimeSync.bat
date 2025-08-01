@echo off
:: =================================================================
:: GoQit One Time Sync Tool
:: Author: Parth (GoQit One)
:: Website: https://goqit.netlify.app/
:: Version: 1.0 (GitHub Release)
:: License: MIT
:: Compatible with: Windows Vista, 7, 8, 10, 11 and newer.
:: =================================================================

:: Sets the title of the command prompt window.
title GoQit One Time Sync Tool

:: Sets the console color to Green text on a Black background.
color 0A

:: =================================================================
::                       CONFIGURATION
:: =================================================================
:: Set your timezone here. To find your timezone name, open Command
:: Prompt (cmd) and type this command: tzutil /l
:: =================================================================
set "TIMEZONE=India Standard Time"


:: --- Internal Variables (Do not change) ---
set "p=              "


:: 1. System Pre-Checks
net session >nul 2>&1
if %errorlevel% NEQ 0 (
    cls & echo. & echo.
    echo %p% +---------------------------------------------------------+
    echo %p% ^|                                                         ^|
    echo %p% ^|  [!] ERROR: Administrator access is required.           ^|
    echo %p% ^|      Please re-run the script as an Administrator.      ^|
    echo %p% ^|                                                         ^|
    echo %p% +---------------------------------------------------------+
    goto :exit_prompt
)

:check_internet_loop
ping -n 1 -w 3000 www.google.com >nul
if %errorlevel% EQU 0 ( goto :sync_process ) else ( goto :internet_error )

:internet_error
    cls & echo. & echo.
    echo %p% +---------------------------------------------------------+
    echo %p% ^|                                                         ^|
    echo %p% ^|  [!] ERROR: No internet connection was found.           ^|
    echo %p% ^|      Please connect to the internet and try again.      ^|
    echo %p% ^|                                                         ^|
    echo %p% +---------------------------------------------------------+
    echo.
    choice /C 12 /N /M "%p%           Press [1] to Retry, or [2] to Exit: "
    if %errorlevel% equ 2 goto :exit_prompt
    if %errorlevel% equ 1 goto :perform_retry
    
:perform_retry
    cls & echo. & echo. & echo. & echo.
    echo %p%           Retrying connection, please wait...
    timeout /t 2 /nobreak >nul
    goto :check_internet_loop


:: 2. Main Synchronization Process
:sync_process
cls & echo. & echo.
echo %p% +---------------------------------------------------------+
echo %p% ^|                                                         ^|
echo %p% ^|  Now syncing time for "%TIMEZONE%"...   ^|
echo %p% ^|  Please wait a moment.                                  ^|
echo %p% ^|                                                         ^|
echo %p% +---------------------------------------------------------+

:: Forceful Update Logic
net stop w32time >nul 2>&1
w32tm /unregister >nul
w32tm /register >nul
net start w32time >nul 2>&1
tzutil /s "%TIMEZONE%" >nul
w32tm /config /manualpeerlist:"time.windows.com time.nist.gov time.google.com",0x1 /syncfromflags:manual /reliable:YES /update >nul
w32tm /resync /force >nul


:: 3. Final Confirmation
echo.
echo %p% +---------------------------------------------------------+
echo %p% ^|                                                         ^|
echo %p% ^|  [+] Your time has been updated successfully!           ^|
echo %p% ^|                                                         ^|
echo %p% +---------------------------------------------------------+
goto :exit_prompt


:: 4. Common Exit Prompt
:exit_prompt
echo. & echo.
echo %p% -------------------------------------------------
echo %p%           Press any key to exit...
pause >nul
exit /b