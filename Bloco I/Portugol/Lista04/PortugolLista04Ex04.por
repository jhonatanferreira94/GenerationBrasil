programa
{

/*
 Crie um programa que receba valores do usuário para preencher uma matriz 3X3, e
em seguida, exiba a soma dos valores dela e a soma dos valores da primeira
diagonal, ou seja, diagonal principal.
 */
	
	funcao inicio()
	{
		const inteiro tamanho=3
		inteiro mat[tamanho][3], linha, coluna, soma=0, soma2=0

		para(linha=0;linha<tamanho;linha++)
		{
			para(coluna=0;coluna<3;coluna++)
			{
				escreva("\nQual o valor desejado? ")
				leia(mat[linha][coluna])
			}

			para(coluna=0;coluna<3;coluna++)
			{
				soma=soma+mat[linha][coluna]
			}

			escreva("\nSoma dos valores: " ,soma, "\n")

			para(coluna=0;coluna<3;coluna++)
			{
				soma2=mat[0][0]+mat[1][1]+mat[2][2]
			}

			escreva("\nSoma da primeira diagonal: ", soma2, "\n")
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 446; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {mat, 13, 10, 3}-{soma, 13, 42, 4}-{soma2, 13, 50, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */