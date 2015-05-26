global	_ft_bzero		;ft_bzero(void *s, size_t n)

section .text

_ft_bzero:
	cmp		rdi,	0		;secure if rdi null
	jz		end
	mov		rcx,	rsi		;set n as counter

loop_start:					;while
	cmp		rcx,	0		;n > 0
	jz		end
	mov	byte[rdi],	0		;*s = 0
	inc		rdi
	dec		rcx				;n--
	jmp		loop_start

end:
	ret
