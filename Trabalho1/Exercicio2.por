programa
{
	/*
   * Membros do Grupo:
   * Paulo Vitor de Oliveira dos Reis Lessa
   * Gabriel Santiago Neves
   * Matheus Machado de Souza Borges
   * Caio Jose Oliveira Ferreira
   * Luan D Almeida Cailleaux
   */

	
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
          total = total + (quantidade[i]*valor[i])
        }

        limpa()

        para(inteiro i=0; i<3; i++)
        {
          escreva("Subtotal do produto ", nome[i], ": R$ ", (quantidade[i]*valor[i]), "\n")
        }

        escreva("Total da compra: ", " R$ ", total)

    }

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 215; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */