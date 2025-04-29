programa {
  // Escreva um programa que peça ao usuário para informar
  // o peso e a altura com o comando leia, depois calcule e
  // imprima na tela o IMC dessa pessoa sabendo que a
  // fórmula do IMC é (peso/altura²).
  inclua biblioteca Matematica --> mat

  funcao inicio() {
    real peso, altura, imc

    escreva("Digite seu peso (em kg):")
    leia(peso)
    escreva("Digite sua altura (em m):")
    leia(altura)
    
    imc = peso / mat.potencia(altura, 2)
    escreva("Seu IMC é de: ", imc, ".\n")
  }
}
