programa {
  // Escrever um programa que lê o número de um vendedor de uma empresa, seu salário fixo e o total de vendas por ele efetuadas.
  // Cada vendedor recebe um salário fixo, mais uma comissão proporcional às vendas por ele efetuadas.
  // A comissão é de 3% sobre o total de vendas.
  // Escrever o número do vendedor, o total de suas vendas, seu salário fixo e seu salário total.
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    cadeia numero_vendedor
    real salario_fixo, total_vendas 

    escreva("Digite o número do vendedor: ")
    leia(numero_vendedor)

    escreva("# OBS: Use '.' ao invés de ','.\n")
    escreva("Informe seu salário fixo em R$: ")
    leia(salario_fixo)

    escreva("Informe o total em vendas do funcionário, em R$: ")
    leia(total_vendas)

    real salario_total = salario_fixo + (total_vendas * 0.03)
    salario_total = mat.arredondar(salario_total, 2)

    limpa()

    escreva("Nº do vendedor: ", numero_vendedor, "\n")
    escreva("Vendas totais no mês: R$", total_vendas, "\n")
    escreva("Salário fixo: R$", salario_fixo, "\n")
    escreva("Salário total: R$", salario_total, "\n")
  }
}
