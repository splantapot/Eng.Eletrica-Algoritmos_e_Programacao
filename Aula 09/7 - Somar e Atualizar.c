/* Crie um programa que contenha uma função que permita passar por parâmetro dois
números inteiros A e B. A função deverá calcular a soma entre estes dois números
e armazenar o resultado na variável A. Esta função não deverá possuir retorno,
mas deverá modificar o valor do primeiro parâmetro. 
Imprima os valores de A e B na função principal. */

void somarEmA(int *a, int *b) {
	*a += *b;
}

int main(void) {
	int a = 10; int b = -5;
	somarEmA(&a, &b);
	
	printf("a = %d \nb = %d", a, b);
	
	return 0;
}