global _start

_start:
    sub esp, 4                ; alocate 4 bytes on the stack
    mov [esp], byte 'H'       ; Move the byte 'H' to esp where esp = pointer
    mov [esp+1], byte 'e'     ; Move the byte 'e' to esp where esp = pointer
    mov [esp+2], byte 'y'     ; Move the byte 'y' to esp where esp = pointer
    mov [esp+3], byte '!'     ; Move the byte '!' to esp where esp = pointer

    ; perform sys_write
    mov eax, 4                ; sys_write call
    mov ebx, 1                ; std_out file descriptor
    mov ecx, esp              ; pointer to byte 
    mov edx, 4                ; number of bytes to write    
    int 0x80                  ; perform system call

    mov eax, 1                ; sys_exit system call
    mov ebx, 0                ; exit status 0
    int 0x80                  ; perform system call