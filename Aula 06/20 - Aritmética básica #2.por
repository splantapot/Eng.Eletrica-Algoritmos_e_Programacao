programa {

  funcao obterReal(cadeia mensagem, real &valor) {
    escreva(mensagem)
    leia(valor)
  }

  funcao inicio() {
    real a, b
    escreva("OBS: use '.' ao invés de ','.\n")
    escreva("Informe os valores reais para:\n")
    obterReal("a = ", a)
    obterReal("b = ", b)

    limpa()
    escreva("Se a = ", a, " e b = ", b, ", então:\n")
    escreva("a + b = ", a+b, "\n")
    escreva("a - b = ", a-b, "\n")
    escreva("a * b = ", a*b, "\n")

    se (b != 0) {
      escreva("a / b = ", a/b, "\n")
    } senao {
      escreva("Impossível dividir por 0.")
    }
  }
}
