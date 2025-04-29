programa {
  // Escreva a seguinte expressão na linguagem Portugol:
  // [2 + (raiz_quadrada(16) + 2³)] × 3
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real expressao = (2 + (mat.raiz(16, 2) + mat.potencia(2, 3))) * 3
    escreva(expressao)
  }
}
