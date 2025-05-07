programa {
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    const real pi = 3.14
    const inteiro casas_decimais = 5
    real raio, area, area_arredondada

    escreva("Informe o raio do círculo (Use '.' para valores decimais):")
    leia(raio)
    area = pi * raio * raio
    area_arredondada = mat.arredondar(area, casas_decimais)

    se (area != area_arredondada) {
      escreva("A área do círculo é de, aproximando para ", casas_decimais, " casas decimais:\n", area_arredondada, " u.c.")
    } senao {
      escreva("A área do círculo é de:\n", area, " u.c.")
    }
    escreva("\n")
  }
}