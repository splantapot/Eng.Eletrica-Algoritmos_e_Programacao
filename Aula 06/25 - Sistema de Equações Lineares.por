programa {
  // A solução de uma equação do primeiro grau AX + B = 0, onde A é um número real não
  // nulo e B é um número real qualquer é calculada pela fórmula X = -B/A. Escreva um
  // programa que leia os coeficientes de uma equação do primeiro grau e calcule a sua raiz.
  inclua biblioteca Matematica --> mat

  funcao real solucionarEq_linear(real a, real b) {
    retorne mat.arredondar( -b/ a , 10 )
  }

  funcao inicio() {
    real a, b
    escreva("Digite os coeficientes da equação linear 'ax + b = 0'.\n")
    escreva("OBS: use '.' ao invés de ','.\n")
    escreva("a = ")
    leia(a)
    escreva("b = ")
    leia(b)

    se (a == 0 ) {
      escreva("Esse não é um sistema linear, pois a = 0.")
    } senao {
      real x = solucionarEq_linear(a, b)
      limpa()
      escreva("Se ax + b = 0, onde a = ", a, " e b = ", b, ", então:\n")
      escreva("x = ", x)
    }
  }
}
