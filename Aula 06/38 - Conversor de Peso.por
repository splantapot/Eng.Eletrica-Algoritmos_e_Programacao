programa {
  // Escreva um programa que leia o peso de um objeto na terra e o número de um planeta e
  // imprima o valor do peso do objeto neste planeta.
  inclua biblioteca Texto --> txt
  inclua biblioteca Matematica --> mat

  const cadeia planetas[6][2] = {
    {"1", "Mercúrio"},
    {"2", "Vênus"},
    {"3", "Marte"},
    {"4", "Júpiter"},
    {"5", "Saturno"},
    {"6", "Urano"}
  }

  funcao vazio escreva_menu_planetas() {
    const inteiro max_caracteres = 11
    escreva("| n |  Planeta  |", "\n")
    escreva("|---|-----------|", "\n")
    para (inteiro n = 0; n < 6; n++) {
      escreva("| ", planetas[n][0]," |", txt.preencher_a_esquerda(" ", max_caracteres, planetas[n][1]), "|", "\n")
    }
  }

  funcao real peso_terrestre_para_gravidade(real peso_terra, real gravidade) {
    real novo_peso = (peso_terra/10) * gravidade
    novo_peso = mat.arredondar(novo_peso, 5)
    retorne novo_peso
  }

  funcao inicio() {
    real peso_terra
    escreva("OBS: Use '.' ao invés de ','.\n")
    escreva("Informe o peso de um objeto na Terra (em Newton): ")
    leia(peso_terra)

    cadeia planeta_escolhido
    escreva_menu_planetas()
    escreva("Conforme a tabela acima, escolha o número de um planeta: ")
    leia(planeta_escolhido)

    real gravidade = 0

    escolha (planeta_escolhido) {
      caso "1":
        gravidade = 0.37
      pare
      
      caso "2":
        gravidade = 0.88
      pare

      caso "3":
        gravidade = 0.38
      pare

      caso "4":
        gravidade = 2.64
      pare

      caso "5":
        gravidade = 1.15
      pare

      caso "6":
        gravidade = 1.17
      pare

      caso contrario:
        escreva("Não há um planeta com o número '",planeta_escolhido ,"'.\n")
        gravidade = -1
      pare
    }

    se (gravidade > 0) {
      real novo_peso = peso_terrestre_para_gravidade(peso_terra, gravidade)
      escreva("O peso para o planeta '", planeta_escolhido, "' é: ", novo_peso, " N.\n")
    }
  }
}
