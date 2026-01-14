;test01.asm - 32位Windows程序示例
	include io32.inc
	.data
	; 如果需要数据段，在此定义变量
	.code
start:
	; 使用32位寄存器（eax, ebx）而不是16位（ax, bx）
	mov eax,7788h
	mov ebx,eax
	
	exit 0		; 退出程序
	end start