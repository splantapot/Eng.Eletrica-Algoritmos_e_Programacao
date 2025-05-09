programa {
  // Calcule a quantidade de litros de combustível gasta em uma viagem sabendo que um
  // automóvel percorre 12 KM com um litro do combustível. Ao final o algoritmo deverá
  // mostrar: a velocidade média, a distância percorrida e a quantidade de litros gasta na
  // viagem.
  inclua biblioteca Matematica --> mat

  funcao real calcularVelocidadeMedia(real distancia, real tempo) {
    real velMedia = distancia/tempo
    retorne mat.arredondar(velMedia, 5)
  }

  funcao real calcularLitrosConsumidos(real distancia) {
    const real consumo = 12 /* km/L */
    real litros = distancia/consumo
    retorne mat.arredondar(litros, 4)
  }

  funcao inicio() {
    real distancia, tempo, velMedia, litros
    escreva("#OBS: use '.' ao invés de ','.\n")
    escreva("Informe a distância percorrida (em Km):")
    leia(distancia)
    escreva("Informe o tempo da viagem (em horas):")
    leia(tempo)
    
    velMedia = calcularVelocidadeMedia(distancia, tempo)
    litros = calcularLitrosConsumidos(distancia)

    limpa()
    escreva("Velocidade média: ", velMedia, " km/h;\n")
    escreva("Distância percorrida: ", distancia, " km;\n")
    escreva("Litros consumidos na viagem: ", litros, " L.\n")
  }
}
