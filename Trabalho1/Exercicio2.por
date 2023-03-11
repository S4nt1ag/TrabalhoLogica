programa
{
  funcao inicio()
    {
      cadeia nome[3]
      inteiro quantidade[3]
      real valor[3]
      real total = 0

        para(inteiro i=0; i<3; i++)
        {
          escreva("Digite o nome do produto ", i+1, ":\n")
          leia(nome[i])
          escreva("Digite a quantidade do produto ", i+1, ":\n")
          leia(quantidade[i])
          escreva("Digite o valor do produto ", i+1, ":\n")
          leia(valor[i])
          total = total + (quantidade[i]valor[i])
        }

        limpa()

        para(inteiro i=0; i<3; i++)
        {
          escreva("Subtotal do produto ", nome[i], ": R$ ", (quantidade[i]*valor[i]), "\n")
        }

        escreva("Total da compra: ", " R$ ", total)

    }

}