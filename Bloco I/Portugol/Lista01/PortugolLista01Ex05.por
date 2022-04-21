programa
{
	/* Faça um sistema que leia as 3 notas de um aluno e calcule a média final deste aluno. Considerar que a média é ponderada e que o peso das notas é: 2,3 e 5, respectivamente. 
	 */
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real nota1, nota2, nota3, nota1Ponderada, nota2Ponderada, nota3Ponderada, mediaPonderada
		
		escreva("Primeira nota: ")
		leia(nota1)

		escreva("Segunda nota: ")
		leia(nota2)

		escreva("Terceira nota: ")
		leia(nota3)

		nota1Ponderada = nota1*2
		nota2Ponderada = nota2*3
		nota3Ponderada = nota3*5
		mediaPonderada = (nota1Ponderada+nota2Ponderada+nota3Ponderada)/10
		
		escreva("Média Ponderada: " + mediaPonderada)
	

	
				
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 188; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */