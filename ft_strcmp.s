global	_ft_strcmp				;int	ft_strcmp(const char *s1, const char *s2)

section .text

_ft_strcmp:
	push	rdi
	push	rsi
	xor		rdx,	rdx
	xor		rax,	rax

loop:
	mov		al,		[rdi]
	mov		dl,		[rsi]
	cmp		al,		0
	je		end
	cmp		al,		dl
	jne		end
	inc		rdi
	inc		rsi
	jmp		loop

end:
	sub		rax,	rdx
	pop		rsi
	pop		rdi
	ret
