programa
{
	/* Elabore um sistema que leia as variáveis C e N, respectivamente código e número de
horas trabalhadas de um operário. E calcule o salário sabendo-se que ele ganha R$ 10,00
por hora. Quando o número de horas exceder a 50 calcule o excesso de pagamento
armazenando-o na variável E, caso contrário zerar tal variável. A hora excedente de
trabalho vale R$ 20,00. No final do processamento imprimir o salário total e o salário
excedente.

*/
	funcao inicio()
	{
		real c, n, excedente, salarioTotal, salarioExcedente, salarioBase=500
		
		escreva("Qual o código do empregado? ")
		leia(c)
		escreva("Qual o número de horas trabalhadas? ")
		leia(n)

		limpa()

		excedente=(n-50)*20
		salarioTotal=excedente+salarioBase

		se(n>50)
		{
			escreva("\nSalário total: ", salarioTotal , " R$" , "\nSalário Excedente: ", excedente , " R$.")
		}

		senao se(n==50)
		{
			escreva("Salário Total: ", salarioBase)			
		}
	
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 673; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */