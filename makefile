CC=gcc
CFLAGS= -g -Wall -ledit -lm

all:
	$(CC) $(CFLAGS) parsing.c mpc.c -o parsing
