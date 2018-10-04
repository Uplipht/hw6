CC=g++
CFLAGS=-g -Wall
#Enable all warnings
DOXCONFIG=Doxyfile

#Build game, archive it, and document it
all: build archive doc

build: game

game: game.o main.o othello.o
	$(CC) $(CFLAGS) -o game game.o main.o othello.o

game.o: game.cc game.h
	$(CC) $(CFLAGS) -c game.cc

main.o: main.cc game.h othello.h
	$(CC) $(CFLAGS) -c main.cc

othello.o: othello.cc othello.h
	$(CC) $(CFLAGS) -c othello.cc

archive: Othello.tgz

Othello.tgz: game Makefile README.md html Doxyfile
	tar -cvz --exclude=*.o --exclude='Othello.tgz' -f Othello.tgz *

doc: html

#Update documentation files
html: $(DOXCONFIG) *.cc *.h
	doxygen $(DOXCONFIG)

#Clean up old .o files, executable, and archived file
clean:
	-rm -f *.o game Othello.tgz
	-rm -rf html
