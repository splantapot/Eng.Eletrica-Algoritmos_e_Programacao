programa {
  // Considerando que uma equação do 2 grau possui 2 raízes reais e diferentes, calcule-as e
  // mostre os coeficientes da equação e as respectivas raízes.
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real a, b, c
    escreva("Insira os valores reais para a, b e c; Use '.' ao invés de ','.\n")
    escreva("a = ")
    leia(a)
    escreva("b = ")
    leia(b)
    escreva("c = ")
    leia(c)

    limpa()

    se (a == 0) {
      escreva("Como a = 0, essa não é uma equação do segundo grau.")
    } senao {
      real delta = mat.potencia(b, 2) - (4*a*c)

      escreva("Para a equação:\n")
      escreva(a, "x² + ", b, "x + ", c, " = 0\n")

      se (delta < 0) {
        escreva("Δ < 0, indicando que não há soluções reais.")

      } senao se (delta == 0) {
        escreva("Δ = 0, existe apenas uma solução real:\n")
        real x = (-b + mat.raiz(delta, 2)) / (2*a)
        escreva("x = ", x)

      } senao {
        escreva("Δ > 0, existem duas soluções reais:\n")
        real x1 = (-b + mat.raiz(delta, 2)) / (2*a)
        real x2 = (-b - mat.raiz(delta, 2)) / (2*a)
        escreva("x₁ = ", x1, " e x₂ = ", x2)
      }
    }

    escreva("\n")
  }
}
