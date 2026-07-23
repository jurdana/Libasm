DEFAULT REL

section .text
	global ft_strcmp

ft_strcmp:

.loop:
	mov cl, byte [rsi]
	cmp cl, byte [rdi]
	jne .done
	cmp cl, 0
	je .done
	inc rsi
	inc rdi
	jmp .loop

.done:
	mov al, byte [rdi]
	sub al, cl
	ret