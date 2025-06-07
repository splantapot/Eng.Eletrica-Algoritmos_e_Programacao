// Lista de exercícios 02
/* 2. Criar um algoritmo que armazene cinco nomes em um vetor
e depois possa ser digitado um nome e, se for encontrado,
imprimir a posição desse nome no vetor;
caso contrário, imprimir uma mensagem.
*/

#include <stdio.h>
#include <string.h>

int main(void) {
	int qntNomes = 5, i;
	char nomes[qntNomes][50];
	char busca[50];
	
	for (i = 0; i < qntNomes; i++) {
		printf("Digite o nome #%d: ", i+1);
		gets(nomes[i]);
	}
	
	printf("\n");
	printf("Digite um nome a buscar: ");
	gets(busca);
	
	for (i = 0; i < qntNomes; i++) {
		if (!strcmp(busca, nomes[i])) {
			printf("Nome encontrado na posicao #%d. (%d no vetor)\n", i+1, i);
			break;
		}
	}
	
	if (i >= qntNomes) {
		printf("Nome nao encontrado.\n");
	}
	
	return 0;
}