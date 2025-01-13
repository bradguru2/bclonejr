@echo off
REM Is used to build the executable using dosbox-x emulator
REM Assumes the project root is the working directory
c:\dosbox-x\dosbox-x -fastlaunch -noautoexec -noconfig -noconsole -nogui -nolog -nomenu -c "mount c .  " -c "c:" -c "cd build" -c "makeit.bat"

IF EXIST .\build\errors.txt GOTO FAILURE

IF EXIST .\binaries\*.zip del .\binaries\*.zip
cd build
sfk zip ..\binaries\bclonejr.zip -flist manifest.txt -yes
cd ..

:EXIT
EXIT /b

:FAILURE
ECHO There were build failures
EXIT /b 2