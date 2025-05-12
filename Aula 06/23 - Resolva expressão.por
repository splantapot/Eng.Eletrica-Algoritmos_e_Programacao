programa {
  // Escreva um programa que leia um número real positivo x e exiba o valor da expressão:
  // 3x³ + 2x² + x – 1
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    cadeia expressao = "3x³ + 2x² + x - 1"
    real x
    escreva("OBS: use '.' ao invés de ','.\n ")
    escreva("Digite um número real positivo: ")
    leia(x)

    se (x < 0) {
      escreva("Tente um número positivo!")
    } senao se (x == 0) {
      escreva("0 não é um número positivo!")
    } senao {
      limpa()
      escreva("Se x = ", x, ",\n")
      real resultado = (3 * mat.potencia(x, 3)) + (2 * mat.potencia(x, 2)) + x - 1
      escreva(expressao, " = ", resultado)
    }
  }
}
