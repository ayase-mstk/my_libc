# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mahayase <mahayase@student.42.jp>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/11 18:32:45 by mahayase          #+#    #+#              #
#    Updated: 2023/06/02 13:22:57 by mahayase         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS = 	ft_atoi.c \
		ft_atol.c \
		ft_bzero.c \
		ft_calloc.c \
		ft_isalnum.c \
		ft_isalpha.c \
		ft_isascii.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_itoa.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memcpy.c \
		ft_memmove.c \
		ft_memset.c \
		ft_putchar_fd.c \
		ft_putendl_fd.c \
		ft_putnbr_fd.c \
		ft_putstr_fd.c \
		ft_split.c \
		ft_substr.c \
		ft_strchr.c \
		ft_strdup.c \
		ft_striteri.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strlcpy.c \
		ft_strlen.c \
		ft_strmapi.c \
		ft_strncmp.c \
		ft_strndup.c \
		ft_strnstr.c \
		ft_strptrjoin.c \
		ft_strptrlen.c \
		ft_strrchr.c \
		ft_strtrim.c \
		ft_tolower.c \
		ft_toupper.c \
		get_next_line.c \
		get_next_line_utils.c

OBJ_DIR = ./obj/
OBJS = $(SRCS:%.c=$(OBJ_DIR)%.o)

CC = cc

CFLAGS = -Wall -Wextra -Werror

AR = ar crs

RM = rm -rf

all: $(OBJ_DIR) $(NAME)

$(NAME):	$(OBJS)
	$(AR) $(NAME) $(OBJS)

$(OBJ_DIR):
	mkdir -p obj

$(OBJ_DIR)%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJ_DIR)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus