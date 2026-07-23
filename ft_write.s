DEFAULT REL

extern __errno_location

section .text
    global ft_write

ft_write:
    mov rax, 1
    syscall
    cmp rax, 0
    jl .error
    ret

.error:
    push rbx
    neg rax
    mov ebx, eax
    call __errno_location wrt ..plt
    mov [rax], ebx
    pop rbx
    mov rax, -1
    ret