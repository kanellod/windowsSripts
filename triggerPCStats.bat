:start
color 1E
mode con:cols=120 lines=50
CLS
cmd /c net user %username% /domain |more
timeout 30
CLS
ipconfig /all
timeout 30
CLS
ipconfig /all findstr DNS
timeout 30
CLS
ipconfig /displaydns
timeout 30
CLS
powercfg /energy
timeout 30
cls
assoc
timeout 30
CLS
REM chkdsk
REM sfc /scannow
REM DISM /Online /Cleanup-Image
REM DISM /Online /Cleanup-Image /RestoreHealth
tasklist | findstr script
REM taskkill /f /pid 76987596586
timeout 30
CLS
netsh wlan
timeout 30
CLS
netstat
timeout 30
cls
route print
timeout 30
CLS
REM shutdown /r /fw /f /t 0 REM restart into system BIOS!!!!
timeout 30

CLS
goto :start