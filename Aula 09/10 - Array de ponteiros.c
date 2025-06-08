/* Crie um programa que contenha um array de inteiros contendo 5 elementos.
Utilizando apenas aritmética de ponteiros,
leia esse array do teclado e imprima o dobro de cada valor lido. */

// OBS: Lembre-se que na verdade, arrays em C são ponteiros.

#include <stdio.h>

int main(void) {
	int a, b, c, d, e, qntNum = 5; 				//To array
	int i; 										//To 'for' loop
	int ptr_array[5] = {&a, &b, &c, &d, &e}; 	// my array
	
	
	
	for (i = 0; i < 5; i++) {
		printf("Digite o valor em #%d: ", i);
		scanf("%d", ptr_array[i]);
	}
	
	printf("Dobro dos valores:\n");
	for (i = 0; i < 5; i++) {
		int *ptr = ptr_array[i];
		printf("~ %d\n", *ptr * 2);
	}
		
	return 0;
}