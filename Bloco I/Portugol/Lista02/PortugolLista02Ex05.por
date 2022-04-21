programa
{

/*
 A Secretaria de Meio Ambiente que controla o índice de poluição mantém 3 grupos de indústrias que são altamente 
 poluentes do meio ambiente. O índice de poluição aceitável varia de 0,05 até 0,25. Se o índice sobe para 0,3 as 
 indústrias do 1º grupo são intimadas a suspenderem suas atividades, se o índice crescer para 0,4 as industrias 
 do 1º e 2º grupo são intimadas a suspenderem suas atividades, se o índice atingir 0,5 todos os grupos devem ser 
 notificados a paralisarem suas atividades. Faça um sistema que leia o índice de poluição medido e emita a notificação 
 adequada aos diferentes grupos de empresas.
 */

	
	funcao inicio()
	{
		real indiceDePoluicao 
		escreva("Qual o índice de poluição? ")
		leia(indiceDePoluicao)

		se(indiceDePoluicao==0.3)
		
		{
			escreva("Informamos que o índice de poluentes é de " , indiceDePoluicao , ", portanto, solicitamos ao grupo 01 de indústrias que paralisem suas ativdiades. Agradecemos pela compreensão.")
		}

		senao se(indiceDePoluicao==0.4)
		{
			escreva("Informamos que o índice de poluentes é de " , indiceDePoluicao , ", portanto, solicitamos aos grupos 01 e 02 de indústrias que paralisem suas ativdiades. Agradecemos pela compreensão.")	
		}
		
		senao se(indiceDePoluicao>=0.5)
		
		{
			escreva("Informamos que o índice de poluentes é de " , indiceDePoluicao , ", portanto, solicitamos aos grupos 01, 02 e 03 de indústrias que paralisem suas ativdiades. Agradecemos pela compreensão.")				
		}

		senao se(indiceDePoluicao<0.3)
		{
			escreva("\nO índice de poluição aceitável\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 757; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */