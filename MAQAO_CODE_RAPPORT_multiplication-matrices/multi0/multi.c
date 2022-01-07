#include <stdio.h>
#include <stdlib.h>//Random Function
#include "header.h"

//Filling Matrix function
void Chargement(int (*A)[TAILLE_TAB], int (*B)[TAILLE_TAB]){

  for(int i=0;i<TAILLE_TAB;i++){
    for(int j=0;j<TAILLE_TAB;j++){
      A[i][j] = rand()%9+1;
      B[i][j] = rand()%9+1;

    }
  }

}

//Calcul product function
void Multiplication(int  (*A)[TAILLE_TAB], int (*B)[TAILLE_TAB], int (*C)[TAILLE_TAB], int N){

  for(int i=0;i<N;i++){
    for(int j=0;j<N;j++){
      for(int k=0;k<N;k++){
        int sum =0;
      
        sum +=   A[i][k] * B[k][j];
	
	C[i][j] = sum;

      }
    }
  }

}

//Affiche product function
void Affichage(int (*C)[TAILLE_TAB]){
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      printf("%d   ",C[i][j] );
    }
    printf("\n");
  }
}


//Main function
int main(int argc, char const *argv[]) {
	int N=500;
  //Itialisation matrix to NULL
  int A[TAILLE_TAB][TAILLE_TAB]={};
  int B[TAILLE_TAB][TAILLE_TAB]={};
  int C[TAILLE_TAB][TAILLE_TAB]={};


  //Add values into element of matrice
  Chargement(A,B);


  //Display values of matrix A
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      printf("%d   ",A[i][j] );
    }
    printf("\n");
  }

  //Display values of matrix B
  for(int i=0;i<3;i++){
    for(int j=0;j<3;j++){
      printf("%d   ",B[i][j] );
    }
    printf("\n");
  }


  //  Calculate result of product ( C = A * B )
  Multiplication(A,B,C,N);


  //Display final result of matrix C
  Affichage(C);





  return 0;
}
