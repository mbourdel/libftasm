/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/29 14:26:52 by mbourdel          #+#    #+#             */
/*   Updated: 2015/06/01 23:08:16 by mbourdel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "libfts.h"

int		main()
{
	int		i;
	char	str1[100] = "Toto a tres faim\0";
	char	str2[100] = " mais il est gentil\0";
	char	empty[14] = "i'm empty?\0";


	/*	 bzero test 	*/
	/*------------------*/

	printf("ft_bzero test:\t\t");
	ft_bzero(empty, 13);
	i = 0;
	while (empty[i] == '\0' && i < 13)
		i++;
	if (i < 13)
		printf("X\n");
	else
		printf("GG\n");
	
	/*		isalpha		*/
	/*------------------*/

	printf("ft_isalpha test:\t\t");
	i = 0;
	while (i < 128)
	{
		if (ft_isalpha((char)i) != isalpha((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		printf("X\n");
	else
		printf("GG\n");

	/*		isdigit		*/
	/*------------------*/

	printf("ft_isdigit test:\t\t");
	i = 0
	while (i < 128)
	{
		if (ft_isdigit((char)i) != isdigit((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		printf("X\n");
	else
		printf("GG\n");


	/*		isalnum		*/
	/*------------------*/

	printf("ft_isalnum test:\t\t");
	i = 0
	while (i < 128)
	{
		if (ft_isalnum((char)i) != isalnum((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		printf("X\n");
	else
		printf("GG\n");

	/*		isascii		*/
	/*------------------*/

	printf("ft_isascii test:\t\t");
	i = 0
	while (i < 128)
	{
		if (ft_isascii((char)i) != isascii((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		printf("X\n");
	else
		printf("GG\n");


	/*		isprint		*/
	/*------------------*/

	printf("ft_isprint test:\t\t");
	i = 0
	while (i < 128)
	{
		if (ft_isprint((char)i) != isprint((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		printf("X\n");
	else
		printf("GG\n");


	/*		tolower		*/
	/*------------------*/

	printf("ft_tolower test:\t\t");
	i = 0
	while (i < 128)
	{
		if (ft_tolower((char)i) != tolower((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		printf("X\n");
	else
		printf("GG\n");


	/*		toupper		*/
	/*------------------*/

	printf("ft_toupper test:\t\t");
	i = 0
	while (i < 128)
	{
		if (ft_toupper((char)i) != toupper((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		printf("X\n");
	else
		printf("GG\n");


		return ;

}
