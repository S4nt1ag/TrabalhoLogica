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
		
	inclua biblioteca Util --> u
	caracter opcaoMenu = ' '
	cadeia opcaoQuarto = " "
	cadeia nome
	cadeia telefone
	cadeia especialidade
	logico quartos[20]
	cadeia nomeInternacao[20]
	cadeia telefoneInternacao[20]
	inteiro numeroQuarto = 0
	inteiro consultasPediatria = 0
	inteiro consultasOutros = 0
	inteiro internacoes = 0
	real valorConsultaOutros = 120.0
	real valorConsultaPediatria = 150.0
	real valorInternacao = 500.0

	
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
		escreva("2-Internação\n")
		escreva("3-Listar Quartos\n")
		escreva("4-Faturamento\n")
		escreva("5-Sair do Programa\n")
		escreva("-------------------------\n")
		escreva("Digite o número da opção desejada: ")
		leia(opcaoMenu)
	}
	funcao validaOpcao(){
		enquanto(opcaoMenu != '1' e opcaoMenu != '2' e opcaoMenu != '3' e opcaoMenu != '4' e opcaoMenu != '5'){
			limpa()
			escreva("Opção inválida.\n")
			escreva("Digite uma opção válida! ")
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
				registraConsulta()
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
					registraInternacao()
					escreva("Quarto reservado com sucesso!")
					
				}
				senao{
					escreva("Não é possível realizar internação, pois todos os quartos estão ocupados!")
				}
				u.aguarde(2000)
				limpa()
				pare
			}
			caso '3':{
				listarQuartos()
				pare
			}
			caso '4':{
				faturamento()
				limpa()				
				pare
			}
			caso '5':{
				limpa()
				escreva("SISTEMA ENCERRADO\n")
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
			escreva("Escolha a especialidade médica:\n")
			escreva("1-Pediatria\n")
			escreva("2-Outras\n")
			leia(especialidade)
			enquanto(especialidade != "1" e especialidade != "2"){
				limpa()
				escreva("Opção inválida.\n")
				escreva("Digite uma opção válida! ")
				u.aguarde(2000)
				limpa()
				escreva("Escolha a especialidade médica:\n")
				escreva("1-Pediatria\n")
				escreva("2-Outras\n")
				leia(especialidade)
			}
			
		}
		limpa()		
	}
	funcao listarQuartosVazios(){
		escreva("Quartos Disponíveis: \n\n")
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
	funcao lerQuarto(){
		escreva("\n\nDigite o número do Quarto desejado: ")
		leia(opcaoQuarto)
		enquanto( opcaoQuarto != "1" e opcaoQuarto != "2" e opcaoQuarto != "3" e opcaoQuarto != "4" e opcaoQuarto != "5" e
				opcaoQuarto != "6" e opcaoQuarto != "7" e opcaoQuarto != "8" e opcaoQuarto != "9" e opcaoQuarto != "10" e
				opcaoQuarto != "11" e opcaoQuarto != "12" e opcaoQuarto != "13" e opcaoQuarto != "14" e opcaoQuarto != "15" e
				opcaoQuarto != "16" e opcaoQuarto != "17" e opcaoQuarto != "18" e opcaoQuarto != "19" e opcaoQuarto != "20" ){
					limpa()
					escreva("Opção inválida.\n")
					escreva("Digite uma opção válida! ")
					u.aguarde(2000)
					limpa()
					listarQuartosVazios()
					escreva("\n\nDigite o número do Quarto desejado: ")
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
		enquanto(quartos[numeroQuarto-1]){
			limpa()
			escreva("Quarto Ocupado")
			u.aguarde(2000)
			limpa()
			listarQuartosVazios()
			escreva("\n\nDigite o número do Quarto desejado: ")
			leia(opcaoQuarto)
			enquanto( opcaoQuarto != "1" e opcaoQuarto != "2" e opcaoQuarto != "3" e opcaoQuarto != "4" e opcaoQuarto != "5" e
				opcaoQuarto != "6" e opcaoQuarto != "7" e opcaoQuarto != "8" e opcaoQuarto != "9" e opcaoQuarto != "10" e
				opcaoQuarto != "11" e opcaoQuarto != "12" e opcaoQuarto != "13" e opcaoQuarto != "14" e opcaoQuarto != "15" e
				opcaoQuarto != "16" e opcaoQuarto != "17" e opcaoQuarto != "18" e opcaoQuarto != "19" e opcaoQuarto != "20" ){
					limpa()
					escreva("Opção inválida.\n")
					escreva("Digite uma opção válida! ")
					u.aguarde(2000)
					limpa()
					listarQuartosVazios()
					escreva("\n\nDigite o número do Quarto desejado: ")
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
	funcao registraInternacao(){
		nomeInternacao[numeroQuarto-1] = nome
		telefoneInternacao[numeroQuarto-1] = telefone
		internacoes += 1
	}
	funcao listarQuartos(){
		limpa()
		escreva("Quartos: \n\n")
		para(inteiro i=0; i< 20; i++){
				se(quartos[i] == falso){
					escreva(i+1, " :" , "Vazio\n")
				}
				senao{
					escreva(i+1, " :", nomeInternacao[i], " - ", telefoneInternacao[i], "\n")
				}
		}
		escreva("\nDigite qualquer tecla para voltar!")
		cadeia aux = " "
		leia (aux)
		limpa()			
	}
	funcao registraConsulta(){
		se(especialidade == "1"){
			consultasPediatria += 1
		}
		senao{
			consultasOutros += 1
		}
	}
	funcao faturamento(){
		limpa()
		escreva("FATURAMENTO\n")
		escreva("---------------------------------\n")
		escreva("CONSULTAS:   ", consultasOutros+consultasPediatria, "   TOTAL: R$ ", (consultasOutros*valorConsultaOutros)+(consultasPediatria*valorConsultaPediatria),"\n")
		escreva("Pediatria:   ", consultasPediatria, "   Total: R$ ", consultasPediatria*valorConsultaPediatria,"\n")
		escreva("Outros:      " , consultasOutros, "   Total: R$ ", consultasOutros*valorConsultaOutros, "\n")
		escreva("---------------------------------\n")
		escreva("INTERNAÇÕES: ", internacoes, "   Total: R$ ", internacoes*valorInternacao,"\n")
		escreva("---------------------------------\n")
		escreva("TOTAL GERAL FATURADO:   ", "R$ ", (consultasOutros*valorConsultaOutros)+(consultasPediatria*valorConsultaPediatria)+(internacoes*valorInternacao),"\n")
		escreva("\nDigite qualquer tecla para voltar!")
		cadeia aux = " "
		leia (aux)
		limpa()
	}

	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 8864; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */