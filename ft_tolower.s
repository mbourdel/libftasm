# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 22:36:17 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 22:37:25 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_tolower		;ft_tolower(int c)

section	.text

_ft_tolower:
	cmp		rdi,	65
	jl		end				;not min
	cmp		rdi,	90
	jg		end				;not min
	add		rdi,	32		;tolower

end:
	ret
