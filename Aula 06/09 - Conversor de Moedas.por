programa {
  // Desenvolva um algoritmo que recebendo um valor em dólar mostre o equivalente em
  // real.

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    // US$ 1 = R$ 5,71
    const real preco_dolar = 5.71 //em R$
    real dolares, reais

    escreva("Digite um valor em dólar: ")
    leia(dolares)
    reais = mat.arredondar(dolares * preco_dolar, 2)
    escreva("Isso equivale a R$", reais)
  }
}
