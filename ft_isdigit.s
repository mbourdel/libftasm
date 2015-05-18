# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 19:12:38 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 19:18:37 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isdigit		;ft_isdigit(int c)

_ft_isdigit:
	push	rdi				;save rdi addr
	cmp		rdi,	48
	jge		sup_zero		;if c >= '0'
	jmp		false

sup_zero:
	cmp		rdi,	57		;if c > '9'
	jg		false
	jmp		true

false:
	mov		rax,	0		;is not digit ret(0)
	jmp		end

true:
	mov		rax,	1		;is digit ret(1)
	jmp		end

end:
	pop		rdi				;restore rdi addr
	ret
