%define MACH_SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define READ 3
%define WRITE 4
%define SIZE 0x200

global _ft_cat

section .bss
buffer:
	.buf resb SIZE

section .text
_ft_cat:
	push rbp
	mov rbp, rsp

init_data:
	; RDI contient le file descriptor
	mov rdx, SIZE ; size dans rdx (3 eme parametre)
	lea rsi, [rel buffer.buf]	; Mettre le ptr sur le buffer dans le 2 eme param

cat:
	push rdi ; Envoi de fd
	push rdx ; Envoi de size
	push rsi ; Envoi de ptr

	mov rax, MACH_SYSCALL(READ)
	syscall
	jc error

	mov rdi, STDOUT
	mov rdx, rax ; Mettre la size lu dans la size a afficher
	pop rsi ; Mettre ptr sur str

	push rsi ; Envoi ptr sur str
	push rax ; Envoi nb charactere read

	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc error

	pop rax
	pop rsi
	pop rdx
	pop rdi

	cmp rax, 0 ; Tant que Read ne retourne pas zero continuer la boucle
	jg cat

done:
	mov rsp, rbp
	pop rbp
	ret

error:
	mov rax, -1
	jmp done

;%define	MACH_SYSCALL(nb)	0x2000000 | nb
;%define READ				3
;
;%define	SIZE				0x200
;
;global	_ft_cat		;void		ft_cat(int fd)
;extern	_ft_puts
;
;section	.bss
;
;buffer:
;	.buf	resb	SIZE
;
;section	.text
;
;_ft_cat:
;	push	rbp
;	mov		rbp,	rsp
;
;init:
;	;mov		rdx,	SIZE
;	lea		rsi,	[rel buffer.buf]
;
;read:
;	push	rdi
;	;push	rdx
;	push	rsi
;
;	mov		rax,	MACH_SYSCALL(READ)
;	syscall
;	jc		fail
;	push	rax
;	pop		rsi
;	mov		rdi,	rsi
;	push	rsi
;	call	_ft_puts
;	jc		fail
;	pop		rax
;	pop		rsi
;	pop		rdi
;	cmp		rax,	0
;	jg		read
;
;end:
;	mov		rsp,	rbp
;	pop		rbp
;	ret
;
;fail:
;	mov		rax,	-1
;	jmp		end
