programa
{

/* Faça um sistema que leia um número inteiro e mostre uma mensagem indicando se 
   este número é par ou ímpar, e se é positivo ou negativo.
 */
	
	funcao inicio()
	{
		inteiro num
		
		escreva("Escreva um número: ")
		leia(num)

		se(num % 2 == 1)
			{
				escreva("Impar")				
			}

		senao
		{
			escreva("Par")
		}

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 302; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */