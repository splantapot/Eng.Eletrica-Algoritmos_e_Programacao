programa {
  /* Proposta: */ /*
  A contribuição para o INSS é calculada da seguinte forma:
    a. Salário bruto até três salários mínimos – 8%
    b. Salário bruto acima de três salários mínimos – 10%
    c. Para contribuições que seriam maiores que o salário mínimo, a importância é de um salário mínimo.
  Elabore um algoritmo que, para uma entrada de salário bruto e salário mínimo,
  calcule a contribuição ao INSS e o salário líquido restante.
  */

  inclua biblioteca Matematica --> mat

  funcao vazio obterReal(cadeia mensagem, real &valor) {
    escreva(mensagem)
    leia(valor)
  }

  // Arredonda um valor real para a nomeclatura monetária (2 casas decimais).
  funcao vazio arredondar_dinheiro(real &valor) {
    valor = mat.arredondar(valor, 2)
  }

  funcao inicio() {
    real salario_bruto, salario_minimo

    escreva("# OBS 1: Use '.' ao invés de ','.\n")
    obterReal("Informe o salário bruto em R$: ", salario_bruto)
    obterReal("Informe o salário mínimo em R$: ", salario_minimo)

    se (salario_bruto <= 0) {
      escreva("O 'salário bruto' informado deve ser positivo e maior que 0.")

    } senao se (salario_minimo <= 0 ) {
      escreva("O 'salário mínimo' informado deve ser positivo e maior que 0.")

    } senao {
      
      real contribuicao
      se (salario_bruto <= 3 * salario_minimo) {
        // Salário bruto até 3 salários mínimos.
        contribuicao = 0.08 * salario_bruto
      } senao {
        // Salário bruto superior a 3 salários mínimos
        contribuicao = 0.1 * salario_bruto
      }

      se (contribuicao > salario_minimo) {
        // Se a contribuição for maior que o salário mínimo, a contribuição será de um salário mínimo.
        contribuicao = salario_minimo
      }

      arredondar_dinheiro(contribuicao)

      limpa()
      escreva("- Cálculo do INSS -\n")
      escreva("Salário Bruto: R$", salario_bruto, "\n")
      escreva("Salário Mínimo: R$", salario_minimo, "\n")
      escreva("Contribuição ao INSS: R$", contribuicao, "\n")
      escreva("Salário Líquido: R$", salario_bruto - contribuicao, "\n")
    }
  }
}
