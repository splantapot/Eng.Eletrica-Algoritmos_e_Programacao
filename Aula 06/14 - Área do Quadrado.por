programa {
  inclua biblioteca Matematica --> mat

  funcao real calcularAreaQuadrado(real lado) {
    real area = mat.potencia(lado, 2)
    retorne area
  }

  funcao inicio() {
    real lado, area
    escreva("OBS: Use '.' ao invés de ','.\n")
    escreva("Insira o tamanho do lado do quadrado:")
    leia(lado)
    area = calcularAreaQuadrado(lado)
    escreva("Sua área é: ", area, " u.a.")
  }
}
