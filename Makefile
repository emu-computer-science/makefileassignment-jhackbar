all: makefileAssignment

clean:
	rm -fr makefileAssignment driver.o file1.o file2.o

driver.o: driver.c headers.h
	gcc -c -o driver.o driver.c

file1.o: file1.c headers.h
	gcc -c -o file1.o file1.c

file2.o: file2.c headers.h
	gcc -c -o file2.o file2.c

makefileAssignment: driver.o file1.o file2.o
	gcc -o makefileAssignment driver.o file1.o file2.o

