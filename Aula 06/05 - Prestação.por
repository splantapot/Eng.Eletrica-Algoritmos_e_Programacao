programa {
  // Calcule e mostre o valor atual de uma prestação atrasada, considerando que a mesma
  // tem 30 dias de atraso e sobre esta incide uma multa de 10% ao mês. Mostre o valor
  // atualizado, o valor original e os acréscimos por atraso.
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    const real multa_taxa = 0.1
    real prestacao, multa_valor

    escreva("Qual o valor em R$ da prestação atrasada (use '.')?")
    leia(prestacao)

    multa_valor = mat.arredondar(prestacao * multa_taxa, 2)
    escreva("Então:")
    escreva("\nO novo valor da prestação é de: R$", multa_valor + prestacao)
    escreva("\nO valor original era de: R$", prestacao)
    escreva("\nA multa foi de: R$", multa_valor)
    escreva("\n")
  }
}
