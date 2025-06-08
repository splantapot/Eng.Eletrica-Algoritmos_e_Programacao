/* Crie um programa que contenha um array contendo 5 elementos inteiros. Leia esse array do
teclado e imprima o endereço das posições contendo valores pares. */

#include <stdio.h>

int main(void) {
	int qntNum = 5, array[qntNum], i, hasEven = 0;
	
	for (i = 0; i< qntNum; i++) {
		printf("Digite o inteiro em #%d: ", i);
		scanf("%d", &array[i]);
		if (!hasEven && array[i]%2 == 0) {
			hasEven = 1;
		}
	}
	
	if (hasEven) {
		printf("Endereco das posicoes pares:\n");
		for (i = 0; i < qntNum; i++) {
			if (array[i]%2 == 0) {
				printf("%p\n", &array[i]);
			}
		}
	} else {
		printf("Nao ha numeros pares\n");
	}
	
	
	
	return 0;
}