/* Crie um programa que contenha uma fun��o que permita passar por par�metro dois
n�meros inteiros A e B. A fun��o dever� calcular a soma entre estes dois n�meros
e armazenar o resultado na vari�vel A. Esta fun��o n�o dever� possuir retorno,
mas dever� modificar o valor do primeiro par�metro. 
Imprima os valores de A e B na fun��o principal. */

void somarEmA(int *a, int *b) {
	*a += *b;
}

int main(void) {
	int a = 10; int b = -5;
	somarEmA(&a, &b);
	
	printf("a = %d \nb = %d", a, b);
	
	return 0;
}