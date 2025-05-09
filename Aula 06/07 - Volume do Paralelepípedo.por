programa {
  //Volume do Cilindro
  inclua biblioteca Matematica --> mat

  funcao vazio insiraValorReal(cadeia mensagem, real &valor) {
    escreva(mensagem)
    leia(valor)
  }

  funcao real calcularVolumeParalelepipedo(real comprimento, real largura, real altura) {
    real volume = comprimento * largura * altura
    retorne mat.arredondar(volume, 5)
  }

  funcao inicio() {
    real comprimento, largura, altura, volume
    escreva("OBS: use sempre '.' ao invés de ','. Insira todos os valores na mesma unidade de medida.\n")
    insiraValorReal("Digite o comprimento da caixa: ", comprimento)
    insiraValorReal("Digite a largura da caixa: ", largura)
    insiraValorReal("Digite a altura da caixa: ", altura)

    volume = calcularVolumeParalelepipedo(comprimento, largura, altura)

    escreva("O volume da caixa é de: ", volume, " u.v.\n")
  }
}