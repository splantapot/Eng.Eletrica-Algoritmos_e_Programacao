programa {
  /* Proposta: */
  /* Entrar com a base e a altura de um retângulo e imprimir seu perímetro, sua área e sua diagonal. */

  inclua biblioteca Matematica --> mat
  const inteiro casas_decimais = 10 // Usado para reduzir a imprecisão do "real". Ex: 14.54999999...

  // Função que solicita uma mensagem ao usuário e atribui o valor da resposta à variável referenciada em "valor".
  funcao vazio obterReal(cadeia mensagem, real &valor) {
    escreva(mensagem)
    leia(valor)
  }

  // Calcular Perímetro
  funcao real calcularPerimetro(real base, real altura) {
    real perimetro = (base + altura)*2
    retorne mat.arredondar(perimetro, casas_decimais)
  }

  // Calcular Área
  funcao real calcularArea(real base, real altura) {
    real area = base * altura
    retorne mat.arredondar(area, casas_decimais)
  }

  // Calcular Diagonal
  funcao real calcularDiagonal(real base, real altura) {
    // d² = b² + h² -> diagonal² = base² + altura²
    real diagonal = mat.raiz(mat.potencia(base, 2) + mat.potencia(altura, 2), 2)
    retorne diagonal //mat.arredondar(diagonal, casas_decimais)
  }

  funcao inicio() {
    real base, altura
    escreva("# OBS 1: Use '.' ao invés de ','.\n")
    escreva("# OBS 2: Informe todos os valores na mesma unidade de medida.\n")

    obterReal("Informe o valor da base do retângulo: ", base)
    obterReal("Informe o valor da altura do retângulo: ", altura)

    se (base <= 0 ou altura <= 0) {
      // 'base' e 'altura' não são valores válidos.
      escreva("A 'base' e a 'altura' devem ser valores reais positivos e maiores que 0.\n")
    } senao {
      // 'base' e 'altura' válidos.
      limpa()
      escreva("- Retângulo -", "\n")
      escreva("Base: ", base, "\n")
      escreva("Altura: ", altura, "\n")
      escreva("Perímetro: ", calcularPerimetro(base, altura), "\n")
      escreva("Área: ", calcularArea(base, altura), "\n")
      escreva("Diagonal ", calcularDiagonal(base, altura), "\n")
    }
  }
}