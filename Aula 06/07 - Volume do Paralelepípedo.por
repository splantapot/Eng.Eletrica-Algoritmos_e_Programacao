programa {
  // Calcular o volume de uma caixa com o formato retangular mostrando ao final as
  // medidas informadas e o referido volume

  funcao inicio() {
    real base, largura, altura, volume
    escreva("OBS: considere a mesma unidade de medida para todos os valores. Use '.' no lugar de ','.\n")
    escreva("Digite a base:")
    leia(base)
    escreva("Digite a largura:")
    leia(largura)
    escreva("Digite a altura:")
    leia(altura)

    volume = base * largura * altura
    escreva("O volume da caixa é de: ", volume, " u.v.")
  }
}
