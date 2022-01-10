all: nbody.g nbody.g1 nbody.g2

nbody.g: nbody.c
	gcc -g -mavx2 -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody.g1: nbody1.c
	gcc  -mavx2 -funroll-loops -march=tigerlake -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -Ofast -g -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp

nbody.g2: nbody2.c
	gcc   -funroll-loops -march=tigerlake -mtune=generic -finline-functions -fno-omit-frame-pointer  -ftree-vectorize -Ofast -g -fopt-info-all=nbody.gcc.optrpt $< -o $@ -lm -fopenmp


clean:
	rm -Rf *~ nbody.g nbody.g1 nbody.g2 *.optrpt

