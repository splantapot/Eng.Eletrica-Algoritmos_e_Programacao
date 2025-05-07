programa {
  // Considerando que uma equação do 2 grau possui 2 raízes reais e diferentes, calcule-as e
  // mostre os coeficientes da equação e as respectivas raízes.

  // Δ = b² - 4ac
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real a, b, c, delta, x1, x2
    escreva("Insira os valores a seguir:\n")

    escreva("a = ")
    leia(a)

    se (a != 0) {
      escreva("b = ")
      leia(b)
      escreva("c = ")
      leia(c)

      delta = (b*b)-(4*a*c)

      se (delta > 0) {
        escreva("Como Δ > 0, existem duas soluções reais:\n")
        x1 = (-b + mat.raiz(delta, 2)) / (2*a)
        x2 = (-b - mat.raiz(delta, 2)) / (2*a)
        escreva("x1 = ", x1, " e x2 = ", x2)
      } senao se (delta == 0) {
        escreva("Como Δ = 0, existe uma solução real:\n")
        x1 = (-b + mat.raiz(delta, 2)) / (2*a)
        escreva("x = ", x1)
      } senao {
        escreva("Como Δ < 0, não existem soluções reais.")
      }

    } senao {
      escreva("Essa equação não é do 2º grau.")
    }
  }
}
