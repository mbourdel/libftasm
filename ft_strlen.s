global	_ft_strlen			;size_t		ft_strlen(const char *str)

section	.text

_ft_strlen:
	push	rdi
	cmp		rdi,	0
	je		null
	sub		rcx,	rcx
	not		rcx
	sub		al,		al
	cld
	repne	scasb

end:
	not		rcx
	dec		rcx
	mov		rax,	rcx
	pop		rdi
	ret

null:
	mov		rax,	0
	pop		rdi
	ret
