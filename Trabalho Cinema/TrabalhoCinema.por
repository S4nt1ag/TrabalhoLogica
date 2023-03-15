programa
{
	inclua biblioteca Util
	
	inteiro linha=0, coluna=0
	inteiro assentos[10][12]
	
	funcao inicio()
	{
		faca{
			inicializaAssentos()
			lerAssento()
			se(validaSaida(linha, coluna)==falso){
				limpa()
				escreva("\nSistema Encerrado\n\n")
			}
			senao{
				enquanto(verificaEstadoAssento()){
				limpa()
				escreva("Assento ocupado!\n")
				lerAssento()
			}
				reservaAssento()
			
			listaAssentos()
			escreva("Digite um número positivo para continuar ou negativo para sair")
			leia(linha)
			limpa()
			se(linha<0){
				escreva("\nSistema Encerrado\n\n")
			}
		}
			
			
		}
		enquanto(validaSaida(linha, coluna))
	}
	funcao logico validaSaida(inteiro a, inteiro b){
			se(a < 0 ou b < 0){
				retorne falso
			}
			retorne verdadeiro
	}
	funcao inicializaAssentos(){
		inteiro estado=0
		para(inteiro i=0;i<10;i++){
			para(inteiro j=0;j<12;j++){
				se(assentos[i][j]==0){
					estado=1
				}
			}
		}
		se(estado ==0){
			para(inteiro i=0;i<10;i++){
			para(inteiro j=0;j<12;j++){
				assentos[i][j]=0
			}
		}
	}
		
	}
	funcao lerAssento(){
		escreva("Digite a linha e a coluna do assento: ")
		leia(linha,coluna)
		enquanto(linha >9 ou coluna >11){
			limpa()
			escreva("Linha ou coluna inválidos!\n")
			escreva("Digite a linha e a coluna do assento: ")
			leia(linha,coluna)
		}
		
		
	}
	funcao logico verificaEstadoAssento(){
		se(assentos[linha][coluna]==0){
			retorne falso
		}
		senao{
			retorne verdadeiro
		}		
	}
	funcao reservaAssento(){
		assentos[linha][coluna] = 1
		escreva("Assento reservado com sucesso!!\n")
	}
	funcao listaAssentos(){
		para(inteiro i=0;i<10;i++){
			para(inteiro j=0;j<12;j++){
				escreva(assentos[i][j]," ")
			}
			escreva("\n")
		}
	}
	

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 576; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {linha, 5, 9, 5}-{coluna, 5, 18, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */