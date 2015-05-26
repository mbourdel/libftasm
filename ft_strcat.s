global	_ft_strcat			;ft_strcat(char *s1, const char *s2)

section	.text

_ft_strcat:
	mov		rcx,		0
	mov		rdx,		0

src_end:
	cmp		rdi,		0
	je		cat
	cmp	byte[rdi+rcx],	0
	je		cat
	inc		rcx
	jmp		src_end

cat:
	cmp		rsi,		0
	je		end
	cmp	byte[rsi+rdx],	0
	je		end
	mov		r8,			[rsi+rdx]
	mov		[rdi+rcx],	r8
	inc		rdx
	inc		rcx
	jmp		cat

end:
	mov		r8,			0
	mov		[rdi+rcx],	r8
	mov		rax,		rdi
	ret
