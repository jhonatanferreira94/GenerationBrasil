package JavaLista02Ex02;

/*
 * Ler 10 números e imprimir quantos são pares e quantos são ímpares. (FOR)
 */

import java.util.Scanner;

public class JavaLista02Ex02 {

	public static void main(String[] args) {
		Scanner scan = new Scanner (System.in);
		int num, par=0, impar=0;
		
		for(int i=1; i<=10; i++){
			System.out.printf("Digite o "+i+" ° número:");
			num=scan.nextInt();
			
			if(num%2==0) {
				par++;
			}
			
			else {
				impar++;
			}
			
			System.out.println("Foram digitados "+par+" números pares e "+impar+" números impares.");
			
		}

	}

}
