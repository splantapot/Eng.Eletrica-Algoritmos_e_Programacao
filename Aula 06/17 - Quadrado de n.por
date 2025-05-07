programa {
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real a, potencia
    escreva("Informe um número real:")
    leia(a)
    potencia = mat.potencia(a, 2)
    escreva("a = ", a, "\n")
    escreva("a² = ", a, "² = ", potencia)
  }
}
