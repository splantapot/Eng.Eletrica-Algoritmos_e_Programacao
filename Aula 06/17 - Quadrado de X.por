programa {
  // Escreva um programa que leia um número inteiro e exiba na tela o quadrado deste
  // número
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real numero
    escreva("OBS: Use '.' ao invés de ','.\n")
    escreva("Digite um número real: ")
    leia(numero)
    escreva("O quadrado de ", numero, " é ", mat.potencia(numero, 2))
  }
}
