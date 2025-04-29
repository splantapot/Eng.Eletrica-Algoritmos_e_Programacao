programa {
  // Escreva um programa para a calcular a potenciação de
  // um número e guarde-o em uma variável, em seguida
  // imprima a raiz quadrada dessa variável
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real base, expoente, potencia, raiz_quadrada
    escreva("Digite a base da potência:")
    leia(base)
    escreva("Digite o expoente da potência:")
    leia(expoente)
    
    potencia = mat.potencia(base, expoente)
    raiz_quadrada = mat.raiz(potencia, 2)

    escreva("A raíz quadrada de ", base, " elevado a ", expoente, " é ", raiz_quadrada, ".\n")
  }
}
