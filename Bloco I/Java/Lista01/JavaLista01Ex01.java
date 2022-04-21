package JavaLista01Ex01;

import java.util.Scanner;

/*
 * Faça um programa que receba três inteiros e diga qual deles é o maior.
 */
public class Lista01Ex01 {
	public static void main(String Args [])
	{
		Scanner ler = new Scanner(System.in);
		int valor1, valor2, valor3;
		
		System.out.print("Qual será o primeiro valor? ");
		valor1 = ler.nextInt();
		
		System.out.print("Qual será o segundo valor? ");
		valor2 = ler.nextInt();
		
		System.out.print("Qual será o terceiro valor? ");
		valor3 = ler.nextInt();
		
		if(valor1>valor2 && valor1>valor3) {
			System.out.print("O maior valor é: "+valor1);
		} 
		
		else if(valor2>valor1 && valor2>valor3) {
			System.out.print("O maior valor é: "+valor2);
		}
		
		else if(valor3>valor1 && valor3>valor2) {
			System.out.print("O maior valor é: "+valor3);
		}
	}

}
