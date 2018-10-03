CC=g++
CFLAGS=-g -Wall
#Enable all warnings

#Build game and archive it
all: build archive

build: game

game: game.o main.o othello.o
	$(CC) $(CFLAGS) -o game game.o main.o othello.o

game.o: game.cc game.h
	$(CC) $(CFLAGS) -c game.cc

main.o: main.cc game.h othello.h
	$(CC) $(CFLAGS) -c main.cc

othello.o: othello.cc othello.h
	$(CC) $(CFLAGS) -c othello.cc

#Remove .o files and old archives first
archive:
	-rm -f *.o Othello.tgz
	tar cvzf Othello.tgz *

#Clean up old .o files, executable, and archived file
clean:
	-rm -f *.o game Othello.tgz
