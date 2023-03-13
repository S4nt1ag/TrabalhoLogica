programa
{
	inclua biblioteca Util --> u
	cadeia  nome_i
	inteiro opcao_menu, ca_pediatria = 0, ca_cg = 0, ca_o = 0, ca_g = 0, internacoes = 0, quartos_ocupados = 0, quartos_desocupados = 0 
	logico  quartos[20]
	
	funcao inicio()
	{
		escreva ("HOSPITAL - XPTO\n----------------------------------\n1-Consulta Ambulatorial\n2-Internação\n3-Listagem de quartos\n4-Faturamento\n5-Sair do Programa\n----------------------------------")
		escreva ("\n\nDigite a opção desejada: ")
		leia(opcao_menu)
		escreva ("\n")

		se(opcao_menu >=1 e opcao_menu <=5){

			se(opcao_menu == 1)
			{
				limpa()
				ConsultaAmbulatorial()	
			}
			se(opcao_menu == 2)
			{
				limpa()
				Internacao()	
			}
			se(opcao_menu == 3)
			{
				limpa()
				ListagemQuartos()	
			}
			se(opcao_menu == 4)
			{
				limpa()
				Faturamento()	
			}
			se(opcao_menu == 5)
			{
				limpa()
				SairPrograma()	
			}
		}senao{
			escreva("\nOpção invalida\n\n")
			u.aguarde(2000)
			limpa()
			inicio()
		}

	}
	funcao ConsultaAmbulatorial()
	{
		cadeia nome, telefone
		inteiro idade, opcao_ca
		
		escreva("\n\nConsulta Ambulatorial\n---Ficha do paciente---\nNome: ")
		leia(nome)
		escreva("Idade: ")
		leia(idade)
		escreva("telefone: ")
		leia(telefone)
		escreva("\n\n")

		se(idade <= 13)
		{
			escreva("Pediatria.\nValor: R$ 150.00\n\n")
			ca_pediatria ++
			u.aguarde(2000)
			limpa()
			inicio()
		}senao
		{
			escreva("Atendimentos\n----------------------------------\n1-Clico Geral\n2-Ortopedia\n3-Ginecologia\n----------------------------------\n\nDigite a opção desejada: ")
			leia(opcao_ca)
		
			se(opcao_ca == 1)
			{
				escreva("Clinico Geral.\nValor: R$ 120.00\n\n")
				ca_cg ++
				u.aguarde(2000)
				limpa()
				inicio()	
			}
			se(opcao_ca == 2)
			{
				escreva("Ortopedia.\nValor: R$ 120.00\n\n")
				ca_o ++
				u.aguarde(2000)
				limpa()
				inicio()				
			}
			se(opcao_ca == 3)
			{
				escreva("Ginecologia.\nValor: R$ 120.00\n\n")
				ca_g ++
				u.aguarde(2000)
				limpa()
				inicio()	
			}
		}
	}
	funcao Internacao()
	{
		cadeia telefone
		inteiro idade
		
		escreva("\n\nInternação\n---Ficha do paciente---\nNome: ")
		leia(nome_i)
		escreva("Idade: ")
		leia(idade)
		escreva("telefone: ")
		leia(telefone)
		Quarto()
	}
	funcao Quarto()
	{
		inteiro quarto = 0
		
		escreva("\nDigite o numero do quarto desejado entre 0 e 19: ")
		leia(quarto)
		se(quartos[quarto] == falso){
			quartos[quarto] = verdadeiro
			escreva("\nInternação cadastrada com sucesso! \nQuarto: ", quarto,"\nPaciente: ", nome_i, "\nValor: R$ 500.00\n\n")
			internacoes ++
			u.aguarde(2000)
			limpa()
			inicio()
		}senao{
			escreva("\nQuarto indisponivel, digite outro quarto.\n")
			u.aguarde(2000)
			Quarto()	
		}

		
	}
	funcao ListagemQuartos()
	{
		inteiro opcao
		escreva("\n---Listagem de quartos---\n")
		para(inteiro i=0; i < 20; i++){
			escreva("\nQuarto: ", i)
			se(quartos[i] == falso){
				escreva(" Disponivel\n")
				u.aguarde(100)
			}senao{
				escreva(" Ocupado\n")
				u.aguarde(100)
			}
		}
		escreva("----------------------------------\n1-Repetir listagem\n2-Sair\n----------------------------------\n\nDigite a opção desejada: ")
		leia(opcao)
		se(opcao == 1){
			ListagemQuartos()
			u.aguarde(2000)
		}senao{
			escreva("\nVoltando ao menu\n\n")
			u.aguarde(2000)
			limpa()
			inicio()
		}
	}
	funcao Faturamento()
	{
		inteiro faturamento_p = 0, faturamento_ca = 0, faturamento_i = 0, opcao
		escreva("\nFaturamento\n")
		escreva("\nConsultas pediatricas: ", ca_pediatria, "\nConsultas Clinico geral: ", ca_cg, "\nConsultas Ortopedia: ", ca_o, "\nConsulta ginecologia: ", ca_g, "\nTotal de consultas ambulatorias: ", ca_pediatria+ca_cg+ca_o+ca_g, "\nInternações: ", internacoes, "\n\n")
		faturamento_p = ca_pediatria * 150
		faturamento_ca = (ca_cg+ca_o+ca_g) * 120
		faturamento_i = internacoes * 500
		escreva("Faturamento consultas: ", faturamento_p + faturamento_ca,"\nFaturamento internações: ", faturamento_i, "\nFaturamento total: ", faturamento_p + faturamento_ca + faturamento_i)

		u.aguarde(2000)
		escreva("\n----------------------------------\n1-Repetir faturamento\n2-Sair\n----------------------------------\n\nDigite a opção desejada: ")
		leia(opcao)
		se(opcao == 1){
			Faturamento()
			u.aguarde(2000)
		}senao{
			escreva("\nVoltando ao menu\n\n")
			u.aguarde(2000)
			limpa()
			inicio()
		}
	}
	funcao SairPrograma()
	{
		escreva ("\n\nSaindo\n\n")
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2593; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */