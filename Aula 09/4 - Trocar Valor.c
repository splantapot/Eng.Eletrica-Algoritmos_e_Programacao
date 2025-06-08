/* Fa�a um programa que leia 2 valores inteiros e chame uma fun��o que receba estas 2 vari�veis e
troque o seu conte�do, ou seja, esta fun��o � chamada passando duas vari�veis A e B por exemplo
e, ap�s a execu��o da fun��o, A conter� o valor de B e B ter� o valor de A. */

#include <stdio.h>

void changeInt(int *a, int *b) {
	int memory = *a;
	*a = *b;
	*b = memory;
}

int main(void) {
	int a, b;
	
	printf("Digite o valor inteiro de [A]: ");
	scanf("%d", &a);
	printf("Digite o valor inteiro de [B]: ");
	scanf("%d", &b);
	
	changeInt(&a, &b);
	
	printf("a = %d\n", a);
	printf("b = %d\n", b);
	
	return 0;
}