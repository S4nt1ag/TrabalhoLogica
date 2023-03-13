programa
{
		
	inclua biblioteca Util --> u
	caracter opcaoMenu = ' '
	cadeia opcaoQuarto = " "
	cadeia nome
	cadeia telefone
	caracter especialidade
	logico quartos[20]
	inteiro totalConsultasP = 0, somaConsultaP = 0, totalConsultasO = 0, somaConsultaO = 0, somaTotalC = 0, somaQuartos = 0, totalQuartos = 0, faturamentoTotalV = 0

		funcao inicio()
	{
		enquanto(opcaoMenu != '5'){
			menu()
			validaOpcao()
			executaOpcao()
		}
		
	}


	funcao menu(){
		escreva("HOSPITAL - XPTO\n")
		escreva("-------------------------\n")
		escreva("1-Consulta Ambulatorial\n")
		escreva("2-Interna��o\n")
		escreva("3-Listar Quartos\n")
		escreva("4-Faturamento\n")
		escreva("5-Sair do Programa\n")
		escreva("-------------------------\n")
		escreva("Digite o n�mero da op��o desejada: ")
		leia(opcaoMenu)
	}
	funcao validaOpcao(){
		enquanto(opcaoMenu != '1' e opcaoMenu != '2' e opcaoMenu != '3' e opcaoMenu != '4' e opcaoMenu != '5'){
			limpa()
			escreva("Op��o inv�lida.\n")
			escreva("Digite uma op��o v�lida! ")
			u.aguarde(2000)
			limpa()
			menu()
		}
	}
	funcao executaOpcao(){
		escolha(opcaoMenu){
			caso '1':{
				limpa()
				lerDadosPaciente()
				diferenciaEspecialidades ()
				escreva("Consulta ambulatorial registrada!")
				u.aguarde(2000)
				limpa()
				pare
			}
			caso '2':{
				limpa()
				se(verificaQuartosVazios()){
					listarQuartosVazios()
					lerQuarto()
					lerDadosPaciente()
					totalQuartos ++
					escreva("Quarto reservado com sucesso!")
					
				}
				senao{
					escreva("N�o � poss�vel realizar interna��o, pois todos os quartos est�o ocupados!")
				}
				u.aguarde(2000)
				limpa()
				pare
			}
			caso '3':{
				limpa()
				listarQuartosVazios()
				listarQuartosOcupados()
				escreva("\n")
				u.aguarde(4000)
				limpa()
				pare
			}
			caso '4':{
				limpa()
				faturamentoTotal()
				escreva("\n")
				u.aguarde(10000)
				limpa()				
				pare
			}
			caso '5':{
				limpa()
				escreva("Escolheu 5\n")
				u.aguarde(2000)
				limpa()
				pare
			}
		}
	}
	funcao lerDadosPaciente(){
		escreva("Digite o nome do paciente: ")
		leia(nome)
		escreva("Digite o telefone do paciente: ")
		leia(telefone)
		se(opcaoMenu == '1'){			
			escreva("Escolha a especialidade m�dica:\n")
			escreva("1-Pediatria\n")
			escreva("2-Outras\n")
			leia(especialidade)
			enquanto(especialidade != '1' e especialidade != '2'){
				limpa()
				escreva("Op��o inv�lida.\n")
				escreva("Digite uma op��o v�lida! ")
				u.aguarde(2000)
				limpa()
				escreva("Escolha a especialidade m�dica:\n")
				escreva("1-Pediatria\n")
				escreva("2-Outras\n")
				leia(especialidade)
			}
			
		}
		limpa()		
	}
	funcao listarQuartosVazios(){
		escreva("Quartos Dispon�veis: \n\n")
		para(inteiro i=0; i< 20; i++){
				se(quartos[i] == falso){
					escreva("| " , i+1, " |")
				}
			}
	}
	funcao logico verificaQuartosVazios(){
		inteiro qtd = 0
		para(inteiro i=0; i< 20; i++){
			se(quartos[i] == falso){
				qtd += 1
			}
		}
		se(qtd == 0){
			retorne falso
		}
		senao{
			retorne verdadeiro
		}
	}
	funcao listarQuartosOcupados(){
	    escreva("\nQuartos Ocupados: \n\n")
	    para(inteiro i=0; i < 20; i++){
	        se(quartos[i] == verdadeiro){
	            escreva("| ", i+1, " |")
	        }
	    }
	}
	funcao logico verificaQuartosOcupados(){
	    inteiro qtd = 0
	    para(inteiro i=0; i< 20; i++){
	        se(quartos[i] == falso){
	            qtd += 1
	        }
	    }
	    se(qtd == 0){
	        retorne falso
	    }senao{
	        retorne verdadeiro
	    }
	}
	funcao lerQuarto(){
		escreva("\n\nDigite o n�mero do Quarto desejado: ")
		leia(opcaoQuarto)
		enquanto( opcaoQuarto != "1" e opcaoQuarto != "2" e opcaoQuarto != "3" e opcaoQuarto != "4" e opcaoQuarto != "5" e
				opcaoQuarto != "6" e opcaoQuarto != "7" e opcaoQuarto != "8" e opcaoQuarto != "9" e opcaoQuarto != "10" e
				opcaoQuarto != "11" e opcaoQuarto != "12" e opcaoQuarto != "13" e opcaoQuarto != "14" e opcaoQuarto != "15" e
				opcaoQuarto != "16" e opcaoQuarto != "17" e opcaoQuarto != "18" e opcaoQuarto != "19" e opcaoQuarto != "20" ){
					limpa()
					escreva("Op��o inv�lida.\n")
					escreva("Digite uma op��o v�lida! ")
					u.aguarde(2000)
					limpa()
					listarQuartosVazios()
					escreva("\n\nDigite o n�mero do Quarto desejado: ")
					leia(opcaoQuarto)	
			}
		inteiro numeroQuarto = 0
		se(opcaoQuarto == "1"){
			numeroQuarto = 1
		}
		senao se(opcaoQuarto == "2"){
			numeroQuarto = 2
		}
		senao se(opcaoQuarto == "3"){
			numeroQuarto = 3
		}
		senao se(opcaoQuarto == "4"){
			numeroQuarto = 4
		}
		senao se(opcaoQuarto == "5"){
			numeroQuarto = 5
		}
		senao se(opcaoQuarto == "6"){
			numeroQuarto = 6
		}
		senao se(opcaoQuarto == "7"){
			numeroQuarto = 7
		}
		senao se(opcaoQuarto == "8"){
			numeroQuarto = 8
		}
		senao se(opcaoQuarto == "9"){
			numeroQuarto = 9
		}
		senao se(opcaoQuarto == "10"){
			numeroQuarto = 10
		}
		senao se(opcaoQuarto == "11"){
			numeroQuarto = 11
		}
		senao se(opcaoQuarto == "12"){
			numeroQuarto = 12
		}
		senao se(opcaoQuarto == "13"){
			numeroQuarto = 13
		}
		senao se(opcaoQuarto == "14"){
			numeroQuarto = 14
		}
		senao se(opcaoQuarto == "15"){
			numeroQuarto = 15
		}
		senao se(opcaoQuarto == "16"){
			numeroQuarto = 16
		}
		senao se(opcaoQuarto == "17"){
			numeroQuarto = 17
		}
		senao se(opcaoQuarto == "18"){
			numeroQuarto = 18
		}
		senao se(opcaoQuarto == "19"){
			numeroQuarto = 19
		}
		senao se(opcaoQuarto == "20"){
			numeroQuarto = 20
		}
		enquanto(quartos[numeroQuarto-1]){
			limpa()
			escreva("Quarto Ocupado")
			u.aguarde(2000)
			limpa()
			listarQuartosVazios()
			escreva("\n\nDigite o n�mero do Quarto desejado: ")
			leia(opcaoQuarto)
			enquanto( opcaoQuarto != "1" e opcaoQuarto != "2" e opcaoQuarto != "3" e opcaoQuarto != "4" e opcaoQuarto != "5" e
				opcaoQuarto != "6" e opcaoQuarto != "7" e opcaoQuarto != "8" e opcaoQuarto != "9" e opcaoQuarto != "10" e
				opcaoQuarto != "11" e opcaoQuarto != "12" e opcaoQuarto != "13" e opcaoQuarto != "14" e opcaoQuarto != "15" e
				opcaoQuarto != "16" e opcaoQuarto != "17" e opcaoQuarto != "18" e opcaoQuarto != "19" e opcaoQuarto != "20" ){
					limpa()
					escreva("Op��o inv�lida.\n")
					escreva("Digite uma op��o v�lida! ")
					u.aguarde(2000)
					limpa()
					listarQuartosVazios()
					escreva("\n\nDigite o n�mero do Quarto desejado: ")
					leia(opcaoQuarto)	
			}
			se(opcaoQuarto == "1"){
				numeroQuarto = 1
			}
			senao se(opcaoQuarto == "2"){
				numeroQuarto = 2
			}
			senao se(opcaoQuarto == "3"){
				numeroQuarto = 3
			}
			senao se(opcaoQuarto == "4"){
				numeroQuarto = 4
			}
			senao se(opcaoQuarto == "5"){
				numeroQuarto = 5
			}
			senao se(opcaoQuarto == "6"){
				numeroQuarto = 6
			}
			senao se(opcaoQuarto == "7"){
				numeroQuarto = 7
			}
			senao se(opcaoQuarto == "8"){
				numeroQuarto = 8
			}
			senao se(opcaoQuarto == "9"){
				numeroQuarto = 9
			}
			senao se(opcaoQuarto == "10"){
				numeroQuarto = 10
			}
			senao se(opcaoQuarto == "11"){
				numeroQuarto = 11
			}
			senao se(opcaoQuarto == "12"){
				numeroQuarto = 12
			}
			senao se(opcaoQuarto == "13"){
				numeroQuarto = 13
			}
			senao se(opcaoQuarto == "14"){
				numeroQuarto = 14
			}
			senao se(opcaoQuarto == "15"){
				numeroQuarto = 15
			}
			senao se(opcaoQuarto == "16"){
				numeroQuarto = 16
			}
			senao se(opcaoQuarto == "17"){
				numeroQuarto = 17
			}
			senao se(opcaoQuarto == "18"){
				numeroQuarto = 18
			}
			senao se(opcaoQuarto == "19"){
				numeroQuarto = 19
			}
			senao se(opcaoQuarto == "20"){
				numeroQuarto = 20
			}
			
			
		}
		quartos[numeroQuarto-1] = verdadeiro
		
		
	}
	funcao faturamentoTotal(){
	    
	    somaConsultaP = totalConsultasP*150
	    somaConsultaO = totalConsultasO*120
	    somaTotalC = somaConsultaP + somaConsultaO
	    somaQuartos = totalQuartos*500
	    faturamentoTotalV = somaTotalC + somaQuartos
	    escreva("\nO numero de consultas total foi: ", (totalConsultasP + totalConsultasO), "\n",
	    "O valor total das consultas foi: ", somaTotalC, "\n",
	    "O total de interna��es foi: ", totalQuartos, "\n",
	    "o valor de interna�oes total foi: ", somaQuartos, "\n",
	    "O valor total arrecadado foi: ", faturamentoTotalV, "\n")
	}
    funcao diferenciaEspecialidades (){
	        se (especialidade == '1'){
	        totalConsultasP ++
    	}senao
	         se (especialidade == '2'){
	            totalConsultasO ++
	    }
	}
	    
	
}