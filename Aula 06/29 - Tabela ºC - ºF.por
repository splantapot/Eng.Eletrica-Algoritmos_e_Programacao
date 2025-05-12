programa {
  // Criar um programa que imprima uma tabela de conversão de Célsius para Fahrenheit. O
  // programa deve solicitar o usuário o limite superior, o limite inferior do intervalo e o
  // decremento. Fórmula de conversão: 
  // (9C/5) + 32 = F

  // |    Celsius   |  Fahrenheit  | -> caracteres da célula: 14

  inclua biblioteca Matematica --> mat
  inclua biblioteca Tipos --> tipos
  inclua biblioteca Texto --> texto

  funcao real celsius_para_Fah(real celsius) {
    real fahrenheit = (celsius * 9/5) + 32
    retorne mat.arredondar(fahrenheit, 10)
  }

  funcao vazio escreva_titulo() {
    escreva("|    Celsius   |  Fahrenheit  |", "\n")
  }

  funcao vazio escreva_linha_tabela(real a, real b) {
    const inteiro max_caracteres = 14

    cadeia txt_a = texto.preencher_a_esquerda(" ", max_caracteres, tipos.real_para_cadeia(a))
    cadeia txt_b = texto.preencher_a_esquerda(" ", max_caracteres, tipos.real_para_cadeia(b))

    escreva("|", txt_a, "|", txt_b, "|", "\n")
  }

  funcao inicio() {
    real lim_superior, lim_inferior, decremento
    escreva("Gerarei uma tabela de °C e °F e para você. Apenas me informe:", "\n")
    escreva("O Limite Superior (em °C): ")
    leia(lim_superior)
    escreva("O Limite Inferior (em °C): ")
    leia(lim_inferior)
    escreva("O decremento (em °C): ")
    leia(decremento)

    se (decremento <= 0) {
      escreva("O 'decremento' deve ser um valor maior que 0 e positivo.\n")
    } senao se (lim_superior - lim_inferior <= 0) {
      escreva("O 'limite superior' deve ser maior que o 'limite inferior'.\n")
    } senao {
      limpa()

      escreva_titulo()
      inteiro qnt_linhas = 0
      para (real t = lim_superior; t >= lim_inferior; t -= decremento) {
        escreva_linha_tabela(t, celsius_para_Fah(t))
        qnt_linhas += 1
      }
    }
  }
}
