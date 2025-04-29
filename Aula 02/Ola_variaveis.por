programa {
  // 2. Crie um programa que peça ao usuário seu
  // nome, sua idade e o nome da cidade onde
  // ele mora, depois imprima a mensagem:
  // “Olá meu nome é <Nome do Usuário>
  // tenho <idade> e moro em <cidade>”.
  funcao inicio() {
    cadeia nome, cidade
    inteiro idade
    escreva("Digite seu nome:")
    leia(nome)
    escreva("Digite sua idade em anos:")
    leia(idade)
    escreva("Digite a cidade onde você mora:")
    leia(cidade)

    escreva("=>\n")
    escreva("Olá, meu nome é ", nome, ". Tenho ", idade, " anos e moro em ", cidade, ".\n")
  }
}
