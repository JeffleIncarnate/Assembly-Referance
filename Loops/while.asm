global _start

section .text
_start:
    mov eax, 4
    mov ebx, 1
    int 0x80 

section .bss
    yes resb 5