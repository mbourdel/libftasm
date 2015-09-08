global	_ft_strdup			;char	*ft_strdup(char *str)
extern	_ft_strlen
extern	_malloc
extern	_ft_memcpy

section .text

_ft_strdup:
	push	rdi
	cmp		rdi,	0
	je		empty
	call	_ft_strlen
	inc		rax
	mov		r8,		rax
	push	rax
	mov		rdi,	rax
	mov		rax,	4
	mul		r8
	push	rdi
	call	_malloc
	cmp		rax,	0
	je		fail
	mov		rdi,	rax
	add		esp,	[r8]
	pop		rdx
	pop		rsi
	sub		esp,	[r8]
	call	_ft_memcpy
	ret

empty:
	pop		rdi
	mov		rax,	0
	ret

fail:
	add		esp,	4
	pop		rdi
	mov		rax,	0
	ret


;_ft_strdup:
;	push	rdi
;	cmp		rsi,	0
;	je		fail
;	mov		rax,	0
;	call	_ft_strlen
;	inc		rax
;	mov		r9,		rax
;	mov		rdi,	rax
;	call	_malloc
;	cmp		rax,	0
;	je		fail
;	mov		rdi,	rax
;	pop		rsi
;	;push	rsi
;	mov		rcx,	r9
;	cld
;	rep		movsb
;	mov		[rdi],	byte 0
;	mov		rax,	r8
;	;pop		rdi
;	ret

;fail:
;	mov		rax,	0
;	pop		rdi
;	ret	
