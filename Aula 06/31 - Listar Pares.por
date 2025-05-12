programa {
  // Crie um programa que leia o limite superior de um intervalo e imprima todos os
  // números impares menores que esse número.

  funcao inicio() {
    inteiro limite_superior
    escreva("Irei digitar todos os números naturais pares de 2 ao 'limite_superior' que você informar.\n")
    escreva("Digite um número natural para o 'limite superior': ")
    leia(limite_superior)

    se (limite_superior <= 0) {
      escreva("O 'limite_superior' deve ser maior que 0.", "\n")
    } senao se (limite_superior == 2) {
      escreva(2, "\n")
    } senao {
      para (inteiro n = 2; n <= limite_superior; n++) {
        se (n%2 == 0) {
          escreva(n, "\n")
        }
      }
    }
  }
}
