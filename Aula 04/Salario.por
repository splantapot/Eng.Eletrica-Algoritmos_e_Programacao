programa {
  //  Considere o problema a seguir, onde se
  //  estabelecem 3 condições para se calcular
  //  o reajuste de salário de um funcionário:
  //    - Para salário < do que 500, o reajuste será de 15%
  //    - Para salário >= 500 mas <= 1000, o reajuste será de 10%
  //    - Para salário > 1000, o reajuste será de 5%

  funcao inicio() {
    real salario, reajuste
    escreva("Digite seu salário (em R$; use '.' ao invés de ','):\n")
    leia(salario)

    se (salario < 500) {
      reajuste = 0.15 //15%
    } senao se (salario >= 500 e salario <= 1000) {
      reajuste = 0.1 //10%
    } senao {
      reajuste = 0.05 //5%
    }

    salario *= reajuste + 1
    escreva("Seu novo salário é de R$ ", salario)
  }
}
