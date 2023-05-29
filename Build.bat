@ECHO OFF

REM // delete some intermediate assembler output just in case
IF EXIST Bass.gen del Bass.gen
IF EXIST Bass.gen goto LABLERROR3
IF EXIST Bass.p del Bass.p
IF EXIST Bass.p goto LABLERROR2
IF EXIST Bass.h del Bass.h
IF EXIST Bass.h goto LABLERROR1

REM // run the assembler
REM // '-xx' shows the most detailed error output
REM // '-q' shuts up AS
REM // '-c' outputs a shared file (Bass.h)
REM // '-A' gives us a small speedup
REM // '-U' forces case-sensitivity
REM // '-L' listing to file
REM // '-i .' allows (b)include paths to be absolute
set AS_MSGPATH=Win32/as
set USEANSI=n

REM // allow the user to choose to print error messages out by supplying the -pe parameter
"Win32/as/asw.exe" -xx -q -c -A -L -U -i . Bass.asm
IF NOT EXIST Bass.p pause & exit

"Win32/s1p2bin" Bass.p Bass.gen Bass.h
IF EXIST Bass.p del Bass.p
IF EXIST Bass.h del Bass.h

IF NOT EXIST Bass.gen pause & exit

REM // generate debug information
"Win32/convsym.exe" Bass.lst Bass.gen -a -input as_lst

REM // "Win32/rompad.exe" Bass.gen 255 0

REM // fix the rom header (checksum)
"Win32/fixheader.exe" Bass.gen

REM // remove the fake error about Bass.h
exit /b

:LABLERROR1
echo Failed to build because write access to Bass.h was denied.
pause & exit
:LABLERROR2
echo Failed to build because write access to Bass.p was denied.
pause & exit
:LABLERROR3
echo Failed to build because write access to Bass.gen was denied.
pause
