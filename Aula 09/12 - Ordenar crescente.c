/* Faça um programa que leia três valores inteiros e chame uma função que receba estes 3 valores
de entrada e retorne eles ordenados, ou seja, o menor valor na primeira variável, o segundo menor
valor na variável do meio, e o maior valor na última variável. A função deve retornar o valor 1 se os
três valores forem iguais e 0 se existirem valores diferentes. Exibir os valores ordenados na tela. */

#include <stdio.h>

void trocar(int *a, int *b) {
	int dump = *a;
	*a = *b;
	*b = dump;
}

int ordenar(int *a, int *b, int *c) {
	if (*a > *b) trocar(a, b);
	if (*a > *c) trocar(a, c);
	if (*b > *c) trocar(b, c);
	
	return (*a == *b && *a == *c);
}

int main(void) {
	int x, y, z;
	
	printf("Use inteiros para definir os valores!!\n");
	printf("x = ");
	scanf("%d", &x);
	printf("y = ");
	scanf("%d", &y);
	printf("z = ");
	scanf("%d", &z);
	
	int areEqual = ordenar(&x, &y, &z);
	
	printf("Valores ordenados: \n");
	printf("x = %d\n", x);
	printf("y = %d\n", y);
	printf("z = %d\n", z);
	
	printf("Os valores ");
	if (!areEqual) printf("nao ");
	printf("sao iguais.\n");
	
	return 0;
}