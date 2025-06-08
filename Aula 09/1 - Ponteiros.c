/* Escreva um programa que declare um inteiro, um real e um char,
e ponteiros para inteiro, real, e char. Associe as variáveis aos ponteiros (use &).
Modifique os valores de cada variável usando os ponteiros. 
Imprima os valores das variáveis antes e após a modificação. */

int main(void) {
	int i = 0, *pi;
	float r = 2.3, *pr;
	char c = 'd', *pc;
	
	pi = &i;
	pr = &r;
	pc = &c;
	
	printf("Inteiro: %d\n", i);
	printf("Real: %f\n", r);
	printf("Char: %c\n", c);
	
	*pi = 10;
	*pr = 5.2;
	*pc = 's';
	
	printf("Inteiro: %d\n", i);
	printf("Real: %f\n", r);
	printf("Char: %c\n", c);
			
	return 0;
}