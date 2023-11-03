NAME = libft.a

MY_SOURCES = ft_itoa.c			\
			 ft_putstr_fd.c		\
			 ft_strmapi.c		\
			 ft_atoi.c			\
			 ft_memchr.c		\
			 ft_bzero.c			\
			 ft_calloc.c		\
			 ft_isalnum.c		\
			 ft_isalpha.c		\
			 ft_isascii.c		\
			 ft_isdigit.c		\
			 ft_isprint.c		\
			 ft_memcmp.c		\
			 ft_memcpy.c		\
			 ft_memmove.c		\
			 ft_memset.c		\
			 ft_putchar_fd.c	\
			 ft_putendl_fd.c	\
			 ft_putnbr_fd.c		\
			 ft_split.c			\
			 ft_strchr.c		\
			 ft_strdup.c		\
			 ft_striteri.c		\
			 ft_strjoin.c		\
			 ft_strlcat.c		\
			 ft_strlcpy.c		\
			 ft_strlen.c		\
			 ft_strncmp.c		\
			 ft_strnstr.c		\
			 ft_strrchr.c		\
			 ft_strtrim.c		\
			 ft_substr.c		\
			 ft_tolower.c		\
			 ft_toupper.c		
			 

MY_BONUS = ft_lstadd_back.c		\
		   ft_lstadd_front.c	\
		   ft_lstclear.c		\
		   ft_lstdelone.c		\
		   ft_lstiter.c			\
		   ft_lstlast.c			\
		   ft_lstmap.c			\
		   ft_lstnew.c			\
		   ft_lstsize.c		

MY_OBJECTS = $(MY_SOURCES:.c=.o)

MY_OBJECTS_BONUS = $(MY_BONUS:.c=.o)

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -f
AR = ar rcs

all : $(NAME)

$(NAME): $(MY_OBJECTS) libft.h
	$(AR) $(NAME) $(MY_OBJECTS)

bonus: $(MY_OBJECTS) $(MY_OBJECTS_BONUS) libft.h
	$(AR) $(NAME) $(MY_OBJECTS) $(MY_OBJECTS_BONUS)

%.o: %.c libft.h
	$(CC) $(CFLAGS) -I. -c $< -o ${<:.c=.o}

clean :
	$(RM) $(MY_OBJECTS) $(MY_OBJECTS_BONUS)
	@$(CLEAN)

fclean : clean
	$(RM) $(NAME)

re : fclean all

.PHONY:	all clean fclean re bonus
