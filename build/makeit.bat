echo off
REM Build a stand-alone executable
REM Assumes that root of project is mounted at root of c drive

c:\tools\bascom c:\source\bclonejr.bas ,,, /W /O
IF ERRORLEVEL 2 GOTO EXIT
C:\tools\link bclonejr ,,,c:\tools\bascom20.lib

:EXIT
EXIT /b %ERRORLEVEL%
