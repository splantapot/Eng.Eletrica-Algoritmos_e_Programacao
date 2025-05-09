programa {
  //Volume do Cilindro
  inclua biblioteca Matematica --> mat

  funcao real calcularVolumeCilindro(real raio, real altura) {
    const real pi = 3.14
    real volume = mat.potencia(raio, 2) * pi * altura
    retorne mat.arredondar(volume, 5)
  }

  funcao inicio() {
    real raio, altura, volume
    escreva("OBS: use sempre '.' ao invés de ','.\n")
    escreva("Digite o raio da base da lata: ")
    leia(raio)
    escreva("Digite a altura da lata: ")
    leia(altura)
    volume = calcularVolumeCilindro(raio, altura)

    escreva("O volume da lata é de: ", volume, " u.v.\n")
  }
}
