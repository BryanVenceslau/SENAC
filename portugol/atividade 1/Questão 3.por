programa
{
	
	funcao inicio()
	{
		/*Ainda relativo ao atendimento de eventos, o hotel necessita de uma funcionalidade que indique qual de seus
		dois auditórios é o mais adequado para um evento. O auditório Alfa conta com 150 lugares e espaço para até 70
		cadeiras adicionais que são colocadas quando necessário. O cálculo leva em consideração o valor informado pelo
		usuário e a quantidade de cadeiras do auditório.
		O auditório Beta já conta com 350 lugares, sem a necessidade de cadeiras adicionais. Desenvolva um algoritmo que
		receba o número de convidados do evento e faça uma verificação sobre a quantidade: se for maior que 350 ou se for
		menor que zero, mostre a mensagem “Número de convidados inválido”. Se o valor informado é válido, mostre na tela
		qual dos auditórios é o mais adequado. No caso do auditório Alfa, calcule, quando necessário, a quantidade de
		cadeiras adicionais que serão necessárias, observando o limite citado acima.
		Utilize obrigatoriamente condicionais SE, SENAO SE.*/

		//Declaração de variável
		inteiro convidados
		//Entrada de dados
		escreva("Digite a quantidade de convidados: ")
		leia(convidados)
		limpa()
		//Condições
		se (convidados<=0 ou convidados>350){ //Número inválido de convidados
			escreva("Número de convidados inválido.")
		}senao se (convidados>0 e convidados<=220){ //auditório Alfa
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
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1867; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */