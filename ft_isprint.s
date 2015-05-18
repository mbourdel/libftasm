# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 20:41:23 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 22:26:20 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_isprint		;ft_print(int c)

section	.text

_ft_isprint:
	cmp		rdi,	32
	jl		false			;c < 32
	cmp		rdi,	126
	jg		false			;c > 126

true:
	mov		rax,	1		;is print ret(1)
	jmp		end

false:
	mov		rax,	0		;is not print ret(0)

end:
	ret
