@echo off
REM build32.bat - 编译链接32位汇编程序
REM 用法: build32.bat 文件名（不带.asm扩展名）

if "%1"=="" (
    echo 用法: build32.bat 文件名
    goto end
)

echo 正在汇编 %1.asm ...
bin\ML /c /coff /Fl %1.asm
if errorlevel 1 goto error

echo 正在链接 %1.obj ...
bin\LINK32 /subsystem:console %1.obj io32.lib
if errorlevel 1 goto error

echo.
echo 编译成功！生成 %1.exe
echo.
goto end

:error
echo.
echo 编译失败！
echo.

:end
