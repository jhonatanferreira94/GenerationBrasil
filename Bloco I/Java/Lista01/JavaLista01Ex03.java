package JavaLista01Ex03;
/* Faça um programa que receba a idade de uma pessoa e mostre na saída em qual categoria ela se encontra:
 * 10-14 infantil; 15-17 juvenil; 18-25 adulto
 */

import java.util.Scanner;

public class JavaLista01Ex03 {
	public static void main (String Args [])
	{
		Scanner ler = new Scanner(System.in);
		int idade1;
		
		System.out.print("Qual sua idade? ");
		idade1 = ler.nextInt();
		
		if(idade1>=10 && idade1<=14){
		System.out.print("Categoria: Infantil.");
		}
		
		else if(idade1>=15 && idade1<=17) {
		System.out.print("Categoria: Juvenil.");
		}
		
		else if(idade1>=18 && idade1<=25) {
		System.out.print("Categoria: Adulto.");
		}
	}
	
}
