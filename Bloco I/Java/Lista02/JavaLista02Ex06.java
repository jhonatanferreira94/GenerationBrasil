package JavaLista02Ex06;

/*
 * Escrever um programa que receba vários números inteiros no teclado. 
 * E no final imprimir a média dos números múltiplos de 3. 
 * Para sair digitar 0(zero).(DO...WHILE)
 */

import java.util.Scanner;

public class JavaLista02Ex06 {
	public static void main(String[] args) {
		
		Scanner scan = new Scanner(System.in);
		int num1, soma=0;
		double media=0, cont=0;

		do {
			System.out.println("Digite um número: ");
			num1 = scan.nextInt();
			if (num1 %3==0 && num1!=0) {
			soma = soma+num1;
			cont++;
			}
		} while (num1 !=0);
		media = soma/cont;
		System.out.println("A media dos números é: "+ media);
	}


}
