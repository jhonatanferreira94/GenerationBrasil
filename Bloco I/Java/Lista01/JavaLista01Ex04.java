package JavaLista01Ex04;

/*
 *  Faça um programa em que permita a entrada de um número qualquer e exiba se este número é par ou ímpar. 
 *  Se for par exiba também a raiz quadrada do mesmo; se for ímpar exiba o número elevado ao quadrado.
 */
import java.util.*;

public class JavaLista01Ex04 {
	public static void main (String Args [])
	{
		Scanner ler = new Scanner(System.in);
		int valor1;
		
		System.out.print("Informe um valor: ");
		valor1 = ler.nextInt();
		
		if (valor1%2==0) {
			System.out.print("Numéro apresentado é par e a raiz quadrada do mesmo é: " + Math.sqrt(valor1));
			
		}
		
		else {
			System.out.print("Numéro apresentado é impar e o mesmo ao quadrado é: "+ valor1*valor1);

		}

			
	}
	
	     
	

}
