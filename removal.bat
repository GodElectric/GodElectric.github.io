@echo off
rem task
    :task
    taskkill /f /im explorer.exe
    timeout 3 /nobreak > nul
    explorer
exit
rem 0