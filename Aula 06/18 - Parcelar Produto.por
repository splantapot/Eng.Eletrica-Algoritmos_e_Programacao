programa {
  // Escreva um programa que leia o número de prestações de um produto e o seu valor de
  // venda e calcule o valor da prestação. Considere que não serão cobrados juros
  inclua biblioteca Matematica --> mat

  funcao real calcularPrestacao(real preco, inteiro n_parcelas) {
    real prestacao = preco/n_parcelas
    retorne mat.arredondar(prestacao, 2)
  }

  funcao inicio() {
    real preco, prestacao
    inteiro qnt_parcelas

    escreva("OBS: Use '.' ao invés de ','.\n")
    escreva("Informe o preço do produto em R$: ")
    leia(preco)
    escreva("Informe o número de parcelas: ")
    leia(qnt_parcelas)

    prestacao = calcularPrestacao(preco, qnt_parcelas)
    limpa()
    escreva("Preço do produto: R$ ", preco, "\n")
    escreva("Quantidade de parcelas: ", qnt_parcelas, "\n")
    escreva("Valor de cada prestação: R$ ", prestacao, "\n")
  }
}
