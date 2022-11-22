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
if %input% == 1  CALL :busyCTRL
if %input% == 2  CALL :triggerPCStats
if %input% == 3  CALL :triggerNumLock
if %input% == 4  CALL :checkDiskStatusHealth
if %input% == 5  CALL :getPCISlotInfo
if %input% == 6  CALL :getOSVersion
if %input% == 7  CALL :getExecutablesOfAllProcess
if %input% == 8  CALL :getProductId
if %input% == 9  CALL :getBiosVersion
if %input% == 10 CALL :getprocessIdByEditingthis
if %input% == 11 CALL :getNumberOfCores
if %input% == 12 CALL :getListOfInstalledApplication
if %input% == 13 CALL :getBiosSerial
if %input% == 0 EXIT
EXIT /B 0

:mainDisplay 
echo OFF
echo Today is %DATE%
echo Choose from the following options:
echo [1]  keep windows busy with CTRL button
echo [2]  PC stats
echo [3]  numLockTrigger
echo [4]  checkDiskStatusHealth
echo [5]  getPCISlotInfo
echo [6]  getOSVersion
echo [7]  getExecutablesOfAllProcess
echo [8]  getProductId
echo [9]  getBiosVersion
echo [10] getprocessIdByEditingthis
echo [11] getNumberOfCores
echo [12] getListOfInstalledApplication
echo [13] getBiosSerial
echo [0] terminate
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

:checkDiskStatusHealth
START CALL checkDiskHealthAndStatus.bat
EXIT /B 0

:getPCISlotInfo
START CALL getPCISlotInfo.bat
EXIT /B 0

:getOSVersion
START CALL getOSVersion.bat
EXIT /B 0

:getExecutablesOfAllProcess
START CALL getExecutablesOfAllProcess.bat
EXIT /B 0

:getProductId
START CALL getProductId.bat
EXIT /B 0

:getBiosVersion
START CALL getBiosVersion.bat
EXIT /B 0

:getprocessIdByEditingthis
START CALL getprocessIdByEditingthis.bat
EXIT /B 0

:getNumberOfCores
START CALL getNumberOfCores.bat
EXIT /B 0

:getListOfInstalledApplication
START CALL getListOfInstalledApplication.bat
EXIT /B 0

:getBiosSerial
START CALL getBiosSerial.bat
EXIT /B 0
