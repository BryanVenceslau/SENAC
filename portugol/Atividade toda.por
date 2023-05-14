programa
{
	const real diaria = 100.00
	real  valorTotal[10] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0}
	inteiro indice, cont = 0, qtdDias[10]
	cadeia nome[10], cpf[10], quartos[10]
	
	funcao inicio()
	{
		caracter opcoes = menu()
		faca{
		enquanto (opcoes != '1' e opcoes != '2' e opcoes != '3' e opcoes != '4' e opcoes != '5' e opcoes != '6' e opcoes != '0'){
			limpa()
			escreva ("----------------\nValor inválido! Tente novamente\n\n")
			opcoes = menu()
		}
		se (opcoes == '1'){
			cadastrarHospede()
		}
		senao se (opcoes == '2'){
			exibirHospedes()
		}
		senao se (opcoes == '3'){
			exibirQuartos()
		}
		senao se (opcoes == '4'){
			quartoHospede()
		}
		senao se (opcoes == '5'){
			areaLazer()
		}
		senao se (opcoes == '6'){
			limpa()
			exibirHospedes()
			escreva ("--- CHECK OUT ---\nQual o índice do hóspede? ")
			leia (indice)
			valorTotal[indice] = totalPagar(indice)
			liberarQuarto(nome[indice])
		}
		menu()
		}enquanto (opcoes != '0')
			limpa()
			escreva ("----------------\nObrigado e volte sempre!\n----------------")
	}
	funcao caracter menu(){ //Menu de opções
		caracter opcoes
		escreva ("----- MENU -----\n[1] Cadastrar Hospedes\n[2] Exibir Hospedes Cadastrados\n[3] Exibir Quartos\n[4] Atribuir Hospede a um quarto")
		escreva ("\n[5] Reservar Área de Lazer\n[6] Calcular Total a Pagar\n\n[0] Sair\n----------------\nR: ")
		leia (opcoes)
		retorne opcoes
	}
	funcao cadastrarHospede(){ //Cadastrar Hóspedes
		limpa()
		caracter opcao
		se (cont < 10){
			faca{
				escreva ("--- CADASTRAR HOSPEDES ---\nNome do hóspede: ")
				leia (nome[cont])
				escreva ("CPF do hóspede: ")
				leia (cpf[cont])
				escreva ("Quantidade de dias que ficará hospedado: ")
				leia (qtdDias[cont])
				limpa()
				
				valorTotal[cont] = diaria * qtdDias[cont]
				escreva ("----- Dados -----\nNome: ",nome[cont],"\nCPF: ",cpf[cont],"\nQuantidade de dias: ",qtdDias[cont],"\n\nValor total: R$ ",valorTotal[cont])
				escreva ("\n---\nAs informações estão corretas? [S/N]\n-----------------\nR: ")
				leia (opcao)
				limpa()
			}enquanto (opcao == 'N' ou opcao == 'n')
				escreva ("--- CADASTRAR HOSPEDES ---\nDados cadastrados com sucesso.\n\n")
				cont++
		}
		senao{
			escreva ("--- CADASTRAR HOSPEDES ---\nOs cadastros estão lotados!\n\n")
		}
	}
	funcao exibirHospedes(){ //Exibir Hóspedes Cadastrados
		limpa()
		escreva ("--- HOSPEDES CADASTRADOS ---\n")
		se (cont == 0){
			escreva ("Não há hóspedes cadastrados.\n\n")
		}
		senao{
			para (inteiro count = 0; count < cont ; count++){
				escreva ("============================\nÍndice: ",count,"\nNome: ",nome[count],"\nCPF: ",cpf[count],"\nQuantidade de dias: ",qtdDias[count],"\n")
			}
			escreva ("============================\n\n")
		}
	}
	funcao exibirQuartos(){ //Exibir Quartos
		limpa()
		escreva ("--- EXIBIR QUARTOS ---\n")
		para (inteiro i = 0; i < 2; i++){
			se (quartos[i] == ""){
				escreva ("[ Quarto ",i + 1," - Livre ]") 
			}
			senao{
				escreva ("[ Quarto ",i + 1," - ",quartos[i]," ]")
				}
		}
		escreva ("\n")
		para (inteiro i = 2; i < 4; i++){
			se (quartos[i] == ""){
				escreva ("[ Quarto ",i + 1," - Livre ]") 
			}
			senao{
				escreva ("[ Quarto ",i + 1," - ",quartos[i]," ]")
				}
		}
		escreva ("\n")
		para (inteiro i = 4; i < 6; i++){
			se (quartos[i] == ""){
				escreva ("[ Quarto ",i + 1," - Livre ]") 
			}
			senao{
				escreva ("[ Quarto ",i + 1," - ",quartos[i]," ]")
				}
		}
		escreva ("\n")
		para (inteiro i = 6; i < 8; i++){
			se (quartos[i] == ""){
				escreva ("[ Quarto ",i + 1," - Livre ]") 
			}
			senao{
				escreva ("[ Quarto ",i + 1," - ",quartos[i]," ]")
				}
		}
		escreva ("\n")
		para (inteiro i = 8; i < 10; i++){
			se (quartos[i] == ""){
				escreva ("[ Quarto ",i + 1," - Livre ]") 
			}
			senao{
				escreva ("[ Quarto ",i + 1," - ",quartos[i]," ]")
				}
		}
		escreva ("\n\n")
	}
	funcao quartoHospede(){ //Atribuir hóspede a um quarto
		exibirHospedes()
		inteiro quarto
		escreva ("--- HÓSPEDES NOS QUARTOS ---\nDigite o índice do hóspede: ")
		leia (indice)
		escreva ("Digite o número do quarto: ")
		leia (quarto)
		se (quartos[quarto - 1] != ""){
			escreva ("\nO quarto já está ocupado!\n\n")
		}
		senao se (indice > cont){
			escreva ("\nHóspede não existe.\n\n")
		}
		senao{
			quartos[quarto - 1] = nome[indice]
			exibirQuartos()
		}
	}
	funcao areaLazer(){ //Reservar Área de Lazer
		limpa()
		caracter lazer
		exibirHospedes()
		escreva ("--- RESERVAR ÁREA DE LAZER ---\nDigite o índice do hóspede: ")
		leia (indice)
		escreva ("\n---\nEscolha uma área de lazer: \n[A] Academia\n[S] Salão de Festas\n[R] Restaurante\n\nR: ")
		leia (lazer)
		escolha (lazer){
			caso 'A':
				limpa()
				valorTotal[indice] += 20.00
				escreva ("--- ACADEMIA ---\n",nome[indice],", a Academia foi reservada\ne o valor já foi adicionado a sua conta.\n\n")
			pare
			caso 'S':
				limpa()
				valorTotal[indice] += 50.00
				escreva ("--- SALÃO DE FESTAS ---\n",nome[indice],", o Salão de Festas foi reservado\ne o valor já foi adicionado a sua conta.\n\n")
			pare
			caso 'R':
				limpa()
				valorTotal[indice] += 35.00
				escreva ("--- RESTAURANTE ---\n",nome[indice],", o Restaurante foi reservado\ne o valor já foi adicionado a sua conta.\n\n")
			pare
		}
	}
	funcao real totalPagar(inteiro indices){ //Calcular Total a pagar
		limpa()
		escreva ("----- Dados -----\nObrigado por usar o Hotel TDS, ",nome[indices],"!\nO valor total é de R$ ",valorTotal[indices],"\nVolte sempre!\n\n")
		retorne valorTotal[indices]
	}
	funcao liberarQuarto(cadeia nomeLiberado){ //Liberar quarto quando o hóspede sair
		para (inteiro i = 0; i < 10; i++){
			se (quartos[i] == nomeLiberado){
				quartos[i] = "Livre"
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5701; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */