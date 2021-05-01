## Deuxieme exemple de Makefile

CC = gcc
# definition des options de compilation pour obtenir un fichier .o
MYFLAGS = -c -O3
# definition des options de compilation pour obtenir un fichier .do
DEBUGFLAGS =-c -g -O3
#output folder
OUTPUTFOLDER = -o ./outfile/

#mysql lib
SQLIB = -lmysqlclient

calco: ./outfile/addition.o  ./outfile/soustraction.o ./outfile/multiplication.o  ./outfile/division.o ./outfile/main.o
	$(CC) -o calco "./outfile/addition.o"  "./outfile/soustraction.o" "./outfile/multiplication.o"  "./outfile/division.o" "./outfile/main.o"

./outfile/main.o: ./sources/main.c ./header/addition.h  ./header/soustraction.h ./header/multiplication.h  ./header/division.h
	$(CC) $(MYFLAGS) "./sources/main.c" $(OUTPUTFOLDER)main.o

./outfile/addition.o: ./sources/addition.c ./header/addition.h
	$(CC) $(MYFLAGS) "./sources/addition.c" $(OUTPUTFOLDER)addition.o

./outfile/soustraction.o: ./sources/soustraction.c ./header/soustraction.h
	$(CC) $(MYFLAGS) "./sources/soustraction.c" $(OUTPUTFOLDER)soustraction.o

./outfile/multiplication.o: ./sources/multiplication.c ./header/multiplication.h
	$(CC) $(MYFLAGS) "./sources/multiplication.c" $(OUTPUTFOLDER)multiplication.o

./outfile/division.o: ./sources/division.c ./header/division.h
	$(CC) $(MYFLAGS) "./sources/division.c" $(OUTPUTFOLDER)division.o
