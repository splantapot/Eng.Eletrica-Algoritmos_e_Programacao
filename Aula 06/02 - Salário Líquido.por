programa {
  // Calcule o salário líquido de um professor, devendo para isto ser informado: horas
  // trabalhadas ao mês, o valor da hora aula, o percentual de desconto sobre a seguridade
  // social de 8%.
  inclua biblioteca Matematica --> mat

  funcao real obterSalario(real hora_aula, inteiro horas) {
    real salario = hora_aula * horas
    retorne mat.arredondar(salario, 2)
  }

  funcao real obterSalarioLiq(real salario) {
    const real desconto = 0.08 // 8%
    real salario_liq = salario*(1 - desconto)
    retorne mat.arredondar(salario_liq, 2)
  }

  funcao inicio() {
    inteiro horas
    real hora_aula, salario, salario_liq
    escreva("Informe a quantidade de horas trabalhadas (em hora):")
    leia(horas)
    escreva("Informe o valor da hora-aula (em R$, use '.'):")
    leia(hora_aula)

    salario = obterSalario(hora_aula, horas)
    salario_liq = obterSalarioLiq(salario)

    limpa()
    escreva("Hora-aula: R$", hora_aula, "/h\n")
    escreva("Horas totais: ", horas, "h\n")
    escreva("Salario: R$", salario, "\n")
    escreva("Desconto: R$", salario-salario_liq, "\n")
    escreva("Salario líquido: R$", salario_liq, "\n")
  }
}
