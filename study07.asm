;eg0305.asm
	include io32.inc
	.data
bvar byte 12h, 34h
	org $+10
array	word 1,2,3,4,5,6,7,8,9,10
wvar     word 5678h
arr_size = $-array
arr_len  = arr_size/2
dvar     dword 9abcdef0h
    .code
start:
    mov eax,type wvar ;返回2，word类型
    mov ebx,type dvar ;返回4，dword类型
    mov ecx,lengthof array ;返回数组长度

    call disprd
    exit 0
    end start