package JavaExDoWhile;

import java.util.Scanner;

public class ExDoWhile {

	public static void main(String[] args) {
		int n1, soma=0;
		Scanner leia = new Scanner(System.in);
		
		System.out.println("Digite um número:");
		n1=leia.nextInt();
		
		do {
			
			System.out.println("Digite um número: ");
			n1=leia.nextInt();
			soma+=n1;
		} while (n1!=0);
		
		System.out.println("A soma dos números digitados é: "+soma);

	}

}
