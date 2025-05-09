programa {
  inclua biblioteca Calendario --> tempo
  inclua biblioteca Tipos --> tipos
  //2024 é bissexto => anos bissextos são múltiplos de 4
  const inteiro dias_meses[12] = {31,28,31,30,31,30,31,31,30,31,30,31}

  // Obter data atual
  const inteiro dia_atual = tempo.dia_mes_atual()
  const inteiro mes_atual = tempo.mes_atual()
  const inteiro ano_atual = tempo.ano_atual()

  funcao vazio obterInt(cadeia mensagem, inteiro &valor) {
    // Obtém um inteiro de uma resposta do usuário.
    escreva(mensagem)
    leia(valor)
  }

  funcao logico eAnoB6(inteiro ano) {
    // Retorna verdadeiro se o ano é bissexto
    retorne (ano % 400 == 0) ou (ano % 4 == 0 e ano % 100 != 0)
  }

  funcao inteiro calcular_dias_decorridos(inteiro dia, inteiro mes, inteiro ano) {
    //Calcula todos os dias decorridos até a data
    inteiro dias = 0
    para (inteiro a = 1; a < ano; a++) {
      se (eAnoB6(a)) dias += 1
      dias += 365
    }
    para (inteiro m = 1; m < mes; m++) {
      se (m==2 e eAnoB6(ano)) dias += 1
      dias += dias_meses[m-1]
    }
    dias += dia
    retorne dias
  }

  funcao cadeia escreverData(inteiro dia, inteiro mes, inteiro ano) {
    cadeia tDia = tipos.inteiro_para_cadeia(dia, 10)
    cadeia tMes = tipos.inteiro_para_cadeia(mes, 10)
    cadeia tAno = tipos.inteiro_para_cadeia(ano, 10)
    retorne tDia+"/"+tMes+"/"+tAno
  }

  funcao logico dataValido(inteiro dia, inteiro mes, inteiro ano) {
    //Verifica se um dia existe
    se (mes > 12) { // Mês é maior que o número de meses no ano
      retorne falso
    } senao se (
        (dia > dias_meses[mes-1]) ou //Dia é maior que o número de dias no mês
        (ano > ano_atual) ou // Ano é maior que o ano atual
        (ano == ano_atual e mes > mes_atual) ou // Mês é maior que mes atual
        (ano == ano_atual e mes == mes_atual e dia > dia_atual)
    ) {
      retorne falso
    } senao {
      retorne verdadeiro
    }
  }

  funcao inicio() {
    inteiro dia_nasc, mes_nasc, ano_nasc, idade_em_dias
    escreva("OBS: utilize apenas números.\n")
    obterInt("Insira o dia do seu nascimento:", dia_nasc)
    obterInt("Insira o mês do seu nascimento:", mes_nasc)
    obterInt("Insira o ano do seu nascimento:", ano_nasc)
    limpa()

    se (dataValido(dia_nasc, mes_nasc, ano_nasc)) {
      idade_em_dias = calcular_dias_decorridos(dia_atual, mes_atual, ano_atual) - calcular_dias_decorridos(dia_nasc, mes_nasc, ano_nasc)


      escreva("Se você nasceu em: ", escreverData(dia_nasc, mes_nasc, ano_nasc), "\n")
      escreva("E hoje é: ", escreverData(dia_atual, mes_atual, ano_atual), "\n")
      escreva("Então sua idade é de ", idade_em_dias, " dias.\n")

    } senao {
      escreva("A data ", escreverData(dia_nasc, mes_nasc, ano_nasc), " não é válida.")
    }
  }
}
