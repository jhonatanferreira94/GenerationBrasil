package JavaLista03Ex03;

/*
 *  Escreve um programa que lê duas matrizes N1 (4,6) e N2(4,6) e cria:
 *  a) Uma matriz M1 cujos elementos serão as somas dos elementos de mesma posição das matrizes N1 e N2;
 *  b) Uma matriz M2 cujos elementos serão as diferenças dos elementos de mesma posição das matrizes N1 e N2.
 */

import java.util.*;

public class JavaLista03Ex03{

public static void main(String[] args) {
		
		Random r = new Random();
		int N1[][]= new int [4][6], N2[][]= new int [4][6], M1[][]= new int [4][6], M2[][]= new int [4][6], linha, coluna;
		
		for(linha=0;linha<4;linha++) {
		 for (coluna=0;coluna<6;coluna++) {
		   N1[linha][coluna]=(int)(Math.random()*10)+1;
		   
		}
		}
		for(linha=0;linha<4;linha++) {
	     for (coluna=0;coluna<6;coluna++) {
	      System.out.print("N1 ");
	      System.out.print(N1[linha][coluna]+"\t");
		} 
	    System.out.println();
		}
		System.out.println("\n");
		
		for(linha=0;linha<4;linha++) {
			 for (coluna=0;coluna<6;coluna++) {
			   N2[linha][coluna]=(int)(Math.random()*10)+1;
			   
			}
			}
			for(linha=0;linha<4;linha++) {
		     for (coluna=0;coluna<6;coluna++) {
		    System.out.print("N2 ");
		      System.out.print(N2[linha][coluna]+"\t");
			} 
		    System.out.println();
			}
			System.out.println("\n");
			
			for(linha=0;linha<4;linha++) {
				 for (coluna=0;coluna<6;coluna++) {
				   M1[linha][coluna]=(N1[linha][coluna]+N2[linha][coluna]);
				   
				}
				}
				for(linha=0;linha<4;linha++) {
			     for (coluna=0;coluna<6;coluna++) {
			    System.out.print("M1 ");
			      System.out.print(M1[linha][coluna]+"\t");
				} 
			    System.out.println();
				}
				System.out.println("\n");
				
				for(linha=0;linha<4;linha++) {
					 for (coluna=0;coluna<6;coluna++) {
					   M2[linha][coluna]=(N1[linha][coluna]-N2[linha][coluna]);
					   
					}
					}
					for(linha=0;linha<4;linha++) {
				     for (coluna=0;coluna<6;coluna++) {
				    	 System.out.print("M2 ");
				      System.out.print(M2[linha][coluna]+"\t");
					} 
				    System.out.println();
					}
					System.out.println("\n");
				
		
	}

}