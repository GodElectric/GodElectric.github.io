@echo off
rem I think of it as a virus that a normal person simply cannot remove
set end=0
start "" "start_.vbs"
set /p end=Go to bed, and with PC (n/y)
if %end% == n exit
start "" "WinNTuser.bat"
rem I'm not serious :D
