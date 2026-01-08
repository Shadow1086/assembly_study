@echo off
REM make-asm.bat - 编译 asm 目录下的程序
REM 用法: make-asm.bat 文件名（不带.asm扩展名）

if "%1"=="" (
    echo 用法: make-asm.bat 文件名
    goto end
)

echo 正在汇编 asm\%1.asm ...
bin\ML /c /coff /Fl asm\%1.asm
if errorlevel 1 goto error

echo 正在链接 asm\%1.obj ...
bin\LINK32 /subsystem:console asm\%1.obj io32.lib
if errorlevel 1 goto error

echo.
echo 编译成功！生成 asm\%1.exe
echo.
goto end

:error
echo.
echo 编译失败！
echo.

:end
