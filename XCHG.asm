;交换指令：XCHG
; 将原操作数和目的操作数进行内容的互换
include io32.inc
    .data
num byte 6,7,7,8,3,0,0,0
tab   byte '67783000'

.code
start :
    mov  ecx, lengthof num ;ECX=变量NUM的长度(字节个数)
    mov  esi, offset num
    mov  edi, offset tab

again:                      ;循环结构，循环次数有ECX决定，所以有mov ecx,lengthof num
        mov  al,    [esi] ;al 获得变量NUM的一个数字
        xchg al,    [edi] ;交换AL等于变量TAB对应的字符
        mov  [esi], al    ;保存回变量NUM原位置
        call dispc        ;显示AL中的字符
        add  esi,   1     ;指向下一个数字
        add  edi,   1     ;指向以一个字符
        loop again        ;循环处理
    xchg eax,eax
    nop

    exit 0
    end  start