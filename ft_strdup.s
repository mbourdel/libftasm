global	_ft_strdup			;char	*ft_strdup(char *str)
extern	_ft_strlen
extern	_malloc
extern	_ft_memcpy

section .text

_ft_strdup:
	push	rbp
	mov		rbp,	rsp
	
	push	rdi
	cmp		rdi,	0
	je		empty

len:
	call	_ft_strlen
	inc		rax
	push	rax

alloc:
	mov		rdi,	rax
	sub		rsp,	16
	call	_malloc
	add		rsp,	16
	test	rax,	rax
	je		fail

copy:
	mov		rdi,	rax
	pop		rdx
	pop		rsi
	call	_ft_memcpy
	mov		rsp,	rbp
	pop		rbp
	ret

empty:
	pop		rdi
	mov		rax,	0
	mov		rsp,	rbp
	pop		rbp
	ret

fail:
	pop		rdi
	mov		rax,	0
	mov		rsp,	rbp
	pop		rbp
	ret
