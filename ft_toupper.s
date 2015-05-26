global	_ft_toupper		;ft_toupper(int c)

section	.text

_ft_toupper:
	mov		rax,	rdi
	cmp		rdi,	97
	jl		end				;not min
	cmp		rdi,	122
	jg		end				;not min
	sub		rax,	32		;toupper

end:
	ret
