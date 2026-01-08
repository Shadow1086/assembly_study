@echo off
REM make16.bat, for assembling and linking 16-bit DOS programs (.EXE)
BIN\ML /c /Fl %1.asm
if errorlevel 1 goto terminate
BIN\LINK16 %1.obj;
if errorlevel 1 goto terminate
DIR %1.*
:terminate
@echo on