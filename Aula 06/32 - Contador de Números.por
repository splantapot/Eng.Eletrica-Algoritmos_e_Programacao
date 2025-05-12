programa {
  // Escreva um programa que leia números enquanto forem positivos e imprima quantos números foram digitados.

  funcao inicio() {
    real x = 1
    inteiro contados = 0

    escreva("Digite números. Contarei quantos positivos você digitará até digitar um número negativo.", "\n")
    enquanto (x > 0) {
      leia(x)
      contados += 1
    }
    contados -= 1
    escreva("Você digitou ", contados, " números positivos.")
  }
}
