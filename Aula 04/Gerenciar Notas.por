programa {
  // Ler 4 valores (N1, N2, N3 e N4) referentes às quatro notas de um
  // aluno. A seguir, se a média ponderada com pesos 2,3,4 e 1 para
  // as respectivas provas for maior ou igual a 7, mostre uma
  // mensagem: "Aluno foi aprovado". Se a nota for inferior a 5,
  // mostrar uma mensagem: "Aluno foi reprovado". Se a média ficou
  // entre 5 e 7, fazer a leitura de uma variável (EX) correspondente a
  // nota de exame, recalcular a média(somar a nota do exame
  // com a nota anterior e dividir por 2) e mostrar se o aluno foi ou
  // não aprovado.

  funcao inicio() {
    real qnt = 4, notas[qnt], pesos[qnt] = {2, 3, 4, 1}
    para (inteiro n = 0; n < qnt; n++) {
      escreva("Digite a ", n+1, "ª nota:")
      leia(notas[n])
    }

    real soma_notas = 0, soma_pesos = 0
    para (inteiro n = 0; n < qnt; n++) {
      soma_notas += notas[n] * pesos[n]
      soma_pesos += pesos[n]
    }
    real media_ponderada = soma_notas / soma_pesos

    se (media_ponderada >= 7) {
      escreva("Aluno aprovado. Média: ", media_ponderada)
    } senao se (media_ponderada < 5) {
      escreva("Aluno reprovado. Média: ", media_ponderada)
    } senao {
      real exame_final
      escreva("Insira a nota do exame final:")
      leia(exame_final)
      real media_final = (media_ponderada + exame_final)/2

      se(media_final >= 7) {
        escreva("Aluno aprovado. Média: ", media_final)
      } senao {
        escreva("Aluno reprovado Média: ", media_final)
      }
    }
  }
}
