DEFAULT REL

section .text
	global ft_strlen

ft_strlen:
    mov  rcx, rdi

.loop:
    cmp  byte [rdi], 0
    je   .done
    inc  rdi
    jmp  .loop

.done:
    sub  rdi, rcx
    mov  rax, rdi
    ret