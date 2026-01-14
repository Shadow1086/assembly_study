include io32.inc 
.data 
Arr dword 10,20,30,40,50
len equ ($-Arr)/4       ;计算数组长度
Sum dword ?

.code 
start :
    mov ecx,len         ;使用ecx来存储循环次数，每次循环减少一
    lea esi,Arr         ;将Arr数组开头地址传给esi
    xor eax,eax         ;EAX清零，用来做累加器

MyFunc :
    add eax,[esi]       ;将数组中的元素添加给eax,即Sum
    add esi,4           ;将esi后移四位，即数组下标加一
    loop MyFunc         ;结束循环，ECX减一，如果不为0则继续循环

    mov Sum,eax         ;存储结果
    ret
    WriteRegDword    ; 显示所有寄存器
    WriteCrlf        ; 换行
    call dispmsg
    exit 0
    end start