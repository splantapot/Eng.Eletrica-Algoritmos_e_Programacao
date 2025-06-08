/* Faça um programa que leia 2 valores inteiros e chame uma função que receba estas 2 variáveis e
troque o seu conteúdo, ou seja, esta função é chamada passando duas variáveis A e B por exemplo
e, após a execução da função, A conterá o valor de B e B terá o valor de A. */

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