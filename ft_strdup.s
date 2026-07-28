DEFAULT REL

extern malloc
extern ft_strlen
extern ft_strcpy

section .text
    global ft_strdup

ft_strdup:
    push rbx
    mov rbx, rdi
    call ft_strlen
    mov rdi, rax
    inc rdi
    call malloc wrt ..plt
    cmp rax, 0
    je .error
    mov rdi, rax
    mov rsi, rbx
    call ft_strcpy
    pop rbx
    ret

.error:
    mov rax, 0
    pop rbx
    ret