@echo off
IF EXIST Bass.gen move /Y Bass.gen Bass.prev.gen >NUL
asm68k.exe /k /p /o ae- Bass.asm, Bass.gen >Errors.txt, Bass.sym, Bass.lst

convsym.exe Bass.sym Bass.gen -input asm68k_sym -a
fixheadr.exe Bass.gen