programa
{
/*
 Receber valores de base e altura de um triângulo e verificar se são valores válidos 
(positivos maiores que zero). Em caso afirmativo, calcular a área do triângulo.
 */
	
	funcao inicio()
	{
		real base, altura, area
		escreva("Qual a base do triângulo? ")
		leia(base)

		escreva("Qual a altura do triângulo? ")
		leia(altura)

		area=(base*altura)/2
		escreva("Área do triângulo é: ", area)

		se(area>1)
		{
			escreva("\nValor positivo e maior que zero.")
		}

		senao se(area<0)
		{
			escreva("\nValor menor que zero.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */