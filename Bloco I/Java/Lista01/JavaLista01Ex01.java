package JavaLista01Ex01;

import java.util.Scanner;

/*
 * Fa�a um programa que receba tr�s inteiros e diga qual deles � o maior.
 */
public class Lista01Ex01 {
	public static void main(String Args [])
	{
		Scanner ler = new Scanner(System.in);
		int valor1, valor2, valor3;
		
		System.out.print("Qual ser� o primeiro valor? ");
		valor1 = ler.nextInt();
		
		System.out.print("Qual ser� o segundo valor? ");
		valor2 = ler.nextInt();
		
		System.out.print("Qual ser� o terceiro valor? ");
		valor3 = ler.nextInt();
		
		if(valor1>valor2 && valor1>valor3) {
			System.out.print("O maior valor �: "+valor1);
		} 
		
		else if(valor2>valor1 && valor2>valor3) {
			System.out.print("O maior valor �: "+valor2);
		}
		
		else if(valor3>valor1 && valor3>valor2) {
			System.out.print("O maior valor �: "+valor3);
		}
	}

}
