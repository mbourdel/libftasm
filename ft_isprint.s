# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 20:41:23 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 20:48:18 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isprint		;ft_print(int c)

_ft_isprint:
	push	rdi				;save rdi addr
	cmp		rdi,	32
	jl		false			;c < 32
	cmp		rdi,	126
	jg		false			;c > 126
	jmp		true			;c is print

false:
	mov		rax,	0		;is not print ret(0)
	jmp		end

true:
	mov		rax,	1		;is print ret(1)
	jmp		end

end:
	pop		rdi				;restore rdi addr
	ret
