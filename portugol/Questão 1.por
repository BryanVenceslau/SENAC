programa
{
	
	funcao inicio()
	{
		/*Quando uma empresa contrata o hotel para abrigar eventos, o hotel oferece garçons para servir os convidados.
		Considerando que cada garçom custa R$10,50 por hora, escreva um algoritmo que recebe o número de garçons
		necessários e o total de horas do evento. Depois calcule o custo total que o hotel terá com a contratação
		desses profissionais e mostre na tela o resultado.*/

		//Declaração de variáveis
		const real GARCOMHORA = 10.50
		inteiro qtdGarcom
		real horasEvento, custoTotal
		//Entrada de dados
		escreva("Digite a quantidade de garçons presentes: ")
		leia(qtdGarcom)
		escreva("Digite quantas horas durará o evento: ")
		leia(horasEvento)
		//Processamento
		custoTotal = qtdGarcom * GARCOMHORA * horasEvento
		//Saída de dados
		escreva("\nO custo total para a contratação será de R$",custoTotal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 532; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 */