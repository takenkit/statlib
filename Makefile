main: main.c libstat.a 
	gcc -o main main.c libstat.a

libstat.a: statlib.o
	ar rcs libstat.a statlib.o

statlib.o: statlib.c
	gcc -c statlib.c

clean:
	rm -f main *.o *.a

