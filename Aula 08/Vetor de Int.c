// Lista de exercícios 02
/* 3. Armazenar 8 números em um vetor e imprimir todos os números.
Ao final, teremos o total de números múltiplos de seis digitados. */

#include <stdio.h>
#include <string.h>

int main(void) {
	int qntNum = 8, numeros[qntNum], i, mult6 = 0;
	
	printf("Digite 8 numeros inteiros (1 por linha):\n");
	for (i = 0; i < qntNum; i++) {
		scanf("%d", &numeros[i]);
	}
	
	printf("\nNumeros { ");
	for (i = 0; i < qntNum; i++) {
		printf("%d", numeros[i]);
		if (i + 1 < qntNum) {
			printf(" ; ");
		}
		
		if (numeros[i] % 6 == 0) {
			mult6 += 1;
		}
	}
	printf(" }");
	
	printf("\nMultiplos de 6: %d\n", mult6);
	
	return 0;
}