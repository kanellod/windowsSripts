REM checkDiskHealthAndStatus.bat
echo on
WMIC disk drive get status
CHKDSK 