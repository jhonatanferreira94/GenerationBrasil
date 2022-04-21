programa
{

/*
 Faça um programa que crie um vetor por leitura com 5 valores de pontuação de uma
atividade e o escreva em seguida. Encontre após a maior pontuação e a apresente.
 */
	
	funcao inicio()
	{
		inteiro vet[5], maior, valor, menor
		para(inteiro x=0;x<5; x++){
			escreva("\nInforme o primeiro valor: ")
			leia(vet[x])
		}
		maior=vet[0]
		menor=vet[0]
		
		para(inteiro x=0;x<5;x++){
			escreva(vet[x], "\t")
		}

		para(inteiro x=0;x<5;x++){
			se(maior<vet[x]){
				maior=vet[x]
			}

			se(menor>vet[x]){
				menor=vet[x]
			}
		escreva("\nO mairo valor é: " , maior)
		
		
	}

}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 581; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 11, 10, 3}-{maior, 11, 18, 5}-{menor, 11, 32, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */