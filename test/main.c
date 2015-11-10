/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/29 14:26:52 by mbourdel          #+#    #+#             */
/*   Updated: 2015/11/10 17:40:41 by mbourdel         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include <ctype.h>
#include <errno.h>
#include "../libfts.h"
#define WHITE "\x1B[0;47m"
#define CLRNC "\x1B[0m"

void	succes()
{
	ft_puts("[\x1B[0;32msucces\x1B[0m]\n");
}

void	failure()
{
	ft_puts("[\x1B[0;31mfail\x1B[0m]\n");
}

int		main()
{
	int		i;
	char	str1[100] = "Toto a tres faim\0";
	char	str2[100] = " mais il est gentil\0";

	ft_puts("\n\n");
	ft_puts("[==================================]\n");
	ft_puts("#++++++++++++++++++++++++++++++++++#\n");
	ft_puts("#              LIBASM              #\n");
	ft_puts("#              Tester              #\n");
	ft_puts("#++++++++++++++++++++++++++++++++++#\n");
	ft_puts("[==================================]\n\n");


	/*	 bzero test 	*/
	/*------------------*/

	char	*empty;
	ft_puts("ft_bzero test:\t\t");
	empty = strdup("toto yaya");
	ft_bzero(empty, 10);
	i = 0;
	while (empty[i] == '\0' && i < 9)
		i++;
	if (i < 9)
		failure();
	else
		succes();
	free(empty);
	
	/*		isalpha		*/
	/*------------------*/

	ft_puts("ft_isalpha test:\t");
	i = 0;
	while (i < 128)
	{
		if (ft_isalpha((char)i) != isalpha((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		failure();
	else
		succes();

	/*		isdigit		*/
	/*------------------*/

	ft_puts("ft_isdigit test:\t");
	i = 0;
	while (i < 128)
	{
		if (ft_isdigit((char)i) != isdigit((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		failure();
	else
		succes();


	/*		isalnum		*/
	/*------------------*/

	ft_puts("ft_isalnum test:\t");
	i = 0;
	while (i < 128)
	{
		if (ft_isalnum((char)i) != isalnum((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		failure();
	else
		succes();

	/*		isascii		*/
	/*------------------*/

	ft_puts("ft_isascii test:\t");
	i = 0;
	while (i < 128)
	{
		if (ft_isascii((char)i) != isascii((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		failure();
	else
		succes();


	/*		isprint		*/
	/*------------------*/

	ft_puts("ft_isprint test:\t");
	i = 0;
	while (i < 128)
	{
		if (ft_isprint((char)i) != isprint((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		failure();
	else
		succes();


	/*		tolower		*/
	/*------------------*/

	ft_puts("ft_tolower test:\t");
	i = 0;
	while (i < 128)
	{
		if (ft_tolower((char)i) != tolower((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		failure();
	else
		succes();


	/*		toupper		*/
	/*------------------*/

	ft_puts("ft_toupper test:\t");
	i = 0;
	while (i < 128)
	{
		if (ft_toupper((char)i) != toupper((char)i))
				i = 200;
		else
			i++;
	}
	if (i == 200)
		failure();
	else
		succes();


	/*		strlen		*/
	/*------------------*/

	ft_puts("ft_strlen test:\t\t");
	if (ft_strlen("tata yoyo") != strlen("tata yoyo"))
		failure();
	else
	{
		if (ft_strlen("") != strlen(""))
			failure();
		else if (ft_strlen("\0 YAYAYAYAYA") != strlen("\0 YAYAYAYAYA"))
			failure();
		else
			succes();
	}


	/*		strdup		*/
	/*------------------*/

	char	*t1;
	char	*t2;

	ft_puts("ft_strdup test:\t\t");
	t1 = strdup("salut\n");
	t2 = ft_strdup("salut\n");
	if (strcmp(t1, t2) != 0)
		failure();
	else
		succes();

	/*		strcat		*/
	/*------------------*/

	char	gcat[] = "Eh tu me v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
	char	hcat[] = "ois en entier?";
	char	xcat[] = "Eh tu me v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0";
	char	wcat[] = "ois en entier?";
	char	*u1 = gcat;
	char	*u2 = xcat;

	ft_puts("ft_strcat test:\t\t");
	u1 = strcat(gcat, hcat);
	u2 = ft_strcat(xcat, wcat);
	if (strcmp(u1, u2) != 0)
		failure();
	else
		succes();

	/*		memcpy		*/
	/*------------------*/

	char	t1_src[] = "coucou mec";
	char	t1_dest[16];
	char	t2_src[] = "coucou mec";
	char	t2_dest[16];

	ft_puts("ft_memcpy test:\t\t");
	memcpy(t1_src, t1_dest, 11);
	ft_memcpy(t2_src, t2_dest, 11);
	if (memcmp(t1_dest, t2_dest, 12) != 0)
		failure();
	else
		succes();

	/*		memset		*/
	/*------------------*/

	char	zip[10];
	char	zop[10];
	char	*z1 = zip;
	char	*z2 = zop;

	ft_puts("ft_memset test:\t\t");
	zip[4] = '\0';
	zop[4] = '\0';
	z1 = memset(zip, 'U', 4);
	z2 = ft_memset(zop, 'U', 4);
	if (memcmp(z1, z2, 5) != 0)
		failure();
	else
		succes();

	/*		puts		*/
	/*------------------*/

	ft_puts("ft_puts test:\n");
	ft_puts("\tDid you see something?\n\tOh in fact all the test \n\twas print by me :)\n");

	/*		 cat		*/
	/*------------------*/

	char	file_name[2048];
	int		fd;

	ft_puts("ft_cat test:\n\tSo, now this is the final test:\n\tenter a file name : ");
	scanf("%s", file_name);
	fd = open(file_name, O_RDONLY);
	ft_puts("\n");
	if (fd < 0)
		ft_puts("\tInvalid name\n");
	else
	{
		ft_puts("\x1B[1;37m");
		ft_cat(fd);
		ft_puts(CLRNC);
		close(fd);
		ft_puts("\n\tEverything is Okay?\n");
	}

	/*		Bonus		*/
	/*------------------*/

	ft_puts("\nBonus test:\n");
	ft_puts("ft_intlen test:\t\t");
	if (ft_intlen(100) != 3)
		failure();
	else if (ft_intlen((-3)) != 2)
		failure();
	else if (ft_intlen(0) != 1)
		failure();
	else
		succes();

	int		h = 0;
	ft_puts("please enter a number : ");
	scanf("%d", &h);
	ft_puts("ft_putnbr test:\t\t");
	ft_putnbr(h);
	ft_puts("\n It is okey?\n");



	return 0;
}
