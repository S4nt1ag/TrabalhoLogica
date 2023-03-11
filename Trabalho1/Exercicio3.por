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
    cadeia time [6], campeao = " ", lanterna = " "
    inteiro pontuacao [6], maior_p = 0, menor_p = 99999

      para(inteiro i=0; i < 6; i++)
      {
        escreva("Digite o nome do time: ")
        leia(time[i])
      }

      para(inteiro i=0; i < 6; i++)
      {
        escreva("Digite a pontuaçao do time ", time[i], ": ")
        leia(pontuacao[i])
      }

      para(inteiro i=0; i < 6; i++)
      {
        escreva("\nA pontuaçao do time ", time[i], " é: ", pontuacao[i], ".")

          se (pontuacao[i] > maior_p)
          {
            maior_p = pontuacao[i]
            campeao = time[i]
          }
          se (pontuacao[i] < menor_p)
          {
            menor_p = pontuacao[i]
            lanterna = time[i]
          }
                    
      }
      escreva("\n\nO campeão (primeiro lugar) foi: ", campeao, " com: ", maior_p, " pontos.", "\nO lanterna (ultimo lugar) foi: ", lanterna, " com: ", menor_p, " pontos.") 

  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 216; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */