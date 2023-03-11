programa 
{
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
