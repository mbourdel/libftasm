%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT				1
%define WRITE				4

global	_ft_puts		;void	ft_puts(const char *str)

section	.text

_ft_puts:
	mov		r8,		rdi
	cmp		rdi,	0
	je		false
	cmp	byte[rdi],	0
	je		false
	mov		rdx,	0

len:
	cmp	byte[rdi+rdx],	0
	je		puts
	inc		rdx
	jmp		len

puts:
	mov		rdi,	STDOUT
	mov		rsi,	r8
	mov		rax, MACH_SYSCALL(WRITE)
	syscall
	leave
	ret

false:
	mov		rax,	-1
	ret
