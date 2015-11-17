global	_ft_isspace					;int	ft_isspace(int c)

section .text

_ft_isspace:
	cmp		rdi,	32
	je		yes
	cmp		rdi,	9
	je		yes

no:
	mov		rax,	0
	ret

yes:
	mov		rax,	1
	ret
