global	_ft_memcpy			;void	*ft_memcpy(void *dest, const void *src, size_t n)

section	.text

_ft_memcpy:
	mov		rcx,	rdx
	rep		movsb
	mov		rax,	rdi
	ret
