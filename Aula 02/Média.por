programa {
  funcao inicio() {
    real nota_P1, nota_P2, media
    escreva("Digite a nota da primeira prova:")
    leia(nota_P1)
    escreva("Digite a nota da segunda prova:")
    leia(nota_P2)

    media = (nota_P1 + nota_P2) / 2
    escreva("A média das notas {", nota_P1, " e ", nota_P2, "} é ", media, ".\n")
  }
}
