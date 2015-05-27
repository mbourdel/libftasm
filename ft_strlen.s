global	_ft_strlen			;size_t		ft_strlen(const char *str)

section	.text

_ft_strlen:
	cmp		rdi,	0
	je		null
	mov		rcx,	0
	not		rcx
	xor		al,		al
	repne	scasb

end:
	not		rcx
	dec		rcx
	mov		rax,	rcx
	ret

null:
	mov		rax,	0
	ret
