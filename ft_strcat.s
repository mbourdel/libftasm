# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/18 22:46:56 by mbourdel          #+#    #+#              #
#    Updated: 2015/05/18 23:32:36 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

global	_ft_strcat			;ft_strcat(const char *s1, const char *s2)

section	.text

_ft_strcat:
	push	rdi				;save rdi addr (s1)
	push	rsi				;save rsi addr (s2)

src_end:
	cmp		rdi,	0
	je		dkfgdfngfd
	
