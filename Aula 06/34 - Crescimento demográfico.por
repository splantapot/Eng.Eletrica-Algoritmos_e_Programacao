programa {
  // Dado um país A, com 5.000.000 de habitantes e uma taxa de natalidade de 3% ao ano, e
  // um país B com 7.000.000 de habitantes e uma taxa de natalidade de 2% ao ano, faça um
  // programa que calcule e imprima o tempo necessário para que a população do país A
  // ultrapasse a população do país B.

  funcao inicio() {
    real popA = 5, popB = 7, tax_nat_A = 0.03, tax_nat_B = 0.02
    inteiro t = 0

    enquanto (popA <= popB) {
      popA *= 1+tax_nat_A
      popB *= 1+tax_nat_B
      t++
    }

    escreva("Serão necessários ", t, " anos.")
  }
}
