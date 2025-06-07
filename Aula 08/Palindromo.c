/* Faca um programa que verifique se uma palavra
e simetrica. Por exemplo: arara e uma palavra
simetrica. Podemos le-la normalmente ou de tras
para a frente e sempre obteremos a mesma
palavra. */

#include <stdio.h>
#include <string.h>

int main(void) {
	char palavra[50];
	
	printf("Digite uma palavra:\n");
	gets(palavra);
	
	int i = 0, f = 0;
	
	for (i = 0, f = strlen(palavra) - 1; i < f; i++, f--) {
		if (palavra[i] != palavra[f]) {
			printf("A palavra '%s' nao e um palindromo.", palavra);
			break;
		}
	}
	
	if (i >= f) {
		printf("A palavra '%s' e um palindromo.", palavra);
	}
	
	return 0;
}