NAME := ps_benchmark
CC := cc
CFLAGS := -Wall -Wextra -Werror
LDLIBS := -lm
SRC := push_swap_benchmark.c

.PHONY: all clean re

all: $(NAME)

$(NAME): $(SRC)
	$(CC) $(CFLAGS) $(SRC) $(LDLIBS) -o $(NAME)

clean:
	rm -f $(NAME)

re: clean all
