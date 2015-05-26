global	_ft_tolower		;ft_tolower(int c)

section	.text

_ft_tolower:
	mov		rax,	rdi
	cmp		rdi,	65
	jl		end				;not min
	cmp		rdi,	90
	jg		end				;not min
	add		rax,	32		;tolower

end:
	ret
