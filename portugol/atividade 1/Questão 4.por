programa
{
	
	funcao inicio()
	{
		/*Obrigatório usar o ESCOLHA e utilizar pelo menos uma vez na parte da piscina um operador lógico (E ou OU).
		Os usuários precisam ter um sistema para verificar tanto os valores da lavanderia quanto da utilização da piscina.
		O usuário deve informar primeiro se deseja acessar a lavanderia ou a piscina. O usuário informa L para ir para
		lavanderia e P para ir para piscina. Caso o usuário informe:
		• L: deve ser solicitado para o usuário a quantidade de kg de roupa que ele precisa que sejam lavadas. Caso o
		valor seja maior que 10 kg o hotel cobra R$ 15,00 por kg. Se a quantidade for inferior a 10 será cobrado R$ 20,00
		por kg. No final deve ser informado para o usuário quanto vai custar a lavagem da quantidade de roupa informada.
		• P: o usuário deve informar a sua idade e se está acompanhado. O usuário informa SIM se está acompanhado ou NAO
		caso não esteja. 
		Temos algumas regras originadas disso:
		o Se o hospede tem 18 anos ou mais ele não precisa do acompanhante, então é suficiente para a solicitação do exame
		(explicada a seguir).
		o Se o hospede tem menos de 18 anos e respondeu NAO para a pergunta do acompanhante deve ser retornada a mensagem
		"Providencie um acompanhante maior de idade".
		o Se o hospede tem menos de 18 anos e respondeu SIM para a pergunta do acompanhante ele responde a pergunta do exame
		(explicada a seguir).
		Caso o hospede possa prosseguir na execução do programa, será perguntado se o exame dele está em dia. O usuário
		pode responder SIM ou NAO. Caso a resposta seja SIM o usuário pode ir na piscina, caso seja NAO a mensagem "Faça
		seu exame" deve ser exibida*/

		//Declaração de variáveis
		caracter lugar
		//Entrada de dados
		escreva("---Qual você deseja acessar?---\nDigite 'L' para à Lavanderia\nDigite 'P' para à Piscina\nOpção: ")
		leia(lugar)
		limpa()
		//Condicional
		escolha (lugar){
			caso 'L': //Escolher a lavanderia
			//Declaração de variável
			real roupa
			//Entrada de dados
			escreva("---Lavanderia---\nIndique quantos kg de roupa precisam ser lavados: ")
			leia(roupa)
			limpa()
			se (roupa>0 e roupa<10){ 
				const real PRECOKG = 20.00
				real custo
				custo = roupa * PRECOKG
				escreva("---Lavanderia---\nA lavagem vai custar R$",custo)
			}senao{
				const real CUSTOKG = 15.00
				real preco
				preco = roupa * CUSTOKG
				escreva("---Lavanderia---\nA lavagem vai custar R$",preco)
			}
			pare

			caso 'P': //Escolher a piscina
			//Declaração de variáveis
			inteiro idade
			cadeia acomp = "NÃO", exame
			escreva("---Piscina---\nIndique a sua idade: ")
			leia(idade)
			//Condicional
			se (idade>=18 e acomp=="NÃO"){ //Se a pessoa for maior de 18
			escreva("O exame está em dia? SIM ou NÃO\n")
			leia(exame)
			limpa()
				se (exame=="SIM"){
					escreva("---Piscina---\nAproveite a piscina!")
				}senao se (exame=="NÃO"){
					escreva("---Piscina---\nFaça seu exame.")
				}
			}
		 	senao se (idade<18){ //Senão se a pessoa for menor de 18
		 		escreva("Você está acompanhado? SIM ou NÃO\n")
				leia(acomp)
				se (acomp=="NÃO"){ //Não for acompanhada
				limpa()
				escreva("---Piscina---\nProvidencie um acompanhante maior de idade")
				}senao se (acomp=="SIM"){ //Se for acompanhada
					escreva("O exame está em dia? SIM ou NÃO\n")
					leia(exame)
					limpa()
					se (exame=="SIM"){ //Se tem os exames em dia
						escreva("---Piscina---\nAproveite a piscina!")
					}senao se (exame=="NÃO"){ //Se não tem os exames em dia
						escreva("---Piscina---\nFaça seu exame.")
					}
				}
			}
			pare
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3488; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */