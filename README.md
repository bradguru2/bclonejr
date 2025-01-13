# bclonejr
Breakout Clone for PCjr.  It is written purely in BASIC.

![image](https://github.com/user-attachments/assets/f87909ef-b7bd-4213-8925-615be3034574)


## Source
Breakout for PCjr was written in Basic and is compatible with:
* Tandy 1000 GW-Basic
* PCjr cartridge basic
* PC-BASIC (get it here: https://robhagemans.github.io/pcbasic/)
  * Executes basic programs on native operating system

## Binaries
* You are free to download: https://github.com/bradguru2/bclonejr/blob/main/binaries/bclonejr.zip
* The caveat is that bclonejr.exe will run only on a PCjr
* In order to run **bclonejr.exe**, I recommend running it in **DOSBOS-X** with a **PCjr** configuration: https://dosbox-x.com/

## Building the project
* Please see https://github.com/bradguru2/bclonejr/blob/main/tools/TOOLS.md for the tools needed to build the executable
* Be sure to download DOSBOS-X: https://dosbox-x.com/
* Download SFK: http://stahlworks.com/swiss-file-knife.html which is a very useful utility program
* Run "buildit.bat"
  * It will call out to DOSBOX-X to execute the "build\makeit.bat" for creating the executable
  * After that it will use SFK to create a zip of the binary and source file

### Project Structure
* source folder contains the source
* build folder holds the script for creating the executable, holding temporary artifacts, provides manifest.txt for SFK ZIP utiliity so that correct things get put into the zip
* binaries folder contains the zip file produced by the build
* buildit.bat is at the root of the project and orchestrates the build


