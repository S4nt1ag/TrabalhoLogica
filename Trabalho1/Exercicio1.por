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
  
  inclua biblioteca Matematica --> m 

  funcao inicio() 
  {
    real salario[5]

      para(inteiro i = 0; i < 5; i++)
      {
        escreva("Digite o salario do ", i+1, "º:R$")
        leia(salario[i])

        se (salario[i] < 2000)
        {
          salario[i] = salario[i]*1.1
        }

      }

      limpa()

      para(inteiro i=0; i < 5; i++ )
      {
        salario[i] = m.arredondar(salario[i], 3 )
        escreva("\nSalario ", i+1, "º:R$", salario[i])
      }
      
  }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 220; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */