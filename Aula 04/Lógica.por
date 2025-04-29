programa {
  // Faça um algoritmo que leia 4 variáveis A,B,C e D
  // A seguir: se B > C e  D > A e C+D > A+B e C >= 0 e D >= 0 e A % 2 == 0 escrever a mensagem “valores aceitos”
  // senão escrever “valores não aceitos”.

  funcao inicio() {
    real a, b, c, d
    escreva("Digite valores numéricos reais. OBS: use '.' ao invés de ','.\n")
    escreva("A = ")
    leia(a)
    escreva("B = ")
    leia(b)
    escreva("C = ")
    leia(c)
    escreva("D = ")
    leia(d)

    se ((b > c) e (d > a) e (c+d > a+b) e (c >= 0) e (d >= 0) e (a % 2 == 0)) {
      escreva("Valores aceitos.")
    } senao {
      escreva("Valores não aceitos.")
    }
  }
}
