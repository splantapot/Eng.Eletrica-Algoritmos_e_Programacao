programa {
  // Receber 4 valores inteiros, e aplique o conceito da propriedade distributiva da
  // multiplicação para mostrar o valor final.
  inclua biblioteca Tipos --> tipos

  funcao cadeia txtSoma(inteiro x, inteiro y) {
    // Retorna a soma "(a + b)" em cadeia por extenso
    cadeia tx = tipos.inteiro_para_cadeia(x, 10)
    cadeia ty = tipos.inteiro_para_cadeia(y, 10)
    retorne "("+ tx + " + " + ty + ")"
  }
  funcao cadeia txtProduto(inteiro x, inteiro y) {
    // Retorna a soma "(a + b)" em cadeia por extenso
    cadeia tx = tipos.inteiro_para_cadeia(x, 10)
    cadeia ty = tipos.inteiro_para_cadeia(y, 10)
    retorne "("+ tx + " x " + ty + ")"
  }
  
  funcao inicio() {
    inteiro a, b, c, d
    escreva("OBS: Digite apenas um valor por linha. Confirme cada valor com 'enter'.\n")  
    escreva("Digite 4 valores inteiros:\n")
    leia(a, b, c, d)

    // (a + b) * (c + d) =
    // (a*c) + (a*d) + (b*c) + (b*d) = [...]

    limpa()
    escreva(txtSoma(a, b), " x ", txtSoma(c, d), " =\n")
    escreva(txtProduto(a, c), " + ", txtProduto(a, d), " + ", txtProduto(b, c), " + ", txtProduto(b, d), " =\n")
    escreva(a*c, " + ", a*d, " + ", b*c, " + ", b*d, " =\n")
    escreva((a*c)+(a*d)+(b*c)+(b*d),"\n")
  }
}
