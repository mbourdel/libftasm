# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 20:49:16 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 21:05:08 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section	.text
	global	_ft_toupper		;ft_toupper(int c)

_ft_toupper:
	push	rdi				;save rdi addr
	cmp		rdi,	97
	jl		end				;not min
	cmp		rdi,	122
	jg		end				;not min
	sub		[rdi],	32		;toupper
	jmp		end

end:
	pop		rdi				;restore rdi addr
	ret
