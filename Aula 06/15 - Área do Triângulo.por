programa {
  inclua biblioteca Matematica --> mat

  funcao vazio escrevaln(cadeia mensagem) {
    escreva(mensagem, "\n")
  }

  funcao inteiro escolherMetodo() {
    inteiro resposta
    escrevaln("-- Escolha um método para calcular a área do triângulo (A):")
    escrevaln("0 - Área = Base x Altura / 2")
    escrevaln("1 - Aréa do Triângulo Equilátero")
    escrevaln("2 - Fórmula de Heron (usando os 3 lados)")
    escreva("Opção: ")
    leia(resposta)
    retorne resposta
  }

  funcao vazio obterReal(cadeia mensagem, real &valor) {
    escreva(mensagem)
    leia(valor)
  }

  funcao inicio() {
    inteiro metodo = escolherMetodo()
    limpa()
    escolha (metodo) {
      caso 0: //clássico
        real area, base, altura
        obterReal("Insira o valor da base: ", base)
        obterReal("Insira o valor da altura: ", altura)
        area = base * altura / 2
        escreva("A área é de: ", area," u.a.")
      pare

      caso 1: //equilátero
        real area, lado
        obterReal("Insira o valor do lado: ", lado)
        area = mat.potencia(lado, 2) * mat.raiz(3, 2) / 4
        escreva("A área é de: ", area," u.a.")
      pare

      caso 2: //fórmula de heron
        real area, a, b, c, p
        obterReal("Insira o valor do 1º lado:", a)
        obterReal("Insira o valor do 2º lado:", b)
        obterReal("Insira o valor do 3º lado:", c)
        p = (a+b+c)/2
        area = mat.raiz( (p*(p-a)*(p-b)*(p-c)) , 2)
        escreva("A área é de: ", area," u.a.")
      pare

      caso contrario:
        escrevaln("Nenhuma opção selecionada.")
      pare
    }
  }
}
