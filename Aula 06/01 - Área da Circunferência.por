programa {
  //Area da Circunferência
  inclua biblioteca Matematica --> mat

  funcao real calcularAreaCircunferencia(real raio) {
    const real pi = 3.14
    real area = mat.potencia(raio, 2) * pi
    retorne mat.arredondar(area, 5)
  }

  funcao inicio() {
    real raio, area
    escreva("Digite o tamanho do raio da circunferência (use '.'): ")
    leia(raio)
    area = calcularAreaCircunferencia(raio)

    escreva("A área é de: ", area, " u.a.")
  }
}
