programa {
  // Escreva um programa que leia dois números reais e imprima na tela a sua soma.

  funcao inicio() {
    const inteiro qnt = 2
    real nums[2]

    para (inteiro n = 1; n <= qnt; n++) {
      escreva("Digite o ", n, "º número real:")
      leia(nums[n-1])
    }

    escreva("A soma: ", nums[0], " + ", nums[1], " = ", nums[0]+nums[1])
  }
}
