programa {
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    const real desconto_seguridade_social = 0.08
    real valor_hora_aula, salario, salario_liquido
    inteiro qnt_horas_mes

    escreva("Digite a quantidade de horas trabalhadas no mês (apenas números):")
    leia(qnt_horas_mes)
    escreva("Digite o valor da hora-aula em R$ (use '.'):")
    leia(valor_hora_aula)

    salario = mat.arredondar(valor_hora_aula * qnt_horas_mes, 2)
    salario_liquido = mat.arredondar(salario * (1 - desconto_seguridade_social), 2)

    escreva("===== \n")
    escreva("O salário mensal é de R$", salario)
    escreva("\nO salário líquido mensal é de R$", salario_liquido)
    escreva("\n")
  }
}