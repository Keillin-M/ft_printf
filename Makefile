# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kmaeda <kmaeda@student.42berlin.de>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/28 10:34:14 by kmaeda            #+#    #+#              #
#    Updated: 2025/05/30 09:43:09 by kmaeda           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc
CFLAGS = -Wall -Wextra -Werror
INCLUDES = -I. -ILibft

SRCS = ft_puthex_fd.c ft_printstr.c ft_printnbr.c ft_printunbr.c ft_printf.c ft_printptr.c
OBJS = $(SRCS:.c=.o)

LIBFT_DIR = Libft
LIBFT_LIB = $(LIBFT_DIR)/libft.a

TEMP_LIBFT_OBJS = temp_libft_objs

all: $(NAME)

$(LIBFT_LIB):
	$(MAKE) -C $(LIBFT_DIR)

$(NAME): $(OBJS) $(LIBFT_LIB)
	mkdir -p $(TEMP_LIBFT_OBJS)
	cd $(TEMP_LIBFT_OBJS) && ar x ../$(LIBFT_LIB)
	ar rcs $(NAME) $(OBJS) $(TEMP_LIBFT_OBJS)/*.o
	rm -rf $(TEMP_LIBFT_OBJS)

%.o: %.c libftprintf.h
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJS)
	$(MAKE) clean -C $(LIBFT_DIR)

fclean: clean
	rm -f $(NAME)
	$(MAKE) fclean -C $(LIBFT_DIR)

re: fclean all

.PHONY: all clean fclean re
