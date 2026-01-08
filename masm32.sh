#!/bin/bash
# masm32.sh - 在 macOS 上模拟 WIN32.bat 环境

echo "启动 MASM 32位开发环境..."
arch -x86_64 wine cmd /k "set PATH=Z:\Volumes\study\MASM;Z:\Volumes\study\MASM\bin;%PATH%"
