// Lista de exercícios 02
/* 1. Criar um algoritmo que armazene cinco nomes em um vetor;
depois possa ser digitado um número que corresponde a uma
pessoa e imprimir esse nome. */

#include <stdio.h>
#include <string.h>

int main(void) {
	int qntNomes = 5, i;
	char nomes[qntNomes][50];
	int selecao;
	
	for (i = 0; i < qntNomes; i++) {
		printf("Digite o nome #%d: ", i+1);
		gets(nomes[i]);
	}
	
	printf("\n");
	printf("Digite um numero correspondente a uma pessoa (a partir de 1): ");
	scanf("%d", &selecao);
	
	if (selecao > 0 && selecao <= qntNomes) {
		printf("Pessoa #%d: %s\n", selecao, nomes[selecao-1]);
	} else {
		printf("Esse numero nao corresponde a uma pessoa.\n");
	}
	
	return 0;
}