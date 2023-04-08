programa
{
	funcao inicio()
	{
		/*O hotel oferece café, água e salgadinhos para cada um dos convidados de um evento alocado em suas dependências.
		A quantidade de café, em litros, é calculada como 0,2 litro para cada convidado; a quantidade de água é calculada
		como 0,5 litro para cada convidado; são oferecidos 7 salgadinhos por pessoa. O hotel realiza agendamentos de
		pedidos, onde o usuário informa a quantidade de convidados. O mínimo é 30 convidados, com no máximo 350 convidados.
		Caso o valor não seja adequado mostre a mensagem “quantidade de convidados superior ou inferior à capacidade”.
		Caso a quantidade seja válida, calcule a quantidade de água, café e salgadinhos para o evento, mostrando na tela
		esses valores. 
		Utilize obrigatoriamente a estrutura condicional SE com no mínimo um operador lógico (E/OU/NAO).*/

		//Declaração de variável
		inteiro convidados
		//Entrada de dados
		escreva("Digite a quantidade de convidados: ")
		leia(convidados)
		limpa()
		//Condicional
		se (convidados<30 ou convidados>350){
			escreva("Quantidade de convidados superior ou inferior à capacidade.")
		}senao{
			//Declaração de variável
			real cafe = 0.2, qtdCafe, agua = 0.5, qtdAgua
			inteiro salgad = 7, qtdSalgad
			//Processamento
			qtdCafe = convidados * cafe
			qtdAgua = convidados * agua
			qtdSalgad = convidados * salgad
			//Saída de dados
			escreva("-----Resultado do evento-----\n\tConvidados: ",convidados,"\n\tCafé: ",qtdCafe,"L\n\tÁgua: ",qtdAgua,"L\n\tSalgadinhos: ",qtdSalgad)
		}
	}
}
