package JavaLista01Ex04;

/*
 *  Fa�a um programa em que permita a entrada de um n�mero qualquer e exiba se este n�mero � par ou �mpar. 
 *  Se for par exiba tamb�m a raiz quadrada do mesmo; se for �mpar exiba o n�mero elevado ao quadrado.
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
			System.out.print("Num�ro apresentado � par e a raiz quadrada do mesmo �: " + Math.sqrt(valor1));
			
		}
		
		else {
			System.out.print("Num�ro apresentado � impar e o mesmo ao quadrado �: "+ valor1*valor1);

		}

			
	}
	
	     
	

}
