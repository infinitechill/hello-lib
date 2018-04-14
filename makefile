all:  clean mylib hellolib run

mylib: mylib.c
	gcc -c mylib.c
	ar rc mylib.a mylib.o

hellolib: hellolib.c
	gcc -o hellolib hellolib.c mylib.a

run:
	./hellolib

clean:
	rm -f hellolib *.o *.a