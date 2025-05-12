programa {
  // Escreva um programa que leia a distância percorrida por um automóvel (em Km), a
  // quantidade de combustível consumida para percorrer esta distância (em litros) e
  // determine o consumo médio do automóvel.
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real distancia, litros, consumo
    escreva("OBS: Use '.' ao invés de ','.\n")
    escreva("Digite a distância percorrida pelo automóvel, em Km: ")
    leia(distancia)

    se (distancia <= 0) {
      escreva("A distância deve ser um valor real maior que 0.")
    } senao {
      escreva("Digite o consumo em litros: ")
      leia(litros)

      se (litros <= 0) {
        escreva("O consumo, em litros, deve ser um valor real maior que 0.")
      } senao {
        consumo = mat.arredondar(distancia / litros, 5)
        escreva("O consumo médio foi de ", consumo, " km/L.\n")
      }
    }
  }
}
