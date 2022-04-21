programa
{
	/* Escreva  um sistema que leia três números inteiros e positivos (A, B, C) e calcule a seguinte expressão: 
	 D=R+S/2 onde R=(A+B)² e S=(B+C)²
	 */
	inclua biblioteca Matematica

	
	funcao inicio()
	{
		real a, b, c, d, r, s, total
		escreva("Qual o valor de A? ")
		leia(a)

		escreva("Qual o valor de B? ")
		leia(b)

		escreva("Qual o valor de C? ")
		leia(c)

		r = Matematica.potencia((a+b), 2.0)
		s = Matematica.potencia((b+c), 2.0)
		d = (r+s)/2
		escreva("O resultado de R é " + r + " o resultado de S é " + s + " sendo assim, o resultado de D será " + d + ".")		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */