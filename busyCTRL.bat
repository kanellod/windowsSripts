:startBusyCTRL
color 1E
mode con:cols=120 lines=50
ECHO OFF
CLS
set /a "x = 1"
:printPrime
echo %x%
set /a "x = %x% + 1"
SLEEP 10s
GOTO :printPrime