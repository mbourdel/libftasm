global	_ft_intlen			;size_t		ft_intlen(int nbr)

section .text

_ft_intlen:
	push	rbp
	mov		rbp,	rsp
	mov		r8,		0
	cmp		rdi,	0
	js		negative

positive:
	inc		r8
	cmp		rdi,	10
	jnge	end
	mov		rax,	rdi
	mov		rdx,	0
	mov		r9,		10
	idiv	r9
	mov		rdi,	rax
	jmp		positive
	
end:
	mov		rax,	r8
	mov		rsp,	rbp
	pop		rbp
	ret

negative:
	inc		r8
	neg		rdi
	jmp		positive

