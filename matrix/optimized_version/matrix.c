#include<stdio.h>
#include <stdlib.h>
#define ROW 500
#define COLUMN 500
void matrixMultiplication();
int main(void)
{
	int matrix1[ROW][COLUMN],matrix2[ROW][COLUMN],i,j;

	for(i=0;i<ROW;i++)
	{
		for(j=0;j<COLUMN;j++)
		{
			matrix1[i][j]= rand()%9+1;
		}
	}

	for(i=0;i<ROW;i++)
	{
		for(j=0;j<COLUMN;j++)
		{
		matrix2[i][j]= rand()%9+1;
		}
	}
	matrixMultiplication(matrix1,matrix2);
	return 0;
}
void matrixMultiplication(int matrix1[][COLUMN],int matrix2[][COLUMN])
{
	int i,j,k,sum=0;
	int matrix3[ROW][COLUMN];
	for(i=0;i<ROW;i++)
	{
		for(j=0;j<COLUMN;j++)
		{
			for(k=0;k<ROW;k++){
				sum=sum+(matrix1[i][k]*matrix2[k][j]);
			}
			matrix3[i][j]=sum;
			sum=0;
		}
	}
	printf("\n<------Result of the multiplication of two matrix is----->\n\n");
	for(i=0;i<ROW;i++)
	{
		for(j=0;j<COLUMN;j++)
		{
			printf("%d\t",matrix3[i][j]);
		}
		printf("\n");
	}
}
