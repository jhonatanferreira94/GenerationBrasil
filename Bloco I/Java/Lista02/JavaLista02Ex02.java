package JavaLista02Ex02;

/*
 * Ler 10 n�meros e imprimir quantos s�o pares e quantos s�o �mpares. (FOR)
 */

import java.util.Scanner;

public class JavaLista02Ex02 {

	public static void main(String[] args) {
		Scanner scan = new Scanner (System.in);
		int num, par=0, impar=0;
		
		for(int i=1; i<=10; i++){
			System.out.printf("Digite o "+i+" � n�mero:");
			num=scan.nextInt();
			
			if(num%2==0) {
				par++;
			}
			
			else {
				impar++;
			}
			
			System.out.println("Foram digitados "+par+" n�meros pares e "+impar+" n�meros impares.");
			
		}

	}

}
