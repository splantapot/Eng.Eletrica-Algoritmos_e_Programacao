programa {
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real lado, altura, area
    escreva("Informe a medida do lado do triângulo:")
    leia(lado)
    escreva("Informe a medida da altura do triângulo (digite 0 se o triângulo for equilátero):")
    leia(altura)

    se (lado < 0 ou altura < 0) {
      escreva("Não existe lado negativo. Operação cancelada.")
    } senao {

      se (altura == 0) {
        area = mat.potencia(lado, 2) * mat.raiz(3, 2) / 4
      } senao {
        area = lado*altura/2
      }
      escreva("Sua área é de ", area, " u.a.")

    }
    
  }
}