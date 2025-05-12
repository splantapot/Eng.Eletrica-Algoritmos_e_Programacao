programa {
  // Escreva um programa que leia um número real positivo que representa o raio de um
  // círculo e exiba o valor da área deste círculo. Considerar pi = 3,14
  inclua biblioteca Matematica --> mat

  funcao real obterPerimetroCirculo(real raio) {
    se (raio <= 0) {
      escreva("O raio deve ser um número positivo e maior que 0.")
      retorne 0
    }
    const real pi = 3.14
    real perimetro = 4 * pi * raio
    retorne mat.arredondar(perimetro, 5)
  }

  funcao inicio() {
    real raio, perimetro
    escreva("OBS: Use '.' ao invés de ','.\n")
    escreva("Digite o valor do raio: ")
    leia(raio)
    perimetro = obterPerimetroCirculo(raio)
    se (perimetro != 0) {
      escreva("Perímetro: ", perimetro, " u.c.")
    }
  }
}
