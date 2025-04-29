programa {
  funcao inicio() {
    real qnt = 4, numeros[qnt], soma = 0, media
    para (inteiro n = 0; n < qnt; n++) {
      escreva("Digite um valor real (não use ','):")
      leia(numeros[n])
      soma += numeros[n]
    }

    media = soma / qnt

    escreva("\nA soma dos números do conjunto A = {", numeros, "} é igual a ", soma, ".")
    escreva("\nA média dos números do conjunto A = {", numeros, "} é igual a ", media, ".\n")
  }
}
