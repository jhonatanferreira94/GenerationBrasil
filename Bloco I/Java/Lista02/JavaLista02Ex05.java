package JavaLista02Ex05;

/*
 * Crie um programa que leia um n�mero do teclado at� que encontre um n�mero igual a zero. 
 * No final, mostre a soma dos n�meros digitados.(DO...WHILE)
 */

import java.util.Scanner;

public class JavaLista02Ex05 {

	Scanner scan = new Scanner(System.in);
	int num1, soma=0;	
	
	do {
		System.out.println("Digite um n�mero: ");
		num1 = scan.nextInt();
				soma = soma+num1;
	} while (num1!=0);
	
	System.out.println("A soma dos n�meros � " + soma);	
	
	System.out.println("O programa foi finalizado");
	}
}
