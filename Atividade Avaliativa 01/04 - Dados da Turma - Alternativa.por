programa {
  /* Proposta: */ /*
  Dados: Sexo e idade dos alunos.
  Construa um algoritmo para verificar em cada classe com 50 alunos quantos são
  do sexo feminino e masculino e quantos da classe toda são maiores que 18 anos.
  Ao final, mostre no vídeo os totais.
  */

  inclua biblioteca Matematica --> mat

  funcao logico sexo_valido(inteiro sexo) {
    retorne sexo == 0 ou sexo == 1
  }

  funcao logico eh_sexo_feminino(inteiro sexo) {
    retorne sexo == 0
  }

  funcao vazio verificar_sexo_aluno(inteiro numero, inteiro &qnt_feminino, inteiro &qnt_masculino) {
    inteiro sexo = -1
      enquanto (nao sexo_valido(sexo)) {
        limpa()
        escreva("Informe o sexo do ", numero,"º aluno conforme a lista:\n")
        escreva("| 0 = Feminino | 1 = Masculino |\n")
        escreva("Opção: ")
        leia(sexo)
      }

      se (eh_sexo_feminino(sexo)) {
        qnt_feminino += 1
      } senao {
        qnt_masculino += 1
      }
  }

  funcao logico idade_valida(inteiro idade) {
    retorne idade >= 0
  }

  funcao logico eh_maior18(inteiro idade) {
    retorne idade > 18
  }

  funcao vazio verificar_idade_aluno(inteiro numero, inteiro &qnt_maiores18) {
    inteiro idade = -1
      enquanto (nao idade_valida(idade)) {
        limpa()
        escreva("Informe a idade do ", numero,"º aluno em anos: ")
        leia(idade)
      }

      se (eh_maior18(idade)) {
        qnt_maiores18 += 1
      }
  }

  funcao real calcularPorcentagem(inteiro qnt, inteiro total) {
    real porcentagem = (qnt / total) * 100
    retorne mat.arredondar(porcentagem, 2)
  }

  funcao inicio() {
    const inteiro total_alunos = 50
    inteiro qnt_feminino = 0, qnt_masculino = 0, qnt_maiores18 = 0

    cadeia resposta

    // Inicia a aplicação
    escreva("Irei questionar sobre os dados dos alunos da turma.\n")
    escreva("Total de alunos: ", total_alunos, ".\n")
    escreva("Digite e confirme qualquer valor para continuar...\n")
    leia(resposta)

    // Loop
    para (inteiro n = 1; n <= total_alunos; n++) {
      verificar_sexo_aluno(n, qnt_feminino, qnt_masculino)
      verificar_idade_aluno(n, qnt_maiores18)
    }

    // Escreva os dados da turma
    limpa()
    escreva("- Dados da Turma:\n")
    escreva("Total de alunos: ", total_alunos, " (", calcularPorcentagem(total_alunos, total_alunos), " %)\n")
    escreva("Alunos do sexo masculino: ", qnt_masculino, " (", calcularPorcentagem(qnt_masculino, total_alunos), " %)\n")
    escreva("Alunos do sexo feminino: ", qnt_feminino, " (", calcularPorcentagem(qnt_feminino, total_alunos), " %)\n")
    escreva("Alunos com mais de 18 anos: ", qnt_maiores18, " (", calcularPorcentagem(qnt_maiores18, total_alunos), " %)\n")
  }
}
