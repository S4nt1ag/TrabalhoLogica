programa
{
	inclua biblioteca Util --> u
	inteiro assentos[10][12]
	
	funcao inicio()
	{
		inteiro opcao
		
		escreva("-----Reserva de assentos-----\n\n(1)-Reservar assentos\n(2)-Listagem de assentos\n(3)-Sair\n\nDigite a opção desejada: ")
		leia(opcao)
		se(opcao >= 1 e opcao <= 3){
			se(opcao == 1){
				u.aguarde(2000)
				limpa()
				reserva()
			}
			se(opcao == 2){
				u.aguarde(2000)
				limpa()
				listagem()
			}
			se(opcao == 3){
				escreva("\nSaindo.")
				u.aguarde(2000)
				
			}
		}senao{
			escreva("\nOpção invalida: ")
			u.aguarde(2000)
			limpa()
			inicio()
		}
		
	}
	funcao reserva(){
		inteiro fileira = 0, assento = 0, opcao =0

		escreva("---Reserva---\n")

		escreva("\nDigite a fileira (horizontal) que deseja de 0 a 9 (cima para baixo): ")
		leia(fileira)
		escreva("\nDigite o assento (vertical) que deseja de 0 a 11 (esquerda para direita): ")
		leia(assento)

		se(assentos[fileira][assento] == 0){
			assentos[fileira][assento] = 1
			
			escreva("\nAssento reservado com sucesso!!\n")
			para(inteiro i=0; i < 10; i++){
				para(inteiro a=0; a < 12; a++){
					escreva(assentos[i][a], " ")
	
		}
				escreva("\n")
		}
			escreva(" ---------tela--------")
			escreva("\n\n(1)-Fazer outra reserva\n(2)-Voltar ao menu")
			leia(opcao)
			escreva("\n")
			se(opcao == 1 ou opcao == 2){
				se(opcao == 1){
					limpa()
					reserva()
				}
				se(opcao == 2){
					escreva("\nVoltando")
					u.aguarde(2000)
					limpa()
					inicio()
				}
			}

		}senao{
			escreva("\nAssento ocupado ou indisponivel por favor tente outro.")
			u.aguarde(2000)
			limpa()
			reserva()
			
		}
		
	}
	funcao listagem(){

		inteiro l = 0, opcao = 0
		
		escreva("---Listagem---\n")
	
			para(inteiro i=0; i < 10; i++){
				para(inteiro a=0; a < 12; a++){
					escreva(assentos[i][a], " ")
	
		}
				escreva("\n")
		}
			escreva(" ---------tela--------")
			
				escreva("\n\n(1)-Listar novamente: \n(2)-Voltar ao menu: \n(3)-Ir para reserva: ")
				leia(opcao)
	
			se(opcao >= 1 e opcao <= 3){
				se(opcao == 1){
					u.aguarde(2000)
					limpa()
					listagem()
				}
				se(opcao == 2){
					escreva("\nSaindo.")
					u.aguarde(2000)
					limpa()
					inicio()
				}
				se(opcao == 3){
					u.aguarde(2000)
					limpa()
					reserva()
				}
			}senao{
				escreva("\nOpção invalida: ")
				u.aguarde(2000)
				limpa()
				inicio()
				}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1946; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {assentos, 4, 9, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */