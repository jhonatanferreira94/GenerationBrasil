package JavaListaFor;

import java.util.Scanner;

public class ExFor {
	
	public static void main (String [] args) {
		int impar=0, par=0;
		Scanner ler=new Scanner (System.in);
		for (int n=1; n<=11; n++) {
		System.out.println ("Digite 10 números:");
		n=ler.nextInt();
		
		if(n%2==0) {
			par++;
		}
		else if (n%2!=0) {
		impar++;	
		}
		
		System.out.println("Quantidades de Pares: " +par);
		System.out.println("Quantidades de Pares: " +impar);
		}
	}
	

}
