package JavaLista02Ex01;

/*
 * Informar todos os números de 1000 a 1999 que quando divididos por 11 obtemos resto = 5. (FOR)
 */

public class JavaLista01Ex01 {

	public static void main(String[] args) {
		System.out.println("Os números abaixo possuem como reto 5 se dividios por 11: ");
		for (int i=1000;i<2000;i++) {
			if (i%11==5)
				System.out.println(i);
		}
			
	}

}
