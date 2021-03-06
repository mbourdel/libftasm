global	_ft_isalnum		;ft_isalnum(int c)
extern	_ft_isalpha		;dependence
extern	_ft_isdigit		;dependence

section	.text

_ft_isalnum:
	call	_ft_isalpha
	test	rax,	rax
	jne		true			;is alpha
	call	_ft_isdigit
	test	rax,	rax
	jne		true			;is digit

false:
	mov		rax,	0		;is not alnum ret(0)
	jmp		end

true:
	mov		rax,	1		;is alnum ret(1)

end:
	ret
