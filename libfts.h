/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/26 11:01:46 by mbourdel          #+#    #+#             */
/*   Updated: 2015/11/17 15:18:11 by mbourdel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

#include <stdlib.h>

void			ft_bzero(void *s, size_t size);
int				ft_isalpha(int c);
int				ft_isdigit(int c);
int				ft_isascii(int c);
int				ft_isprint(int c);
int				ft_isalnum(int c);
int				ft_tolower(int c);
int				ft_toupper(int c);
char			*ft_strcat(char *dest, const char *src);
int				ft_puts(const char *str);
size_t			ft_strlen(const char *str);
void			*ft_memset(void *b, int c, size_t len);
void			*ft_memcpy(void *dest, const void *src, size_t n);
char			*ft_strdup(char *str);
void			ft_cat(int fd);

size_t			ft_intlen(int nbr);
void			ft_putnbr(int nbr);
char			*ft_itoa(int nbr);
int				ft_strcmp(const char *s1, const char *s2);
int				ft_isspace(int c);

#endif
