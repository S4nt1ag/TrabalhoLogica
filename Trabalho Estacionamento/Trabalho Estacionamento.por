programa 
{
    inclua biblioteca Util --> u
    
    cadeia vagas[30]
    
	funcao inicio() 
	{
	    para(inteiro i = 0; i < 30; i++){
	        vagas[i] = "vazio"
	    }
	    menu()
	}
	
	funcao menu()
	{
	    
	    caracter opcao
	    escreva("\tEstacionamento 4\t\t\n")
	    escreva("---------------------------\n")
	    escreva("1 - Entrada de Veículo\n")
	    escreva("2 - Saída de veículos\n")
	    escreva("3 - Listar vagas\n")
	    escreva("4 - Sair do Programa\n")
	    escreva("---------------------------\n")
	    
	    escreva("escolha a operação: ")
	    leia(opcao)
	    
	    se (opcao == '1'){
	        entradaDeVeiculos()
	        u.aguarde(1000)
	        limpa()
	    }senao
	        se (opcao == '2'){
	             saidaDeVeiculos()
	             u.aguarde(1000)
	             limpa()
	             
	        }senao
	            se (opcao == '3'){
	                listarVaga()
	                limpa()
	                
	            }senao
	                se (opcao == '4'){
	                     limpa()
	                     escreva("------------------\n")
	                     escreva("Sistema encerrado\n")
	                     escreva("------------------\n")
	                     
	                }senao{
	                    escreva("opcao invalido tente novamente ")
	                    limpa()
	                    
	                    
	                }
	}
	
	funcao entradaDeVeiculos()
	{
	   inteiro opcaoVaga = 40

	   faca{
	       limpa()
		   escreva("Digite o numero da vaga 1 a 30: ")
		    leia(opcaoVaga)
		        opcaoVaga --
		    se (opcaoVaga >=0 e opcaoVaga <= 29 ){
		        preencherVaga(opcaoVaga)
		    }senao {
		        escreva("Vaga Inválida")
		        u.aguarde(2000)
		        limpa()
		        menu()
		        
		    }
	   }enquanto(opcaoVaga >=0 e opcaoVaga <= 29 )
	}
	
	funcao verificaVaga(inteiro a)
	{
	    se(vagas[a] == "vazio"){
	        preencherVaga(a)
	        
	    }senao {
	        escreva("Vaga ocupada")
	        u.aguarde(2000)
	        limpa()
	        entradaDeVeiculos()
	    }
	    
	}
	
	funcao preencherVaga(inteiro a)
	{
	    cadeia placa
	    limpa()
	    escreva("Digite a placa do veículo: ")
	    leia(placa)
	    
	    escreva("\nvaga preenchida com sucesso")
	  
	    vagas[a] = "ocupado por: "+ placa
	    
	    u.aguarde(2000)
	    limpa()
	    menu()
	}
	
	funcao listarVaga()
	{
	    cadeia opcao 
	    para(inteiro i = 0; i < 30; i ++){
	        escreva("[",vagas[i], "]", "\n")
	    }
	    escreva("--------------------------")
	    escreva("\nPrecione qualquer botão para voltar: ")
	    escreva("\n--------------------------\n")
	    leia(opcao)
	    limpa()
	    menu()
	    
	}
	
	funcao saidaDeVeiculos()
	{
	    inteiro opcaoVaga = 40

	   faca{
	       limpa()
		   escreva("Digite o numero da vaga 1 a 30: ")
		    leia(opcaoVaga)
		        opcaoVaga --
		    se (opcaoVaga >=0 e opcaoVaga <= 29 ){
		        saidaVaga(opcaoVaga)
		    }senao {
		        escreva("Vaga Inválida")
		        u.aguarde(2000)
		        saidaDeVeiculos()
		        
		    }
	   }enquanto(opcaoVaga >=0 e opcaoVaga <= 29 )
	}
	
	funcao saidaVaga(inteiro b)
	{
	    se (vagas[b] == "vazio"){
	        escreva("Vaga ja desocupada")
	        u.aguarde(2000)
	        limpa()
	        menu()
	    }senao{
	        escreva("Vaga desocupada com sucesso")
	        vagas[b] = "vazio"
	        u.aguarde(2000)
	        limpa()
	        menu()
	    }
	}

}