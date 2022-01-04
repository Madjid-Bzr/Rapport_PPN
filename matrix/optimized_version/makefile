all:exec

exec:
	gcc -g  -std=c99  -O3 -Ofast  -march=native -funroll-loops -floop-unroll-and-jam matrix.c -o matrix -lm

clean:
	rm -Rf *~ matrix
