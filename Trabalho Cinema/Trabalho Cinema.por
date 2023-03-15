programa {
    
    inclua biblioteca Util
    
	funcao inicio() 
	{
		inteiro matriz[10][12], linha = 0, coluna = 0
		enquanto(linha>=0 e coluna>=0){
		    limpa()
			imprimir(matriz)
			cadastro(linha, coluna)
			reserva(linha, coluna, matriz)
		}
	}

	funcao cadastro(inteiro &linha, inteiro &coluna)
	{
		escreva("Escolha a fileira(0 a 9): ")
		leia(linha)
		escreva("Escolha a coluna(0 a 11): ")
		leia(coluna)
	}
	funcao reserva(inteiro linha, inteiro coluna, inteiro matriz[][])
	{
		se(linha <= -1 ou coluna <= -1){
			escreva("Programa encerrado !!\n")
		}senao 
		    se(linha > 10 ou coluna > 12){
			    escreva("Entrada inválida !!\n")
		    }senao 
		        se(matriz[linha][coluna] == 1){
			        escreva("O assento ocupado !!\n")
		        }senao{
			        matriz[linha][coluna] = 1
			        escreva("Assento reservado!!\n")
		}
		Util.aguarde(2000)
	}
	funcao imprimir(inteiro matriz[][])
	{
	    escreva("******Bem vindo(a)*****\n")
	    escreva("**escolha seu assento**\n")
	    escreva("-----------------------\n")
		para(inteiro i=0; i < 10; i++){
			para(inteiro j=0; j < 12; j++){
				escreva(matriz[i][j]," ")
			}
			escreva("\n")
		}
		 escreva("-----------------------\n")
	}

}
