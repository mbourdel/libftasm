global	_ft_strdup			;char	*ft_strdup(char *str)
extern	_ft_strlen
extern	_malloc
extern	_ft_memcpy

section .text

_ft_strdup:
	mov		r8,		rdi
	mov		rax,	0
	call	_ft_strlen
	mov		r9,		rax
	mov		rdi,	rax
	inc		rdi
	call	_malloc
	cmp		rax,	0
	je		fail
	mov		rdi,	rax
	mov		rsi,	r8
	mov		rdx,	r9
	call	_ft_memcpy
	mov		[rax + r9],	byte 0
	ret

fail:
	mov		rax,	0
	ret	
