programa {
  // A contribuição total a ser paga mensalmente ao INSS é igual a 20% do salário de um
  // trabalhador, sendo 8% pago pelo funcionário e 12% pago pela empresa. Escreva um
  // programa que leia o salário de um trabalhador e exiba os valores a serem pagos ao INSS
  // pelo trabalhador e pela empresa.

  inclua biblioteca Matematica --> mat

  funcao real obter_porcentagem_em_real(real salario, real porcentagem) {
    retorne mat.arredondar(salario*porcentagem/100, 2)
  }

  funcao inicio() {
    real salario
    escreva("OBS: Use '.' ao invés de ','.\n")
    escreva("Digite o salário em R$: ")
    leia(salario)
    se (salario <= 0) {
      escreva("O salario deve ser um real positivo. (maior que 0)")
    } senao {
      limpa()
      escreva("Salário: R$ ", salario, "\n")
      escreva("Valor a ser pago pelo trabalhador: R$ ", obter_porcentagem_em_real(salario, 8.0), "\n")
      escreva("Valor a ser pago pela empresa: R$ ", obter_porcentagem_em_real(salario, 12.0), "\n")
    }
  }
}
