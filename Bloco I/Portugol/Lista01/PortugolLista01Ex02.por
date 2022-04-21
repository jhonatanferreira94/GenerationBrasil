programa
{
	/*Faça um sistema que leia a idade de uma pessoa expressa em dias e mostre-a expressa em anos, meses e dias. 

	 */
	funcao inicio()
	{
		inteiro anos, meses, dias, diasVividos
		escreva("Dias Vividos: ")
		leia(diasVividos)

		anos = diasVividos/365
		meses = (diasVividos - (365*anos)) / 30
		dias = (diasVividos - (365*anos)) % 30

		escreva ("Você viveu "+ anos + " anos "+ meses + " meses " + dias + " dias.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */