# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbourdel <mbourdel@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/27 12:33:32 by mbourdel          #+#    #+#              #
#    Updated: 2015/11/17 15:18:27 by mbourdel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRC = ft_bzero.s \
	  ft_isascii.s \
	  ft_isalnum.s \
	  ft_isalpha.s \
	  ft_isdigit.s \
	  ft_isprint.s \
	  ft_puts.s \
	  ft_strcat.s \
	  ft_tolower.s \
	  ft_toupper.s \
	  ft_strlen.s \
	  ft_memset.s \
	  ft_memcpy.s \
	  ft_strdup.s \
	  ft_cat.s \
	  ft_intlen.s \
	  ft_putnbr.s \
	  ft_itoa.s \
	  ft_strcmp.s \
	  ft_isspace.s

OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	@echo "[=================]"
	@echo "|     succes !    |"
	@echo "|      XXXX.o     |"
	@echo "|   was summoned  |"
	@echo "[=================]"
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "[=================]"
	@echo "|     succes !    |"
	@echo "|     libfts.a    |"
	@echo "|   was summoned  |"
	@echo "[=================]"

%.o: %.s
	@nasm -f macho64 $<

clean:
	@rm -rf $(OBJ)
	@echo "[=================]"
	@echo "|     succes !    |"
	@echo "|      XXXX.o     |"
	@echo "|  was destroyed  |"
	@echo "[=================]"

fclean: clean
	@rm -rf $(NAME)
	@echo "[=================]"
	@echo "|     succes !    |"
	@echo "|     libfts.a    |"
	@echo "|  was destroyed  |"
	@echo "[=================]"

re: fclean all

.PHONY: all clean fclean re
