programa {
  // Desenvolva um algoritmo que leia 3 valores inteiros e efetue o
  // cálculo das raízes da equação de Bhaskara. Se não foi possível
  // calcular as raízes, mostre uma mensagem correspondente.
  // Obs.: não é possível divisão por 0 (zero) e raiz quadrada de
  // número negativo;

  // delta = b² - 4ac

  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real a = 0, b = 0, c = 0, delta, denominador, x1, x2
    escreva("Dada uma equação na forma ax² + bx + c = 0,\n")
    escreva("para a ∈ R, b ∈ R e c ∈ R, insira:\n")

    escreva("a = ")
    leia(a)
    escreva("b = ")
    leia(b)
    escreva("c = ")
    leia(c)

    delta = mat.potencia(b, 2) - (4*a*c)
    denominador = 2 * a

    se (delta < 0) {
      escreva("Δ < 0 => ∄ x ∈ R")
    } senao se (denominador == 0) {
      escreva("Erro: Não existe divisão por 0.")
    } senao {
      x1 = (-b + mat.raiz(delta, 2)) / denominador
      x2 = (-b - mat.raiz(delta, 2)) / denominador

      se (x1 == x2) {
        escreva("Só existe uma solução real, x = ", x1)
      } senao {
        escreva("x1 = ", x1, " e x2 = ", x2)
      }
    }
  }
}
