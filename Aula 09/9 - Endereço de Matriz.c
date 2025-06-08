/* Crie um programa que contenha uma matriz de float contendo 3 linhas e 3 colunas.
Imprima o endereço de cada posição dessa matriz. */

#include <stdio.h>

int main(void) {
	float matriz[3][3] = {
		{3.14, 2.7, 21.3},
		{17.4, 25.1, 26.9},
		{3.4, 11.1, 2.6}
	};
	
	int l, c;
	for (l = 0; l < 3; l++) {
		for (c = 0; c < 3; c++) {
			printf(" %X", matriz[l][c]);
			if (c + 1 < 3) {
				printf(" |");
			}
		}
		printf("\n");
	}
	
	return 0;
}