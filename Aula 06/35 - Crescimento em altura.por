programa {
  // Chico tem 1,50m e cresce 2 cm por ano, enquanto Juca tem 1,10m e cresce 3 cm por ano.
  // Faça um programa que calcule e imprima quantos anos serão necessários para que Juca seja maior que Chico.

  funcao inicio() {
    inteiro h_chico = 150, cresc_chico = 2
    inteiro h_juca = 110, cresc_juca = 3
    inteiro anos = 0

    enquanto (h_juca <= h_chico) {
      h_chico += cresc_chico
      h_juca += cresc_juca
      anos++
    }

    escreva("Serão necessários ", anos, " anos; difícil é crescer por ", anos, " anos...")
  }
}
