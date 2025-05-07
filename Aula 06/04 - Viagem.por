programa {
  // Calcule a quantidade de litros de combustível gasta em uma viagem sabendo que um
  // automóvel percorre 12 KM com um litro do combustível. Ao final o algoritmo deverá
  // mostrar: a velocidade média, a distância percorrida e a quantidade de litros gasta na
  // viagem.
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    const real consumo = 12 // km/L
    real distancia, tempo, velocidade_media, litros
    // distancia (km), tempo (hrs), vel_media (km/h), litros (L) 

    escreva("Bem-vindo(a) ao sistema de viagens.\n")
    escreva("Insira a distância percorrida (em km):")
    leia(distancia)
    escreva("Insira o tempo da viagem (em horas):")
    leia(tempo)

    velocidade_media = mat.arredondar(distancia/tempo, 4) //4 casas decimais
    litros = mat.arredondar(distancia/consumo, 4)

    escreva("--- Seus dados de viagem: ---")
    escreva("\nVelocidade média: ", velocidade_media, " km/h;")
    escreva("\nDistância percorrida: ", distancia, " km;")
    escreva("\nConsumo total: ", litros, " L.")
    escreva("\n------")
  }
}
