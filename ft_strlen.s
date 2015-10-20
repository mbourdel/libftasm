global	_ft_strlen			;size_t		ft_strlen(const char *str)

section .text

_ft_strlen:
		push	rdi
		mov		rcx, -1
		xor		al, al
		cld
		repne	scasb
		mov		rax, -2
		sub		rax, rcx
		pop		rdi
		ret
		
;global	_ft_strlen			;size_t		ft_strlen(const char *str)
;
;section	.text
;
;_ft_strlen:
;	push	rdi
;	cmp		rdi,	0
;	je		null
;	mov		rcx,	0
;	not		rcx
;	xor		al,		al
;	repne	scasb
;
;end:
;	not		rcx
;	dec		rcx
;	mov		rax,	rcx
;	pop		rdi
;	ret
;
;null:
;	mov		rax,	0
;	pop		rdi
;	ret
;
