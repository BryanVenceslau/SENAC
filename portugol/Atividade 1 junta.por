programa
{	
inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		//Declaração de variáveis
		caracter lugar
		//Entrada de dados
		escreva("---Qual você deseja acessar?---\nDigite 'L' para à Lavanderia\nDigite 'P' para à Piscina\nDigite 'E' para o Evento\n\nOpção: ")
		leia(lugar)
		enquanto (lugar!='L' e lugar!='P' e lugar!='E'){
			escreva("Digite novamente: ") 
			leia(lugar)
		}
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
			}senao se (roupa>=10){
				const real CUSTOKG = 15.00
				real preco
				preco = roupa * CUSTOKG
				escreva("---Lavanderia---\nA lavagem vai custar R$",preco)
			}senao{
				escreva("---Lavanderia---\nNúmero inválido")
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
		 	senao se (idade>0 e idade<18){ //Senão se a pessoa for menor de 18
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
			}senao{
				limpa()
				escreva("---Piscina---\nIdade inválida")
			}
			pare

			caso 'E':
			//Declaração de variável
			inteiro convidados
			//Entrada de dados
			escreva("---Evento---\nDigite a quantidade de convidados: ")
			leia(convidados)
			//Condições
			se (convidados<=29 ou convidados>350){ //Número inválido de convidados
			limpa()
			escreva("---Evento---\nQuantidade de convidados superior ou inferior à capacidade.")
			}
			senao{
				//Declaração de variável
				const real GARCOMHORA = 10.50
				real cafe = 0.2, qtdCafe, agua = 0.5, qtdAgua, horasEvento, custoTotal
				inteiro salgad = 7, qtdSalgad, qtdGarcom
				//Entrada de dados
				escreva("Digite quantas horas durará o evento: ")
				leia(horasEvento)
				limpa()
				//Processamento
				qtdCafe = convidados * cafe
				qtdAgua = convidados * agua
				qtdSalgad = convidados * salgad
				qtdGarcom = convidados / 20
				custoTotal = qtdGarcom * GARCOMHORA * horasEvento
				//Saída de dados
				escreva("-----Resultado do evento-----\n\nConvidados: ",convidados,"\nGarçons: ",qtdGarcom, " (Contratação: R$",custoTotal,")\nCafé: ",mat.arredondar(qtdCafe, 2),"L\nÁgua: ",mat.arredondar(qtdAgua, 2),"L\nSalgadinhos: ",qtdSalgad,"\n\n")
				se (convidados>30 e convidados<=220){ //auditório Alfa
					se (convidados<=150){ //Sem cadeiras adicionais
					escreva("-----Auditório Alfa-----\nCadeiras do auditório: ",convidados)
					}senao{ //Com cadeiras adicionais
					inteiro adicional, cadeirasAlfa = 150
					adicional = convidados - cadeirasAlfa
					escreva("-----Auditório Alfa-----\nCadeiras do auditório: ",cadeirasAlfa,"\nCadeiras adicionais: ",adicional,"\nTotal de cadeiras: ",convidados)
					}
				}senao{ //auditório Beta
				escreva("-----Auditório Beta-----\nCadeiras do auditório: ",convidados)
				}
			}
			pare
		}
	}
}
