programa {
  // Escreva um programa que leia um número entre 1 e 12 e imprima o mês correspondente.
  // Caso o usuário digite um número fora desse intervalo,
  // deverá aparecer uma mensagem informando que
  // não existe um mês correspondente.

  funcao inicio() {
      inteiro numero_mes
      escreva("Digite o número do mês, de 1 a 12:")
      leia(numero_mes)

      escolha (numero_mes) {
        caso 1:
          escreva("Você está em janeiro.")
          pare
        
        caso 2:
          escreva("Você está em fevereiro.")
          pare
        
        caso 3:
          escreva("Você está em março.")
          pare
        
        caso 4:
          escreva("Você está em abril.")
          pare
        
        caso 5:
          escreva("Você está em maio.")
          pare
        
        caso 6:
          escreva("Você está em junho.")
          pare
        
        caso 7:
          escreva("Você está em julho.")
          pare
        
        caso 8:
          escreva("Você está em agosto.")
          pare
        
        caso 9:
          escreva("Você está em setembro.")
          pare

        caso 10:
          escreva("Você está em outubro.")
          pare

        caso 11:
          escreva("Você está em novembro.")
          pare

        caso 12:
          escreva("Você está em dezembro.")
          pare
        
        caso contrario:
          escreva("Não existe um mês correspondente.")
          pare
      }
  }
}
