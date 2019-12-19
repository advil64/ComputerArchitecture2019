all: second

second: second.c
	gcc -Werror -Wall -fsanitize=address -std=c11 second.c -o second -lm

clean:
	rm -rf second