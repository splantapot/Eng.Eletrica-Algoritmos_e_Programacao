programa {
  funcao inicio() {
    inteiro qnt = 2, nums[qnt], soma, diferenca, produto
    real quociente

    para (inteiro n = 0; n < qnt; n++) {
      escreva("Digite o ", n+1, "º número inteiro:")
      leia(nums[n])
    }

    soma = nums[0] + nums[1]
    diferenca = nums[0] - nums[1]
    produto = nums[0] * nums[1]

    escreva("Temos que:\n")
    escreva(nums[0], " + ", nums[1], " = ", soma, "\n")
    escreva(nums[0], " - ", nums[1], " = ", diferenca, "\n")
    escreva(nums[0], " * ", nums[1], " = ", produto, "\n")
    se (nums[1] != 0) {
      quociente = nums[0] / nums[1]
      escreva(nums[0], " / ", nums[1], " = ", quociente, "\n")
    } senao {
      escreva("Não existe divisão por 0.", "\n")
    }
  }
}
