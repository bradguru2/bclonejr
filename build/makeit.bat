echo off
REM Build a stand-alone executable
REM Assumes that root of project is mounted at root of c drive

IF EXIST bclonejr.bas del bclonejr.bas
IF EXIST bclonejr.exe del bclonejr.exe
copy c:\source\bclonejr.bas .

c:\tools\bascom bclonejr.bas ,,, /W /O

IF ERRORLEVEL 2 GOTO FAILURE
C:\tools\link bclonejr ,,,c:\tools\bascom20.lib

:EXIT
IF EXIST errors.txt del errors.txt
EXIT 

:FAILURE
echo 2 > errors.txt
EXIT 2