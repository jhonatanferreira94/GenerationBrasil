package ExWhile;

import java.util.Scanner;


public class ExWhile {

	public static void main(String[] args) {
		
		int idade=0, cont21=0, cont50=0;
		Scanner ler = new Scanner (System.in);
		
		while (idade!=-99) {
			if (idade<21) {
				cont21++;
			}
			
			if (idade>50) {
				cont50++;
			}
			
			System.out.println("Digite uma idade: ");
			idade=ler.nextInt();
		}
		
		System.out.println("Pessoas com menos de 21: "+cont21);
		System.out.println("Pessoas com meais de 50: "+cont50);


	}

}
