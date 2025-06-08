/* Elaborar um programa que leia dois valores inteiros (A e B). 
Em seguida faça uma função que retorne a soma do dobro dos dois números lidos.
A função deverá armazenar o dobro de A na própria variável A e o dobro de B na própria variável B.
*/

#include <stdio.h>

int getSum2(int *a, int *b) {
	*a *= 2;
	*b *= 2;
	return *a + *b;
}

int main(void) {
	int a, b, sum;
	
	printf("Insira um inteiro para A: ");
	scanf("%d", &a);
	printf("Insira um inteiro para B: ");
	scanf("%d", &b);
	
	sum = getSum2(&a, &b);
	
	printf("new a = %d\n", a);
	printf("new b = %d\n", b);
	printf("soma = %d\n", sum);
	
	return 0;
}