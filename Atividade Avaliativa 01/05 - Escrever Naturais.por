programa {
  /* Proposta */ /*
  Criar um algoritmo que leia um número que será o limite superior de um intervalo e o incremento.
  Imprimir todos os números naturais no intervalo de 0 até esse número.
  Suponha que os dois números lidos são maiores do que zero. 
  Exemplo:
    Limite superior: 20
    Incremento: 5
    Saída: 0 5 10 15 20
  */

  funcao inicio() {
    inteiro limite_superior, incremento
    escreva("#OBS: Forneça números naturais para o sistema.\n")
    escreva("Informe o limite superior do intervalo: ")
    leia(limite_superior)
    escreva("Informe o incremento do intervalo: ")
    leia(incremento)

    se (limite_superior <= 0) {
      escreva("O 'limite superior' deve ser um número natural maior que 0.")

    } senao se (incremento <= 0) {
      escreva("O 'incremento' deve ser um número natural maior que 0.")

    } senao {
      para (inteiro n = 0; n <= limite_superior; n += incremento) {
        escreva(n, "\n")
      }
    }
  }
}
