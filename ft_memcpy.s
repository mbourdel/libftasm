global	_ft_memcpy			;void	*ft_memcpy(void *dest, const void *src, size_t n)

section	.text

_ft_memcpy:
	push	rsi
	mov		r8,		rdi
	mov		rcx,	rdx
	cld
	rep		movsb
	mov		rax,	r8
	pop		rsi
	ret
