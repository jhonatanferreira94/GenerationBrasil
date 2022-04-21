programa
{
	/* Faça um sistema que leia a idade de uma pessoa expressa em anos, meses e dias e mostre-a expressa apenas em dias. 
	 */
	funcao inicio()
	{
		inteiro anos, meses, dias, diasVividos
		escreva("Anos: ")
		leia(anos)

		escreva("Meses: ")
		leia(meses)

		escreva("Dias: ")
		leia(dias)

		diasVividos = (anos*365)+(meses*30)+dias
		escreva("Você tem "+ diasVividos+ " Dias vividos.") //concatenação

		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 250; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */