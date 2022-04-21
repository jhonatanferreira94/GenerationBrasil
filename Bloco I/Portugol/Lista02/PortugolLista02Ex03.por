programa
{

/*
Desenvolva um sistema em que:
Leia 4 (quatro) números;
Calcule o quadrado de cada um;
Se o valor resultante do quadrado do terceiro for >= 1000, imprima-o e finalize;
Caso contrário, imprima os valores lidos e seus respectivos quadrados.

 */
	inclua biblioteca Matematica
	
	funcao inicio()
	{
		real n1, n2, n3, n4, n11, n22, n33, n44
		escreva("Qual o valor N1? ")
		leia(n1)
		escreva("Qual o valor N2? ")
		leia(n2)
		escreva("Qual o valor N3? ")
		leia(n3)
		escreva("Qual o valor N4? ")
		leia(n4)

		n11=n1*n1
		n22=n2*n2
		n33=n3*n3
		n44=n4*n4

		se(n33>=1000)
		{
			escreva("O valor resultante do quadrado do terceiro >= 1000") 
		}

		senao se(n33<1000)
		{
			escreva("Primeiro número informado: " , n1 , "² = " , n11)
			escreva("\nSegundo número informado: " , n2 , "² = " , n22)
			escreva("\nTerceiro número informado: " , n3 , "² = " , n33)
			escreva("\nQuarto número informado: " , n4 , "² = " , n44)
		} 
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 945; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */