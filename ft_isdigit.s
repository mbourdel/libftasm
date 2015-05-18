# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 19:12:38 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 22:31:44 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_isdigit			;ft_isdigit(int c)

section	.text

_ft_isdigit:
	cmp		rdi,	48
	jl		false			;if c < '0'

sup_zero:
	cmp		rdi,	57		;if c > '9'
	jg		false

true:
	mov		rax,	1		;is digit ret(1)
	jmp		end

false:
	mov		rax,	0		;is not digit ret(0)

end:
	ret
