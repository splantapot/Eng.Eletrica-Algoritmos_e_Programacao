programa {
  // Faça um programa que receba o nome do usuário, três notas e calcule a média
  // aritmética. Deve ser impresso na tela o Nome do Aluno e a sua média final.=
  inclua biblioteca Util --> util
  inclua biblioteca Matematica --> mat

  funcao real obterMedia(real valores[]) {
    inteiro qnt = util.numero_elementos(valores)
    real soma = 0
    para (inteiro i = 0; i < qnt; i++) {
      soma += valores[i]
    }
    real media = soma / qnt
    retorne mat.arredondar(media, 3)
  }

  funcao inicio() {
    cadeia nome
    escreva("Digite seu nome completo: ")
    leia(nome)

    inteiro qnt = 3
    real notas[qnt]
    escreva("OBS: use '.' ao invés de ','.\n")
    para (inteiro n = 0; n < qnt; n++) {
      escreva("Digite a ", n+1,"ª nota: ")
      leia(notas[n])
    }

    real media = obterMedia(notas)
    limpa()

    escreva("Olá ", nome, ",\n")
    escreva("Suas notas: [", notas, "]\n")
    escreva("Sua média: ", media)
  }
}
