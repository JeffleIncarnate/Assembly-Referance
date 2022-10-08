global _start


section .data
    usr_msg db 'Please enter your name: '
    len_usr_msg equ $ - usr_msg
    disp_msg db 'Your name is: '
    len_disp_msg equ $ - disp_msg

section .bss 
    name resb 5

section .text
_start:
    mov eax, 4
    mov ebx, 1
    mov ecx, usr_msg
    mov edx, len_usr_msg
    int 0x80

    mov eax, 3
    mov ebx, 2
    mov ecx, name
    mov edx, 5
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, disp_msg
    mov edx, len_disp_msg
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, 5
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80