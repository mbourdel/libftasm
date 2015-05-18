# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 19:23:20 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 19:39:43 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_isalnum		;ft_isalnum(int c)
	extern	_ft_isalpha		;dependence
	extern	_ft_isdigit		;dependence

_ft_isalnum:
	push	rdi				;save rdi addr
	call	_ft_isalpha
	test	rax,	rax
	jne		true			;is alpha
	call	_ft_isdigit
	test	rax,	rax
	jne		true			;is digit
	jmp		false

true:
	mov		rax,	1		;is alnum ret(1)
	jmp		end

false:
	mov		rax,	0		;is not alnum ret(0)
	jmp		end

end:
	pop		rdi				;restore rdi addr
	ret
