package JavaLista02Ex04;

/*
* Uma empresa desenvolveu uma pesquisa para saber as caracter�sticas psicol�gicas dos 
* indiv�duos de uma regi�o. Para tanto, a cada uma das pessoas era perguntado: idade, sexo 
* (1-feminino / 2-masculino / 3-Outros), e as op��es (1, se a pessoa era calma; 2, se a pessoa 
* era nervosa e 3, se a pessoa era agressiva). Pede-se para elaborar um sistema que permita 
* ler os dados de 150 pessoas, calcule e mostre: (WHILE)
* . o n�mero de pessoas calmas; 
* . o n�mero de mulheres nervosas; 
* . o n�mero de homens agressivos; 
* . o n�mero de outros calmos;
* . o n�mero de pessoas nervosas com mais de 40 anos; 
* . o n�mero de pessoas calmas com menos de 18 anos.
*/

import java.util.Scanner;

public class JavaLista02Ex04 {
	
	public static void main(String[] args) {
		
			Scanner scan = new Scanner(System.in);

			int contPrincipal = 0, contCalmas = 0, contBadGirl = 0, contBadboys = 0, contOthers=0, contTeenCalm = 0, contIdosos = 0,
					totalPessoas = 1, idade;
			char sexo, jeito;

			while (contPrincipal < 2) {
				contPrincipal++;
				System.out.printf("Obtendo dados da pessoa " + (totalPessoas++ + "\n"));
				System.out.printf("Informe a idade: ");
				idade = scan.nextInt();
				System.out.printf("Informe se o sexo: (M/F/O) ");
				sexo = scan.next().charAt(0);
				System.out.printf("Informe se a pessoa � Calma(C), Nervosa(N), Agressiva(A)");
				jeito = scan.next().charAt(0);
				
				if (jeito == 'C') { contCalmas++;};
				if (sexo == 'F' && jeito == 'N') { contBadGirl++;};
				if (idade > 40 && jeito == 'N') {contIdosos++;};
				if (sexo == 'M' && jeito == 'A') {contBadboys++;};
				if (jeito == 'C' && idade < 18) {contTeenCalm++;};
				if (jeito == 'C' && sexo == 'O') {contOthers++;};
				System.out.println("\n");
			}
				
				System.out.printf("\n\nTotal de pessoas calmas: "+ contCalmas);
				System.out.printf("\nTotal de mulheres nervosas: "+ contBadGirl);
				System.out.printf("\nTotal de homens agressivos: "+ contBadboys);
				System.out.printf("\nTotal de outros calmos: "+ contOthers);
				System.out.printf("\nTotal de jovens calmos: "+ contTeenCalm);
				System.out.printf("\nTotal de idosos nervosos: "+ contIdosos);

		}

}