programa
{

	/* 
	 *  Paulo Vitor Lessa
	 *  Matheus Borges
	 */
	inclua biblioteca Util
	
	real saldo[4]
	caracter opcao
	inteiro indiceUsuario = 5
	cadeia usuarios[4][2] = {
						{"ana","ana123"},
						{"maria","maria123"},
						{"pedro","pedro123"},
						{"joao","joao123"}
					    }
	
	
	funcao inicio()
	{
		limpa()
		login()
		se(indiceUsuario !=5){
			menu()
			
		}senao{
			escreva("Usuário ou senha inválidos")
			Util.aguarde(2000)
		}
			
	}

	funcao login(){
		cadeia usuario = ""
		cadeia senha = ""
		escreva("Banco Digital\n")
		escreva("Digite o usuário: ")
		leia(usuario)
		escreva("Digite a senha: ")
		leia(senha)
		para(inteiro i=0; i<4; i++){
			se(usuarios[i][0]==usuario e usuarios[i][1]==senha){
				indiceUsuario = i
			}
		}
					
	}
	funcao menu(){
		limpa()
		escreva("Bem vindo(a), ",usuarios[indiceUsuario][0], "\n\n")
		escreva("1 - Depositar\n")
		escreva("2 - Sacar\n")
		escreva("3 - Saldo\n")
		escreva("4 - Sair\n\n")
		escreva("Digite a opção desejada: ")
		leia(opcao)
		escolha(opcao){
				caso '1':{
					depositar()
					pare
				}
				caso '2':{
					sacar()
					pare
				}
				caso '3':{
					printaSaldo()
					pare
				}
				caso '4':{
					limpa()
					escreva("Seção encerrado!\n")
					Util.aguarde(2000)
					inicio()
				}
			}
	}

	funcao depositar(){
		real valor
		limpa()
		escreva("Digite o valor a ser depositado: ")
		leia(valor)
		saldo[indiceUsuario] += valor
		limpa()
		escreva("Depósito realizado")
		Util.aguarde(2000)
		menu()
	}

	funcao sacar(){
		real valor
		limpa()
		escreva("Digite o valor a ser sacado: ")
		leia(valor)
		se(saldo[indiceUsuario] - valor <0){
			limpa()
			escreva("Saldo insuficiente")
			Util.aguarde(2000)
			menu()
		}
		senao{
			saldo[indiceUsuario] -= valor
			limpa()
			escreva("Saque realizado")
			Util.aguarde(2000)
			menu()
		}
	}

	funcao printaSaldo(){
		limpa()
		escreva(usuarios[indiceUsuario][0],", seu saldo é de: ")
		escreva("R$ ", saldo[indiceUsuario])
		Util.aguarde(3000)
		menu()
	}
		

	
		
		
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 59; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {valor, 82, 7, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */