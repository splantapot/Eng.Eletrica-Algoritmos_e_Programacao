programa {
  // Escreva um programa que leia dois números reais e imprima na tela a sua soma.
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real a, b
    escreva("Insira os valores reais para a e b; Use '.' ao invés de ','.\n")
    escreva("a = ")
    leia(a)
    escreva("b = ")
    leia(b)

    limpa()
    escreva("a + b = ", a, " + ", b, " = ", a+b)
  }
}
