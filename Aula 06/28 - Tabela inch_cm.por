programa {
  // Criar um programa que imprima uma tabela de conversão de polegadas para centímetros.
  // Deseja-se que na tabela conste valores de 1 polegada até 20 polegadas inteiras.
  // Obs: 1 polegada=2.54 centímetros.

  // Formato: | Polegadas | Centímetros | -> espaço da célula: 15 caracteres

  inclua biblioteca Matematica --> mat
  inclua biblioteca Tipos --> tipos
  inclua biblioteca Texto --> texto

  funcao real polegada_para_cm(real polegada) {
    retorne mat.arredondar(polegada * 2.54, 10)
  }

  funcao vazio escreva_linha_tabela(real a, real b) {
    const inteiro max_caracteres = 15

    cadeia txt_a = texto.preencher_a_esquerda(" ", max_caracteres, tipos.real_para_cadeia(a))
    cadeia txt_b = texto.preencher_a_esquerda(" ", max_caracteres, tipos.real_para_cadeia(b))

    escreva("|", txt_a, "|", txt_b, "|", "\n")
  }

  funcao inicio() {
    escreva("|   Polegadas   |  Centímetros  |\n")
    escreva("|---------------|---------------|\n")
    para (real p = 1; p <= 20; p++) {
      escreva_linha_tabela(p, polegada_para_cm(p))
    }
  }
}
