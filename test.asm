section .data
    value1 db 0xF  ; example value
    value2 db 0x1  ; example value to test with

section .bss
    ; no uninitialized data needed for this task

section .text
global _start

_start:
    mov al, [value1]
    mov bl, [value2]

    ; Perform TEST operation
    test al, bl

    ; Setup exit based on ZF flag set by TEST
    jz exit_with_zero   ; Jump if zero flag is set (result of AND was zero)

continue_program:
    ; If TEST result is non-zero, continue the program (dummy operation)
    nop  ; No operation, just a placeholder

exit_with_zero:
    ; Exit the program
    mov eax, 1
    mov ebx, 0
    int 0x80
