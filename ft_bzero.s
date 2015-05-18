# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/30 18:30:02 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 18:52:31 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global	_ft_bzero		;ft_bzero(void *s, size_t n)

_ft_bzero:
	push	rdi				;save rdi addr
	cmp		rdi,	0		;secure if rdi null
	jz		end
	mov		rcx,	rsi		;set n as counter
	jmp		loop_start

loop_start:					;while
	cmp		rcx,	0		;n > 0
	jz		end
	movb	rdi,	0		;s = 0 s++
	dec		rcx				;n--
	jmp		loop_start

end:
	pop		rdi				;restore rdi addr
	ret
