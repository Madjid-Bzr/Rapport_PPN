all:exec

exec:
	gcc -g   -Ofast  -march=native -fno-omit-frame-pointer -funroll-loops -floop-unroll-and-jam   mat.c -o multi -lm

clean:
	rm -Rf *~ multi?
