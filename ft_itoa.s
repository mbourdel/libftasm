global	_ft_itoa			;char	*ft_itoa(int nbr)
extern	_ft_intlen
extern	_ft_strdup

section .data

buffer		db	"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0", 0x0a

section .text

_ft_itoa:
	push	rbp
	mov		rbp,	rsp
	xor		rax,	rax
	lea		rsi,	[rel buffer]
	push	rsi
	push	rdi

len:
	call	_ft_intlen
	pop		rdi
	mov		r9,		rax
	lea		r10,	[rel buffer]
	add		r10,	r9
	mov		byte[r10],	0
	dec		r9

tobuffer:
	xor		r8,		r8
	test	edi,	edi
	jns		buffloop
	mov		byte[rel buffer],	45
	inc		r8
	neg		edi

buffloop:
	cmp		edi,	10
	jnge	last
	mov		eax,	edi
	xor		rdx,	rdx
	mov		r11d,	10
	div		r11d
	lea		r10,	[rel buffer]
	add		r10,	r9
	add		dl,		48
	mov		byte[r10],	dl
	dec		r9
	mov		edi,	eax
	jmp		buffloop

xlast:
	add		edi,	48
	mov		[rel buffer + 1],	dil
	jmp		dup

last:
	cmp		r8,		1
	je		xlast
	add		edi,	48
	mov		[rel buffer],	dil

dup:
	pop		rdi
	call	_ft_strdup

end:
	mov		rsp,	rbp
	pop		rbp
	ret
