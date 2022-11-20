REM triggerNumLock.bat
REM :triggerNumLock
color 1E
mode con:cols=120 lines=50
echo off
del *.exe
cls
echo on
gcc -o triggerNumLock triggerNumLock.c
.\triggerNumLock.exe