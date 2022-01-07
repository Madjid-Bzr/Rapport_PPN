#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define D 1000
#define MAX_VALUE 100

void randomize(int **matrix, int l){
	
	int n;
	
	for(int i = 0; i < l; i++){
		for(int j = 0; j < l; j++){
			n = rand() % MAX_VALUE;
			matrix[i][j] = n;
		}	
	}
}

void print_matrix(int **matrix, int l){
	for(int i = 0; i < l; i++){
		for(int j = 0; j < l; j++){
			printf("%d ", matrix[i][j]);
		}
		printf("\n");		
	}
}

void mul_matrix(int **matrix_a, int **matrix_b, int **matrix_ab, int l){
	for(int i = 0; i < l; i++){
		for(int j = 0; j < l; j++){
			matrix_ab[i][j] = 0;
			for(int k = 0; k < l; k++){
				matrix_ab[i][j] += matrix_a[i][k] * matrix_b[k][j];
			}
		}
	}
	
}


int main(int argc, char *argv[]){
	
	srand(time(NULL));
	
	int **matrix_a = malloc(D * sizeof(int*));
	for(int i = 0; i < D; i++)
		matrix_a[i] = malloc(D * sizeof(int));
	
	
	int **matrix_b = malloc(D * sizeof(int*));
	for(int i = 0; i < D; i++)
		matrix_b[i] = malloc(D * sizeof(int));
	
	
	int **matrix_ab = malloc(D * sizeof(int*));
	for(int i = 0; i < D; i++)
		matrix_ab[i] = malloc(D * sizeof(int));
	
	randomize(matrix_a, D);
	randomize(matrix_b, D);
	
	mul_matrix(matrix_a, matrix_b, matrix_ab, D);
	
	
	
	for(int i = 0; i < D; i++)
		free(matrix_a[i]);
	free(matrix_a);
	
	for(int i = 0; i < D; i++)
		free(matrix_b[i]);
	free(matrix_b);
	
	for(int i = 0; i < D; i++)
		free(matrix_ab[i]);
	free(matrix_ab);
	
	return 0;
	
}
