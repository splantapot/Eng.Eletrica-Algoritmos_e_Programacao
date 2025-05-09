programa {
  // Calcule e mostre o valor atual de uma prestação atrasada, considerando que a mesma
  // tem 30 dias de atraso e sobre esta incide uma multa de 10% ao mês. Mostre o valor
  // atualizado, o valor original e os acréscimos por atraso.
  inclua biblioteca Matematica --> mat
  funcao real arredondar(real valor) {
    retorne mat.arredondar(valor, 2)
  }

  funcao real obterJuros(real capital, real taxa, real tempo) {
    // J = C * i * t
    // A 'taxa' e o 'tempo' devem estar na mesma unidade de medida de tempo.
    real juros = capital * taxa * tempo
    retorne arredondar(juros)
  }

  funcao inicio() {
    real prestacao, juros
    escreva("OBS: use '.' ao invés de ','.\n")
    escreva("Informe o valor original da prestação (em R$):")
    leia(prestacao)
    prestacao = arredondar(prestacao) // Garante que a prestação possua 2 casas decimais
    juros = obterJuros(prestacao, 0.1, 1.0) // Taxa: 10% = 0.1 ao mês, Tempo: 30 dias = 1 mês. Unidades de tempo iguais.

    limpa()
    escreva("Valor atualizado: R$", arredondar(juros+prestacao), "\n")
    escreva("Acréscimos por atraso (juros): R$", juros, "\n")
    escreva("Valor original da prestação: R$", prestacao, "\n")
    
  }
}
