/* Escreva um programa que contenha duas vari�veis inteiras. Leia essas vari�veis do teclado.
Em seguida, compare seus endere�os e exiba o conte�do do maior endere�o. */

#include <stdio.h>

int main(void) {
	int a, b;
	
	printf("Digite o valor inteiro de A: ");
	scanf("%d", &a);
	printf("Digite o valor inteiro de B: ");
	scanf("%d", &b);
	
	if (&a > &b) {
		printf("Maior End [A] = %d", a);
	} else {
		printf("Maior End [B] = %d", b);
	}
	
	return 0;
}