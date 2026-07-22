NAME    = libasm.a

ASM     = nasm
ASMFLAGS = -f elf64

CC      = gcc
CFLAGS  = -Wall -Wextra -Werror

SRCS    = ft_strlen.s \
          ft_strcpy.s \
#          ft_strcmp.s \
#          ft_write.s \
#          ft_read.s \
#          ft_strdup.s \
#          ft_atoi_base.s \
#          ft_list_push_front.s \
#          ft_list_size.s \
#          ft_list_sort.s \
#          ft_list_remove_if.s


OBJS    = $(SRCS:.s=.o)

%.o: %.s
	$(ASM) $(ASMFLAGS) $< -o $@

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

all: $(NAME)

test: $(NAME)
	$(CC) $(CFLAGS) main.c $(NAME) -o test

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)
	rm -f test

re: fclean all

.PHONY: all clean fclean re