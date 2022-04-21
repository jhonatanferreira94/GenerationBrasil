programa
{
	
/*
 Elabore um sistema que dada a idade de um nadador classifique-o em uma das seguintes categorias:
Infantil A = 5 a 7 anos
Infantil B = 8 a 11 anos
Juvenil A = 12 a 13 anos
Juvenil B = 14 a 17 anos
Adultos = Maiores de 18 anos

 */
		
	funcao inicio()
	{
		inteiro idade 
		escreva("Qual sua idade? ")
		leia(idade)

		se(idade<=7)
		{
			escreva("Você foi classificado na seguinte categoria: Infantil A ")
		}

		senao se(idade<=11)
		{
			escreva("Você foi classificado na seguinte categoria: Infantil B ")
		}

		senao se(idade<=13)
		{
			escreva("Você foi classificado na seguinte categoria: Juvenil A")
		}

		senao se(idade<=17)
		{
			escreva("Você foi classificado na seguinte categoria: Juvenil B")
		}

		senao se(idade>=18)
		{
			escreva("Você foi classificado na seguinte categoria: Adultos")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 750; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */