echo off
REM Build a stand-alone executable
REM Assumes that root of project is mounted at root of c drive

del bclonejr.bas
copy c:\source\bclonejr.bas .
c:\tools\bascom bclonejr.bas ,,, /W /O

IF ERRORLEVEL 2 GOTO EXIT
C:\tools\link bclonejr ,,,c:\tools\bascom20.lib

:EXIT
EXIT /b %ERRORLEVEL%
