programa
{ 
	
	funcao inicio()
	{
		real diaria
		caracter forma
		
		escreva ("---------------------------\n|\t   HOTEL          |\n---------------------------\n")
		escreva ("Escolha entre duas formas de diária:\n[1] para diária fixa\n[2] para diária variável\n\nR: ")
		leia (forma)
		escreva ("\n")
		enquanto (forma != '1' e forma != '2'){
			escreva ("Valor inválido! Tente novamente: ")
			leia (forma)
		}
		limpa()
		escolha (forma){
			caso '1':
				real atrib, hospedagens = 0.0
				inteiro idade, qtdDias, meia = 0, gratuidade = 0, normal = 0
				cadeia hospede
				caracter opcao = 'S'
				
				escreva ("---------- HOTEL ----------\nQual o valor padrão da diária?\nR$ ")
				leia (diaria)
				enquanto (diaria < 0){
					escreva ("Valor inválido! Tente novamente: ")
					leia (diaria)
				}
				limpa()
				faca{
					escreva ("---------- HOSPEDAGEM ----------\nQual o nome do hóspede?\nR: ")
					leia (hospede)
					escreva ("\nQual a idade do hóspede?\nR: ")
					leia (idade)
					
					atrib = diaria
					
					se (idade <= 4){
						escreva ("---\n",hospede," possui gratuidade!\n")
						atrib = 0.0
						gratuidade++
					}
					senao se (idade >= 80){
						escreva ("---\n",hospede," paga meia!\n")
						atrib = diaria / 2
						meia++
					}
					senao{
						normal++
					}
					hospedagens = hospedagens + atrib
					
					escreva ("----------\nDeseja continuar informando dados? S/N\nR: ")
					leia (opcao)
					limpa()	
				}enquanto (opcao == 's' ou opcao == 'S')
					
				faca{
					escreva ("---------- HOTEL ----------\nQuantos dias de hospedagem serão?\nR: ")
					leia (qtdDias)
					escreva ("\n")
					enquanto (qtdDias < 0 ou qtdDias > 30){
						escreva ("Valor inválido! Tente novamente: ")
						leia (qtdDias)
					}
					limpa()
				}enquanto (diaria < 0 e qtdDias < 0 ou qtdDias > 30)
					escreva ("---------- VALOR ----------\nDias:\t\t",qtdDias,"\nDiária: \tR$",diaria)
					escreva ("\n---\n",gratuidade," gratuidade(s);\n",normal," inteiro(s);\n",meia," meia(s);")
					escreva ("\n---\nHospedagem: \tR$",hospedagens,"\nTotal: \t\tR$",hospedagens * qtdDias,"\n---------------------------")
			pare
			caso '2':
				inteiro hospedes, quarto, contador = 0
				real menorDiaria = 0.0, maiorDiaria = 0.0, totalDiaria = 0.0
			
				escreva ("---------- HOTEL ----------\nQuantos hóspedes serão?\nR: ")
				leia (hospedes)
				para (inteiro n = hospedes; n >= 1; n--){
					enquanto (n >= 1){
						escreva ("----------\nQual o número do quarto?\nR: ")
						leia (quarto)
						escreva ("\nQual o valor da diária?\nR$ ")
						leia (diaria)
						escreva ("\nQuarto ",quarto,": R$ ",diaria,"\n")
			
						totalDiaria = totalDiaria + diaria 
						n--
						enquanto (contador <=1){
							menorDiaria = diaria
							contador++
						}
						se (diaria > maiorDiaria){
							maiorDiaria = diaria
						}
						senao se (maiorDiaria > diaria e diaria < menorDiaria){
							menorDiaria = diaria
						}
					}
				}
				limpa()
				escreva ("---------- VALOR ----------\nMenor diária: \tR$ ",menorDiaria,"\nMaior diária: \tR$ ",maiorDiaria,"\n---\nTotal: \t\tR$ ",totalDiaria,"\n----------")
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3111; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */