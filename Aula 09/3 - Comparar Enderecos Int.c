/* Escreva um programa que contenha duas variáveis inteiras. Leia essas variáveis do teclado.
Em seguida, compare seus endereços e exiba o conteúdo do maior endereço. */

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