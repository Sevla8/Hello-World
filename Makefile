CC=gcc
CFLAGS=-W -Wall -ansi -pedantic
LDFLAGS=
SRC= $(wildcard *.c)
OBJ= $(SRC:.c=.o)
EXEC=hello

all: $(EXEC)

hello: $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

main.o: hello.h

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)

.PHONY: clean mrproper

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)

# all : ensemble des executables
# clean : supprime les fichiers intermediaires
# mrproper : supprime tout ce qui peut etre regenere

# cible: dependance
# 	commande

# $@ : nom de la cible
# $< : nom de la premiere dependance
# $^ : liste des dependances
# $? : liste des dependances plus recentes que la cible
# $* : nom du fichier sans suffixe

# https://gl.developpez.com/tutoriel/outil/makefile/
