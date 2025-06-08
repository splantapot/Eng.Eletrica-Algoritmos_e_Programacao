/* Crie um programa que contenha um array de float contendo 10 elementos. Imprima o endereço
de cada posição desse array. */

#include <stdio.h>

int main(void) {
	float nums[10] = {
		3.14, 2.7, 3.4, 2.1, 1.43, 2.23, 17.4, 25.1, 26.9, 22.4
	};
	int i;
	for (i = 0; i < 10; i++) {
		printf("%x\n", &nums[i]);
		//printf("num[%d] = %f &%x\n", i, nums[i], &nums[i]);
	}
	
	return 0;
}