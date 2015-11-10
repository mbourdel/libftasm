global	_ft_intlen			;size_t		ft_intlen(int nbr)

section .text

_ft_intlen:
	push	rbp
	mov		rbp,	rsp
	mov		r8d,		0
	test	edi,	edi
	js		negative

positive:
	inc		r8d
	cmp		edi,	10
	jnge	end
	mov		eax,	edi
	mov		edx,	0
	mov		r9d,	10
	div		r9d
	mov		edi,	eax
	jmp		positive
	
end:
	mov		eax,	r8d
	mov		rsp,	rbp
	pop		rbp
	ret

negative:
	inc		r8d
	neg		edi
	jmp		positive
	mov		r8d,	100
	jmp		end


; Only Work on 32-bit cause 64-bit sucks on asm
