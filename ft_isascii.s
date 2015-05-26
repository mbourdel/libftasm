global	_ft_isascii		;ft_isacii(int c)

section	.text

_ft_isascii:
	cmp		rdi,	127
	jg		false			;c > 127
	cmp		rdi,	0
	jl		false			;c < 0

true:
	mov		rax,	1		;is ascii ret(1)
	jmp		end

false:
	mov		rax,	0		;is not ascii ret(0)

end:
	ret
