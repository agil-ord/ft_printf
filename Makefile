# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: agil-ord <agil-ord@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/06 16:09:16 by agil-ord          #+#    #+#              #
#    Updated: 2022/10/15 16:27:13 by agil-ord         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#este es el Makefile de mi printf
NAME	= 	libftprintf.a

SRCS	=	ft_printf.c ft_putnbr_hex_p.c \
			ft_putchar_printf.c ft_putstr_printf.c \
			ft_putnbr_uns_printf.c ft_putnbr_printf.c \
			ft_putnbr_hex_cap.c

OBJS	=	${SRCS:.c=.o}

#LIB_DIR	=	libft/

#LIBFT	=	libft/libft.a

AR		=	ar crs

CC		=	gcc

CFLAGS	=	-Wall -Werror -Wextra

RM		=	rm -f

all: ${NAME}

#${NAME}: ${OBJS}
#	@make -C ${LIB_DIR}
#	@cp libft/libft.a .
#	@mv libft.a ${NAME}
#	${AR} ${NAME} ${OBJS}


${NAME}: ${OBJS}
			${AR} ${NAME} ${OBJS}
#%.o: %.c
#			${CC} -c ${CFLAGS} $< -o $@
#en los clean hay que limpiar lo que te genera el make de la libreria
clean:		
				${RM} ${OBJS}

fclean:		clean
						${RM} ${NAME}

re:			fclean all

.PHONY: all clean fclean re 
