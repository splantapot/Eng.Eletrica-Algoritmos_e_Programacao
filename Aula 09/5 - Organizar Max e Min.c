/* Fa�a um programa que leia dois valores inteiros e chame uma fun��o que receba estes 2 valores
de entrada e retorne o maior valor na primeira vari�vel e o menor valor na segunda vari�vel.
Escreva o conte�do das 2 vari�veis na tela. */

#include <stdio.h>

void organizar(int *max, int *min) {
	if (*max < *min) {
		int memory = *max;
		*max = *min;
		*min = memory;
	}
}

int main(void) {
	int a, b;
	
	printf("Insira um inteiro para A: ");
	scanf("%d", &a);
	printf("Insira um inteiro para B: ");
	scanf("%d", &b);
	
	organizar(&a, &b);
	
	printf("[max] a = %d\n", a);
	printf("[min] b = %d\n", b);
	
	return 0;
}