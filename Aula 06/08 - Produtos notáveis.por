programa {
  // Receba duas variáveis, aplique a propriedade do quadrado da soma e do quadrado da
  // diferença aplicada à propriedade dos produtos notáveis.
  // (a+b)² = a² + 2ab + b²
  // (a-b)² = a² - 2ab + b²
  inclua biblioteca Tipos --> tipos
  inclua biblioteca Texto --> txt
  inclua biblioteca Matematica --> mat

  funcao cadeia substituirAB(cadeia texto, inteiro a, inteiro b) {
    cadeia ta = tipos.inteiro_para_cadeia(a, 10)
    cadeia tb = tipos.inteiro_para_cadeia(b, 10)
    texto = txt.substituir(texto, "a", ta)
    texto = txt.substituir(texto, "b", tb)
    retorne texto
  }

  funcao inicio() {
    inteiro a, b
    cadeia soma = "(a + b)²", soma_ext = "a² + 2*a*b + b²"
    cadeia dif = "(a - b)²", dif_ext = "a² - 2*a*b + b²"

    escreva("Digite o valor inteiro de a:")
    leia(a)
    escreva("Digite o valor inteiro de b:")
    leia(b)

    inteiro resSoma = mat.potencia(a, 2) + (2*a*b) + mat.potencia(b, 2)
    inteiro resDif = (mat.potencia(a, 2) - (2*a*b)) + mat.potencia(b, 2)

    limpa()
    escreva("a = ", a, " e ", "b = ", b, ", assim:\n")
    escreva(soma, " = ", soma_ext, " ⇒ ",
            substituirAB(soma, a, b), " = ",
            substituirAB(soma_ext, a, b), " = ",
            resSoma
    )
    escreva("\n e:\n")
    escreva(dif, " = ", dif_ext, " ⇒ ",
            substituirAB(dif, a, b), " = ",
            substituirAB(dif_ext, a, b), " = ",
            resDif
    )
  }
}
