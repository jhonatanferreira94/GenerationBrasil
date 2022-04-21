package JavaLista03Ex04;

/*
 * Crie um programa que receba valores do usuário para preencher uma matriz 3X3, 
 * e em seguida, exiba a soma dos valores dela e a soma dos valores da primeira diagonal, 
 * ou seja, diagonal principal.
 */

import java.util.Scanner;

public class JavaLista03Ex04 {

	public static void main(String[] args) {

			Scanner sc = new Scanner (System.in);
			
			int mat[][]= new int [3][3], linha, coluna, soma1=0, soma2=0, x=0;
			
			System.out.println("Digite 9 valores.");
			System.out.println("");
			for(linha=0; linha<3; linha++) {
				
				for(coluna=0; coluna<3; coluna++) {
				x++;
				
				System.out.print("Entre com o valor "+x+": ");
				mat[linha][coluna] = sc.nextInt();
				soma1 = soma1+mat[linha][coluna];
		        soma2 = mat[0][0]+mat[1][1]+mat[2][2];
				}
			}
			for(linha=0; linha<3; linha++) {
				for(coluna=0; coluna<3; coluna++) {
				System.out.print(mat[linha][coluna]+"\t");
				}
				System.out.println();
			}
			System.out.println("A soma de todos os números é: "+ soma1);
	        System.out.println("A soma de todos os números na diagonal é: "+ soma2);
	}

}
