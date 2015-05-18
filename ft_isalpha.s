# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/30 19:46:05 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 19:09:01 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global	_ft_isalpha		;ft_isalpha(int c)

_ft_isalpha:
	push	rdi				;save rdi addr
	cmp		rdi,	97
	jge		sup_a_min		;if c >= 'a'
	cmp 	rdi, 	65
	jge 	sup_a_maj		;if c >= 'A'
	jmp		false

sup_a_min:
	cmp 	rdi,	122		;if c > 'z'
	jg		false
	jmp		true

sup_a_maj:
	cmp		rdi,	90		;if c > 'Z'
	jg		false
	jmp		true

false:
	mov		rax,	0		;is not alpha ret(0)
	jmp		end

true:
	mov		rax,	1		;is alpha ret(1)
	jmp		end

end:
	pop		rdi				;restore rdi addr
	ret
