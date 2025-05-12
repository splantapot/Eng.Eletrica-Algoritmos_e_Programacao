programa {
  // Faça um programa que leia 3 números positivos e imprima a raiz quadrada de cada
  // número. O programa deverá impedir a entrada de números negativos usando o comando
  // enquanto.
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real numero = 0
    inteiro contador = 0
    escreva("Digite 3 números positivos. Tirarei suas raízes.\n")
    enquanto (numero >= 0 e contador < 3) {
      leia(numero)

      se (numero >= 0) {
        escreva("√", numero, " = ", mat.raiz(numero, 2), "\n")
        contador++
      }
    }

    se (numero < 0) {
      escreva("Não consigo tirar a raíz quadrada de números negativos. \n")
    }
  }
}
