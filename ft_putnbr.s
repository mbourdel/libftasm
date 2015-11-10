%define	MACH_SYSCALL(nb)	0x2000000 | nb
%define	STDOUT				1
%define	WRITE				4

global	_ft_putnbr			;void	ft_putnbr(int nbr)
extern	_ft_intlen

section .bss

buffer:
	.buf	resb 50

;buffer	resb	50
;buffer_len	equ	$-buffer

section .text

_ft_putnbr:
	push	rbp
	mov		rbp,	rsp
	push	rdi

len:
	call	_ft_intlen
	pop		rdi
	inc		eax
	push	rax
	mov		r9d,	eax

tobuffer:
	mov		r8,		1
	cmp		edi,	0
	jge		buffloop
	mov	byte[buffer],	45
	inc		r8
	neg		edi

buffloop:
	cmp		edi,	10
	jnge	last
	mov		eax,	edi
	mov		edx,	10
	div		edx
	add		edx,	48
	add		buffer,	r9d
	mov	byte[buffer],	edx
	sub		buffer,	r9d
	dec		r9d
	jmp		buffloop

xlast:
	add		edi,	48
	add		buffer,	1
	mov	byte[buffer],	edi
	pop		rsi
	jmp		print
	
last:
	cmp		r8,		1
	je		xlast
	add		edi,	48
	mov	byte[buffer],	edi
	pop		rsi

print:
	pop		rdx
	mov		edi,	STDOUT
	mov		eax,	MACH_SYSCALL(WRITE)
	syscall

end:
	mov		rsp,	rbp
	pop		rbp
	ret
