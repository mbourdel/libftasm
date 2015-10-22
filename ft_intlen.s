global	_ft_intlen			;size_t		ft_intlen(int nbr)

section .text

_ft_intlen:
	push	rbp
	mov		rbp,	rsp
	mov		rax,	0
	cmp		rdi,	0
	jnge	negative

positive:
	inc		rax
	cmp		rdi,	10

	

negative:
	mov		rax,	1
	neg		rax
	jump	positive
	
