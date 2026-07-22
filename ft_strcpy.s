DEFAULT REL

section .text
	global ft_strcpy

ft_strcpy:
	mov	rdx, rdi
.loop:
	mov	cl, byte [rsi]
	mov	byte [rdi], cl
	cmp	cl, 0
	je	.done
	inc	rsi
	inc	rdi
	jmp	.loop

.done:
	mov	rax, rdx
	ret