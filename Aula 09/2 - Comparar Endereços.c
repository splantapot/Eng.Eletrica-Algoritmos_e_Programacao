/* Escreva um programa que contenha duas variáveis inteiras.
Compare seus endereços e exiba o maior endereço. */

int main(void) {
	int a = 10, b = 40;
	
	if (&a > &b) {
		printf("Maior endereco: A [%x]", &a);
	} else {
		printf("Maior endereco: B [%x]", &b);
	}
	
	return 0;
}