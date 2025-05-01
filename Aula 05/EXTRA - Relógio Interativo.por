programa {
  // Configurar Bibliotecas
  inclua biblioteca Calendario --> tempo
  inclua biblioteca Texto --> texto
  inclua biblioteca Util --> util
  inclua biblioteca Tipos --> tipos
  inclua biblioteca Graficos --> gfc

  // Configurar Gráficos e Janela (jan)
  const inteiro jan_comp = 300, jan_alt = 300, jan_margem = 10, jan_margem_topo = 35
  const cadeia jan_titulo = "Calendário Interativo"
  const inteiro txt_tamanho = 30
  const inteiro cor_back = gfc.COR_PRETO, cor_txt = gfc.COR_BRANCO
  const inteiro linha_tamanho = txt_tamanho + (jan_margem/2)
  inteiro linha_atual = 1

  funcao vazio proxima_linha() {
    linha_atual += 1
  }

  funcao vazio resetar_linha() {
    linha_atual = 1
  }

  funcao inteiro obter_linha() {
    retorne linha_atual * linha_tamanho
  }

  // Configurar Tempo
  const cadeia meses[12] = {
    "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
    "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
  }
  const cadeia dias[7] = {
    "Domingo", "Segunda-feira", "Terça-feira",
    "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"
  }

  funcao cadeia obter_horario(logico incluir_ms) {
    cadeia hora, minuto, segundo, milis, horario_em_texto
    hora = tipos.inteiro_para_cadeia(tempo.hora_atual(), 10)
    minuto = tipos.inteiro_para_cadeia(tempo.minuto_atual(), 10)
    segundo = tipos.inteiro_para_cadeia(tempo.segundo_atual(), 10)

    hora = texto.preencher_a_esquerda("0", 2, hora)
    minuto = texto.preencher_a_esquerda("0", 2, minuto)
    segundo = texto.preencher_a_esquerda("0", 2, segundo)

    horario_em_texto = hora + ":" + minuto + ":" + segundo
    se (incluir_ms) {
      milis = tipos.inteiro_para_cadeia(tempo.milisegundo_atual(), 10)
      milis = texto.preencher_a_esquerda("0", 2, milis)
      horario_em_texto = horario_em_texto + "." + milis
    }

    retorne horario_em_texto
  }

  // Configurar texto
  funcao vazio limpar_resposta(cadeia &resposta) {
    resposta = ""
  }

  funcao logico obter_e_limpar_resposta(cadeia &resposta) {
    resposta = texto.caixa_baixa(resposta)
    se (resposta == "s" ou resposta == "sim" ou resposta == "1") {
      limpar_resposta(resposta)
      retorne verdadeiro //ok, entendemos a resposta

    } senao se (resposta != "n" e resposta != "não" e resposta != "0") {
      escreva("** OBS: Sua resposta foi '", resposta, "', interpretamos como 'não'.\n\n") // Alguma resposta não prevista
    }
    limpar_resposta(resposta)
    retorne falso
  }


  funcao inicio() {
    // Questionamentos
    cadeia resposta
    logico exibir_dia_semana, exibir_mes_em_extenso, exibir_horario_com_ms
    inteiro cor_escolhida
    escreva("Vamos à interatividade! Responda com (S, Sim ou 1) para 'Sim' e (N, Não ou 0) para 'Não'.", "\n")
    escreva("Deseja exibir o dia da semana? ")
    leia(resposta)

    exibir_dia_semana = obter_e_limpar_resposta(resposta)
    escreva("Deseja que o mês apareça por extenso? ")
    leia(resposta)
    exibir_mes_em_extenso = obter_e_limpar_resposta(resposta)

    escreva("Gostaria de ver os milisegundos do horário? ")
    leia(resposta)
    exibir_horario_com_ms = obter_e_limpar_resposta(resposta)

    escreva("1 = Vermelho | 2 = Verde | 3 = Azul | 4 = Amarelo | Qualquer outro valor = Branco", "\n")
    escreva("Escolha uma cor da lista acima:")
    leia(resposta)
    escolha (resposta) {
      caso "1":
        cor_escolhida = gfc.COR_VERMELHO
        pare
      caso "2":
        cor_escolhida = gfc.COR_VERDE
        pare
      caso "3":
        cor_escolhida = gfc.COR_AZUL
        pare
      caso "4":
        cor_escolhida = gfc.COR_AMARELO
        pare
      caso contrario:
        cor_escolhida = cor_txt
    }
    

    // Inicializar modo gráfico
    gfc.iniciar_modo_grafico(falso)
    gfc.definir_titulo_janela(jan_titulo)
    gfc.definir_dimensoes_janela(jan_comp, jan_alt)
    gfc.definir_tamanho_texto(txt_tamanho)

    // Loop principal
    enquanto (verdadeiro) {
      // Limpar tela
      gfc.definir_cor(cor_back)
      gfc.limpar()
      resetar_linha()
      
      // Escrever texto
      gfc.definir_cor(cor_escolhida)

      const cadeia dia_semana_atual = dias[tempo.dia_semana_atual() - 1] //Parseia: Dia da semana (int) ->  Dia da semana por extenso (cadeia)
      const cadeia mes_atual = meses[tempo.mes_atual() - 1]  //Parseia: Mês (int) ->  Mês por extenso (cadeia)
      const cadeia dia_mes_atual = tipos.inteiro_para_cadeia(tempo.dia_mes_atual(), 10) //Parseia: Dia (int, ex: 1) ->  Dia (cadeia, ex: "1")
      const cadeia ano_atual = tipos.inteiro_para_cadeia(tempo.ano_atual(), 10) //Parseia: Dia (int, ex: 1) ->  Dia (cadeia, ex: "1")
      
      const cadeia horario_atual = obter_horario(exibir_horario_com_ms)

      // Dia da semana
      se (exibir_dia_semana) {
        gfc.desenhar_texto(jan_margem, obter_linha(), dia_semana_atual+",") //Escreve ou oculta o dia
        proxima_linha()
      }
      // Mês
      se (exibir_mes_em_extenso) {
        gfc.desenhar_texto(jan_margem, obter_linha(), dia_mes_atual + " de " + mes_atual + " de " + ano_atual)
      } senao {
        cadeia mes_atual_numero = tipos.inteiro_para_cadeia(tempo.mes_atual(), 10) // Parseia Mês (int, ex:1) -> Mês (cadeia, ex: "1")
        mes_atual_numero = texto.preencher_a_esquerda("0", 2, mes_atual_numero)
        gfc.desenhar_texto(jan_margem, obter_linha(), dia_mes_atual + "/" + mes_atual_numero + "/" + ano_atual)
      }
      proxima_linha()
      gfc.desenhar_texto(jan_margem, obter_linha(), horario_atual)

      // Renderiza e continua o loop
      gfc.renderizar()
      util.aguarde(1)
    }
  }
}
