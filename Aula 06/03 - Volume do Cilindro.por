programa {
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    const real pi = 3.14
    real raio, altura, volume
    const inteiro casas_decimais = 5

    escreva("OBS: Escolha uma unidade de medida padrão para os próximos comandos.\n")
    escreva("Informe o raio da base da lata (use '.' para decimais):")
    leia(raio)
    escreva("Informe a altura da lata (use '.' para decimais):")
    leia(altura)

    volume = mat.arredondar(pi*raio*raio*altura, casas_decimais)
    escreva("=> O volume é de: ", volume)
    escreva("\n(arredondado para ", casas_decimais, " casas decimais)\n")
  }
}