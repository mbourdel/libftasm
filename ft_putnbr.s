%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define	WRITE				4

global	_ft_putnbr			;void	ft_putnbr(int nbr)
extern	_ft_intlen

section .bss

;buffer:
;	.buf	resb 50

buffer	resb	512
;buffer_len	equ	$-buffer

section .text

_ft_putnbr:
	push	rbp
	mov		rbp,	rsp
	push	rdi
	xor		rax,	rax
	mov		r10,	[rel buffer]

len:
	call	_ft_intlen
	pop		rdi
	push	rax
	mov		[rel r9],		rax
	dec		byte[rel r9]

tobuffer:
	xor		r8,		r8
	test	edi,	edi
	jns		buffloop
	mov		byte[rel r10],	45
	inc		r8
	neg		edi

buffloop:
	cmp		edi,	10
	jnge	last
	mov		rax,	rdi
	xor		rdx,	rdx
	mov		r11,	10
	div		r11
	mov		[rel r10 + r9],	dl
	dec		byte[rel r9]
	jmp		buffloop

xlast:
	add		rdi,	48
	mov		[rel r10 + 1],		dil
	push	r10
	jmp		print
	
last:
	cmp		r8,		1
	je		xlast
	add		rdi,	48
	mov		[rel buffer],		dil
	push	r10

print:
	pop		rsi
	pop		rdx
	mov		rdi,	STDOUT
	mov		rax,	MACH_SYSCALL(WRITE)
	syscall

end:
	mov		rsp,	rbp
	pop		rbp
	ret
