CC=gcc
CFLAGS= -g -Wall -ledit -lm

all:
	$(CC) $(CFLAGS) parsing.c mpc.c -o parsing

#rev:
#	$(CC) $(CFLAGS) reverser.c -o reverser
