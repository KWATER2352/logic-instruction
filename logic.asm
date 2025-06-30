section .data
   

section .bss
    operand resb 1  

section .text
global _start

_start:
    
    mov byte [operand], 0xFF

    
    mov al, [operand]
    xor al, al
    mov [operand], al

 
    mov eax, 1      
    xor ebx, ebx   
    int 0x80
