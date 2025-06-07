/* Escreva um programa que leia uma string, conte
quantos caracteres da string sao iguais a 'a' e
substitua os que forem iguais a 'a' por 'b'. O
programa deve imprimir o numero de caracteres
modificados e a string modificada. */

#include <stdio.h>

int main(void) {
	char string[50];
	char c = 'x';
	int i = 0, qA = 0;
	
	printf("Digite uma string:\n");
	gets(string);
	
	printf("\n");
	while (c != '\0') {
		c = string[i];
		if (c == 'a') {
			string[i] = 'b';
			qA++;
		}
		i++;
	}
	
	printf("String final: '%s'\n", string);
	printf("Qnt. As: %d\n", qA);
	
	return 0;
}