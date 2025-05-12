programa {
  /* Proposta: */
  /* Criar um algoritmo que leia um valor de hora e informe quantos minutos se passaram desde o início do dia. */

  funcao inicio() {
    real hora // REAL: aceita "13:30" (treze e meia) como 13.5, por exemplo.
    escreva("# OBS 1: Use '.' ao invés de ','.\n")
    escreva("# OBS 2: É válido inserir 'horas quebradas'. Ex: Para '13:30', insira '13.5'.\n")
    escreva("Digite um valor em horas: ")
    leia(hora)

    se (hora < 0) {
      escreva("Horários negativos não são válidos.\n")
    } senao {
      real minutos = hora * 60
      escreva("Se passaram ", minutos, " minutos desde o início do dia.\n")
    }
  }
}
