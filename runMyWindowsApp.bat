echo OFF
mode con:cols=120 lines=50
color 1E
SET /a "counter=1"
:start
CLS
echo counter is: %counter%
CALL :playApp
set /a "counter = %counter% + 1"
goto :start
PAUSE
echo this should not have happened :(

:playApp
echo OFF
CALL :mainDisplay 
SET /P input=Please enter a value: 
if %input% == 0 CALL :busyCTRL
if %input% == 1 CALL :triggerPCStats
if %input% == 2 CALL :triggerNumLock
if %input% == 9 EXIT
EXIT /B 0

:mainDisplay 
echo OFF
echo Today is %DATE%
echo Choose from the following options:
echo [0] keep windows busy with CTRL button
echo [1] PC stats
echo [2] numLockTrigger
echo [3] _empty
echo [9] terminate
EXIT /B 0

:busyCTRL
START CALL busyCTRL.bat
EXIT /B 0

:triggerPCStats
START CALL triggerPCStats.bat
EXIT /B 0

:triggerNumLock
START CALL triggerNumLock.bat
EXIT /B 0