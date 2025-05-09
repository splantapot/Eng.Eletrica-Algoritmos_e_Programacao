programa {
  inclua biblioteca Matematica --> mat
  const real preco_dolar = 5.65

  funcao real dolar_para_real(real dolares) {
    // reais = dolar * preco_dolar
    real reais = dolares * preco_dolar
    retorne mat.arredondar(reais, 2)
  }

  funcao real real_para_dolar(real reais) {
    // dolar = reais / preco_dolar
    real dolares = reais / preco_dolar
    retorne mat.arredondar(dolares, 2)
  }

  funcao inicio() {
    real dolares, reais
    escreva("OBS: Use '.' ao invés de ','.\n")
    escreva("Insira um valor em US$ (dólares americanos):\n")
    leia(dolares)
    reais = dolar_para_real(dolares)
    escreva("US$ ", dolares, " = R$ ", reais, ".")
  }
}
