package JavaLista01Ex02;
/*
 * Faça um programa que entre com três números e coloque em ordem crescente.
 */

import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Scanner;

public class JavaLista01Ex02{
	public static void main(String [] Args)
	{
		Scanner ler = new Scanner(System.in);
		int vet[] = new int[3];
		int valor1, valor2, valor3;
		
		System.out.print("Qual será o primeiro valor? ");
		valor1 = ler.nextInt();
		
		System.out.print("Qual será o segundo valor? ");
		valor2 = ler.nextInt();
		
		System.out.print("Qual será o terceiro valor? ");
		valor3 = ler.nextInt();
		
		List<Integer> slist = Arrays.asList(valor1, valor2, valor3);
		Collections.sort(slist);
		System.out.println("Ondem crescente: "+slist);
			
	}


}
