/* Escreva um programa que contenha duas vari�veis inteiras.
Compare seus endere�os e exiba o maior endere�o. */

int main(void) {
	int a = 10, b = 40;
	
	if (&a > &b) {
		printf("Maior endereco: A [%x]", &a);
	} else {
		printf("Maior endereco: B [%x]", &b);
	}
	
	return 0;
}