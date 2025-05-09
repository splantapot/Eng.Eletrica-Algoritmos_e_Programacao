programa {
  // Faça um programa que receba dois valores do tipo inteiro e efetue as quatro operações
  // básicas, imprimindo os resultados na tela.

  funcao vazio obterInt(cadeia mensagem, inteiro &valor) {
    // Obtém um inteiro de uma resposta do usuário.
    escreva(mensagem)
    leia(valor)
  }

  funcao inicio() {
    inteiro a, b
    obterInt("Insira um número inteiro para 'a': ", a)
    obterInt("Insira um número inteiro para 'b': ", b)

    limpa()
    escreva("Se a = ", a, " e b = ", b, ", então:\n")
    escreva("a + b = ", a + b, "\n")
    escreva("a - b = ", a - b, "\n")
    escreva("a x b = ", a * b, "\n")
    escreva("a / b = ", a / b, "\n")
  }
}
