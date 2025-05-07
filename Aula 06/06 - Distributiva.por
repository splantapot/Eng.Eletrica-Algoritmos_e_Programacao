programa {
  // Receber 4 valores inteiros, e aplique o conceito da propriedade distributiva da
  // multiplicação para mostrar o valor final.

  //para calcular, apenas, seria:
  // dados (int) a, b, c , d e resultado
  // resultado = (a*c)+(a*d)+(b*c)+(b*d)

  inclua biblioteca Tipos --> tipos

  funcao cadeia texto_do_produto(inteiro a, inteiro b) {
    cadeia a_txt = tipos.inteiro_para_cadeia(a, 10)
    cadeia b_txt = tipos.inteiro_para_cadeia(b, 10)
    retorne "("+ a_txt + "x" + b_txt + ")"
  }

  funcao cadeia texto_da_soma(inteiro a, inteiro b) {
    cadeia a_txt = tipos.inteiro_para_cadeia(a, 10)
    cadeia b_txt = tipos.inteiro_para_cadeia(b, 10)
    retorne "("+ a_txt + "+" + b_txt + ")"
  }

  funcao inicio() {
    inteiro qnt = 4, numeros[qnt]

    para (inteiro n = 0; n < qnt; n++) {
      escreva("Insira o ", n+1, "º número inteiro:")
      leia(numeros[n])
    }

    escreva("\nSeja a expressão:")
    escreva("\n", texto_da_soma(numeros[0], numeros[1]), " x ", texto_da_soma(numeros[2], numeros[3]))
    escreva("\nTemos que:")
    escreva("\n", texto_da_soma(numeros[0], numeros[1]), " x ", texto_da_soma(numeros[2], numeros[3]), " =")
    escreva("\n", texto_do_produto(numeros[0], numeros[2]), " + ",
                  texto_do_produto(numeros[0], numeros[3]), " + ",
                  texto_do_produto(numeros[1], numeros[2]), " + ",
                  texto_do_produto(numeros[1], numeros[3]), " ="
    )
    escreva("\n", numeros[0]*numeros[2], " + ",
                  numeros[0]*numeros[3], " + ",
                  numeros[1]*numeros[2], " + ",
                  numeros[1]*numeros[3], " ="
    )
    escreva("\n", numeros[0]*numeros[2] + numeros[0]*numeros[3] + numeros[1]*numeros[2] + numeros[1]*numeros[3])
  }
}
