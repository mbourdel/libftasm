# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 20:49:16 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 22:12:28 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_toupper		;ft_toupper(int c)

section	.text

_ft_toupper:
	cmp		rdi,	97
	jl		end				;not min
	cmp		rdi,	122
	jg		end				;not min
	sub		rdi,	32		;toupper

end:
	ret
