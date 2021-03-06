%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define	WRITE				4

global	_ft_putnbr			;void	ft_putnbr(int nbr)
extern	_ft_intlen

section .data

buffer		db	"\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0", 0x0a

section .bss

;buffer:
;	resb	512

section .text

_ft_putnbr:							;init
	push	rbp
	mov		rbp,	rsp
	push	rdi
	xor		rax,	rax
	lea		rsi,	[rel buffer]

len:								;set the len of the int
	call	_ft_intlen
	pop		rdi
	push	rax
	mov		r9,		rax
	dec		r9

tobuffer:							;prepare the buffer
	xor		r8,		r8
	test	edi,	edi
	jns		buffloop
	mov		byte[rel buffer],	45
	inc		r8
	neg		edi

buffloop:							;fill the buffer
	cmp		edi,	10
	jnge	last
	mov		eax,	edi
	xor		rdx,	rdx
	mov		r11d,	10
	div		r11d
	lea		r10,	[rel buffer]
	add		r10,	r9
	add		dl,		48
	mov		byte[r10],		dl
	dec		r9
	mov		edi,	eax
	jmp		buffloop

xlast:								;put the last number '-' case
	add		edi,	48
	mov		[rel buffer + 1],	dil
	jmp		print
	
last:								;put the last number '+' case
	cmp		r8,		1
	je		xlast
	add		edi,	48
	mov		[rel buffer],	dil

print:								;print into screen
	pop		rdx
	xor		rdi,	rdi
	xor		rax,	rax
	mov		rdi,	STDOUT
	mov		rax,	MACH_SYSCALL(WRITE)
	syscall

end:								;exit
	mov		rsp,	rbp
	pop		rbp
	ret
