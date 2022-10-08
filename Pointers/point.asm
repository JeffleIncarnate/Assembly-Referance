global _start

section .data
    addr db "yellow"

section .text
_start:
    mov [addr], byte 'H'
    mov [addr+5], byte '!'
    mov eax, 4    ; sys_write call
    mov ebx, 1    ; standard output call
    mov ecx, addr ; set the bytes to write
    mov edx, 6    ; number of bytes to write
    int 0x80      ; System call

    mov eax, 1    ; sys_exit 
    mov ebx, 0    ; exit to status 0
    int 0x80      ; 