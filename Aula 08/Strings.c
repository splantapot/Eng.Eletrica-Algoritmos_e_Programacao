/* Escreva um programa que leia duas strings e as imprima na tela.
Imprima tambem a segunda letra de cada string. */

#include <stdio.h>
#include <string.h>

int main(void) {
	char stringA[50], stringB[50];
	printf("Digite a primeira String:\n");
	scanf("%s^\n", &stringA);
	printf("Digite a segunda String:\n");
	scanf("%s^\n", &stringB);
	printf("\n");
	
	printf("String A: %s\n", stringA);
	printf("Segunda letra: %c\n", stringA[1]);
	printf("\n");
	printf("String A: %s\n", stringB);
	printf("Segunda letra: %c\n", stringB[1]);	
	
	return 0;
}