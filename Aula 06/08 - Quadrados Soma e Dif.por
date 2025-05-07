programa {
  // Receba duas variáveis, aplique a propriedade do quadrado da soma e do quadrado da
  // diferença aplicada à propriedade dos produtos notáveis.

  inclua biblioteca Tipos --> tipos
  inclua biblioteca Texto --> txt

  funcao cadeia substituir_AB(cadeia texto, cadeia a, cadeia b) {
    retorne txt.substituir(txt.substituir(texto, "a", a), "b", b)
  }

  funcao inicio() {
    inteiro a, b
    cadeia a_txt, b_txt
    cadeia quad_soma = "(a+b)²", quad_soma_extenso = "a² + 2*a*b + b²"
    cadeia quad_dif = "(a-b)²", quad_dif_extenso = "a² - 2*a*b + b²"

    // inteiro_para_cadeia

    escreva("Digite o primeiro número inteiro:")
    leia(a)
    a_txt = tipos.inteiro_para_cadeia(a, 10)
    escreva("Digite o segundo número inteiro:")
    leia(b)
    b_txt = tipos.inteiro_para_cadeia(b, 10)

    escreva("Temos que:")
    escreva("\n", quad_soma, " = ", quad_soma_extenso)
    escreva("\n", quad_dif, " = ", quad_dif_extenso)
    escreva("\nOu seja:")
    escreva("\n", substituir_AB(quad_soma, a_txt, b_txt), " = ",
                  substituir_AB(quad_soma_extenso, a_txt, b_txt), " = ",
                  ((a*a) + (2*a*b)) + (b*b)
    )
    escreva("\n", substituir_AB(quad_dif, a_txt, b_txt), " = ",
                  substituir_AB(quad_dif_extenso, a_txt, b_txt), " = ",
                  ((a*a) - (2*a*b)) + (b*b)
    )
  }
}
