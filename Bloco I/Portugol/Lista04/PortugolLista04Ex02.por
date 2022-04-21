programa
{
/*
 Um dado é lançado 10 vezes e o valor correspondente é anotado. Faça um programa
que gere um vetor com os lançamentos, escreva esse vetor. A seguir determine e
imprima a média aritmética dos lançamentos, contabilize e apresente também
quantas foram as ocorrências da maior pontuação.
 */
	
	funcao inicio()
	{
		inteiro vet[10],maior=0, cont=0
		real s=0.0, media=0.0
		
		para(inteiro x=0;x<10;x++)
		{
			escreva("\nInforma o valor: ")
			leia(vet[x])

			se(vet[x]>maior)
			{
				maior=vet[x]
			}
			s=s+vet[x]
		}
		escreva("Os valores digitados foram: ")

		para(inteiro x=0;x<10;x++)
		{
			se(vet[x]==maior)
			{
				cont++
			}
		escreva(vet[x], "\t")
		}
		media=s/10
		escreva("\nA média dos valores lançados é: ", media)
		escreva("\nA maior pontuação ocorreu ",cont," vezes.")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 357; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 12, 10, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */