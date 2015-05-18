# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 19:45:21 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 19:54:04 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isascii		;ft_isacii(int c)

_ft_isascii:
	push	rdi				;save rdi addr
	cmp		rdi,	127
	jg		false			;c > 127
	cmp		rdi,	0
	jl		false			;c < 0
	jmp		true

false:
	mov		rax,	0		;is not ascii ret(0)
	jmp		end

true:
	move	rax,	1		;is ascii ret(1)
	jmp		end

end:
	pop		rdi				;restore rdi addr
	ret
