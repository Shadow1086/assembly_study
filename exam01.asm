include io32.inc
    .data 
    num1 qword 1234567890ABCDEFh    ;定义64位数，低32位在前，高32位在后
    num2 qword 1111111111111111h

    .code
start : 
    mov eax dword ptr [num1]        ;   1.去除num1 的低32位和高32位，低32位放入EAX
    mov edx dword ptr [num1+4]      ;   高32位放入EDX
    add eax,dword ptr [num2]        ;   低位直接相加，eax = eax+num2低位

    add edx,dword ptr[num2+4]

    mov dword ptr[num1],eax
    mov dword ptr [num1+4],edx

    call disprd
    exit 0
    end start