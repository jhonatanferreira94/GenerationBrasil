programa
{
	/*Faça um sistema que leia o tempo de duração de um evento em uma fábrica expressa em segundos e mostre-o expresso em horas, minutos e segundos. 

	 */
	
	funcao inicio()
	{
		inteiro horas, minutos, segundos, duracao
		escreva("Qual a duração do evento em segundos? ")
		leia(duracao)

		horas = duracao/3600
		minutos = (duracao - (3600*horas)) / 60
		segundos = (duracao - (3600*horas)) % 60

		escreva("O eventou durou " + horas + " horas " + minutos + " minutos " + segundos + " segundos.")

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 158; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */