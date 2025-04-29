programa {
  // distancia = km
  // consumo = km/L
  // litros = L = distancia / consumo

  funcao inicio() {
    real distancia, consumo, litros
    escreva("Insira a distância a ser percorrida (em km):")
    leia(distancia)
    escreva("Insira o consumo do veículo (em km/L):")
    leia(consumo)
    litros = distancia/consumo
    escreva("Serão necessários ", litros, " litros.")
  }
}
