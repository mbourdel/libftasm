global	_ft_memset		;void	*ft_memset(void *b, int c, size_t len)

section	.text

_ft_memset:
	mov		rcx,	rdx
	mov		rax,	rsi
	rep		stosb
	mov		rax,	rdi
	ret
