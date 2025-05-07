programa {
  funcao inicio() {
    cadeia nome
    inteiro qnt = 3
    real notas[qnt]

    escreva("Digite seu nome: ")
    leia(nome)
    para (inteiro n = 0; n < qnt; n++) {
      escreva("Insira a ", n+1, "ª nota:")
      leia(notas[n])
    }

    real soma = 0
    para (inteiro n = 0; n < qnt; n++) {
      soma += notas[n]
    }
    real media = soma / qnt

    escreva(nome, ", sua média foi de: ", media)
  }
}
