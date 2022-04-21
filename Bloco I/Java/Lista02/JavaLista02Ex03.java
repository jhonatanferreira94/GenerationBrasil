package JavaLista02Ex03;

import java.util.Scanner;

/*
 * Solicitar a idade de várias pessoas e imprimir: Total de pessoas com menos de 21 anos. 
 * Total de pessoas com mais de 50 anos. O programa termina quando idade for =-99. (WHILE)
 */

public class JavaLista02Ex03 {

	public static void main(String[] args) {
	
		Scanner scan = new Scanner(System.in);
		int idade=0, result1=0, result2=0;
		
		while (idade != -99) {
			System.out.println("Qual será a idade? ");
			idade=scan.nextInt();
			
			if(idade>=50) {
				result2++;
			} else if (idade<21 && idade>=0) {
				result1++;
			}

		}
		System.out.println("Quantidade de pessoas com menos de 21 anos: " +result1);
		System.out.println("Quantidade de pessoas com mais de 50 anos: " +result2);
		
		
		

	}

}
