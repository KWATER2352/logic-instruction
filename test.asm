section .data
    value1 db 0xF 
    value2 db 0x1 

section .bss
    

section .text
global _start

_start:
    mov al, [value1]
    mov bl, [value2]

    test al, bl

    jz exit_with_zero   

continue_program:
 
    nop  

exit_with_zero:

    mov eax, 1
    mov ebx, 0
    int 0x80

