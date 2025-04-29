programa {
  // Sabendo que a formula de delta é b² -4ac, crie um
  // programa que tenha 3 variáveis do tipo inteiro: a = 1, b = -
  // 3 e c = -10. O programa deve calcular o valor de delta e
  // imprimir na tela.

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    // delta = b² - 4*a*c
    real a = 1, b = -3, c = -10, delta
    delta = mat.potencia(b, 2) - (4 * a * c)
    escreva("Δ = ", delta)
  }
}
