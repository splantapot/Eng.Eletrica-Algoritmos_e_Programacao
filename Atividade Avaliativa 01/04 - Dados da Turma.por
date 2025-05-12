programa {
  /* Proposta: */ /*
  Dados: Sexo e idade dos alunos.
  Construa um algoritmo para verificar em cada classe com 50 alunos quantos são
  do sexo feminino e masculino e quantos da classe toda são maiores que 18 anos.
  Ao final, mostre no vídeo os totais.
  */

  inclua biblioteca Matematica --> mat

  funcao vazio obterInteiro(cadeia mensagem, inteiro &valor) {
    escreva(mensagem)
    leia(valor)
  }

  funcao real calcularPorcentagem(inteiro qnt, inteiro total) {
    real porcentagem = (qnt / total) * 100
    retorne mat.arredondar(porcentagem, 2)
  }

  funcao inicio() {
    const inteiro total_alunos = 50
    inteiro qnt_masculino, qnt_feminino, qnt_maiores18
    // qnt_masculino = alunos do sexo masculino
    // qnt_feminino = alunos do sexo feminino
    // qnt_maiores18 = alunos maiores que 18

    escreva("#OBS 1: Apenas serão aceitos valores inteiros positivos ou iaguais a 0.\n")
    obterInteiro("Digite a quantidade de alunos do sexo masculino: ", qnt_masculino)
    obterInteiro("Digite a quantidade de alunos do sexo feminino: ", qnt_feminino)
    obterInteiro("Digite a quantidade de alunos com mais de 18 anos: ", qnt_maiores18)

    se (qnt_masculino < 0 ou qnt_feminino < 0 ou qnt_maiores18 < 0) {
      escreva("Os valores inseridos devem ser positivos.\n")

    } senao se ((qnt_masculino + qnt_feminino > total_alunos) ou qnt_maiores18 > total_alunos) {
      escreva("Você informou uma quantidade de alunos maior que o total da turma.\n")

    } senao {
      limpa()
      escreva("- Dados da Turma:\n")
      escreva("Total de alunos: ", total_alunos, " (", calcularPorcentagem(total_alunos, total_alunos), " %)\n")
      escreva("Alunos do sexo masculino: ", qnt_masculino, " (", calcularPorcentagem(qnt_masculino, total_alunos), " %)\n")
      escreva("Alunos do sexo feminino: ", qnt_feminino, " (", calcularPorcentagem(qnt_feminino, total_alunos), " %)\n")
      escreva("Alunos com mais de 18 anos: ", qnt_maiores18, " (", calcularPorcentagem(qnt_maiores18, total_alunos), " %)\n")
    }
  }
}
