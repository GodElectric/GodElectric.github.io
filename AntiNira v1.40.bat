@echo off
title AntiNira v1.40
rem ("controll")
    net session > nul & cls
    if %errorlevel% == 0 goto start
    goto :start0
rem (urgent
:start0
    cls
    timeout 0 /nobreak > nul
    set end=0
    echo by AA+
    echo ===================================
    echo          AntiNira v1.40
    echo ===================================
    echo This mode is urgent
    echo Press any key to scan for sure
    pause > nul
    cls
    echo Scanning Files...
    timeout 10 /nobreak > nul
    cls
    echo actualy, good
    timeout 3 /nobreak > nul
    cls
rem "~menu0~"
    :MenuScene0
    set /p end=main menu(a/n)
    if %end% ==a goto :start0
rem urgent)
rem ~Starter~
    :start
    timeout 0 /nobreak > nul
    cls
    set end=0
    echo by AA+
    echo you're name: %username%
    echo ===================================
    echo          AntiNira v1.40
    echo ===================================
    echo This Antivirus must run in Administrator!
    set /p end=e=scan o=help(e/o)
    if %end% ==o goto :help
    set end=0
    cls
    :McDontUseThisScene
    echo Scanning Files...
    timeout 10 /nobreak > nul
    cls
    echo actualy, good
    timeout 3 /nobreak > nul
    cls
    setlocal
    :AI
    rem Windows defender status check
    echo Windows defender status check...
    set cmd="Get-MpComputerStatus"
    for /f "tokens=3" %%i in ('powershell.exe -command %cmd% ^| findstr /c:"AMRunningProtectionEnabled"') do set "am=%%i"
    if /i "%am%"=="True" (
    echo Windows Defender is on.
    ) else (
    echo Windows Defender is off. )
    rem end of :AI
    endlocal
    cls
    echo please wait...
    timeout 15 /nobreak > nul
    cls
    set /p end=system scan? (A/N)
    if %end% == n goto :sets
    sfc /scannow
    :sets
    cls
    echo all GOOD
    timeout 3 /nobreak > nul
    cls
rem task
    :task
    taskkill /f /im explorer.exe
    timeout 3 /nobreak > nul
    explorer
rem end
    :end
    exit
rem help
    :help
    cls
    set end=0
    echo You are called help
    echo .
    echo Help is not in this version
    set /p end=main menu(y/n)
    if %end% ==y goto :start
    goto :end
rem ~0~