global	_ft_isdigit			;ft_isdigit(int c)

section	.text

_ft_isdigit:
	cmp		rdi,	48
	jl		false			;if c < '0'

sup_zero:
	cmp		rdi,	57		;if c > '9'
	jg		false

true:
	mov		rax,	1		;is digit ret(1)
	jmp		end

false:
	mov		rax,	0		;is not digit ret(0)

end:
	ret
