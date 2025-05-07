programa {
  funcao inicio() {
    real custo_produto, prestacao
    inteiro numero_de_prestacoes

    escreva("Informe o custo do produto em R$: ")
    leia(custo_produto)
    escreva("Informe o número de prestações: ")
    leia(numero_de_prestacoes)

    se (numero_de_prestacoes <= 0) {
      escreva("O número de prestações deve ser um inteiro maior que 0.")
    } senao {
      prestacao = custo_produto / numero_de_prestacoes
      escreva("Cada prestação custa R$", prestacao)
    }
  }
}
