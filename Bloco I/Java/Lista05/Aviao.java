package Aviao;

/*Crie uma classe avi�o e apresente os atributos e m�todos referentes
* esta classe, em seguida crie um objeto avi�o, defina as instancias deste
* objeto e apresente as informa��es deste objeto no console.
*/
public class Aviao {
	boolean bagagem;
	String origem, destino, classesVoo, intNasc;
	
	public Aviao (String intN, boolean b, String o, String d, String c) {
		this.intNasc=intN;
		this.bagagem=b;
		this.origem=o;
		this.destino=d;
		this.classesVoo=c;
			
	}
	
	public void dadosPassagem(){
		System.out.println("Origem: "+origem);
		System.out.println("Destino: "+destino);
		System.out.println("Tipo de voo: "+intNasc);
		System.out.println("Possui bagagem? "+bagagem);
		System.out.println("Classe: "+classesVoo);
		
		if (bagagem==true)
			System.out.println("\nOl�. Tudo bem? Poderia por gentileza colocar a bagagem na balan�a?");
			else
			System.out.println("\nPassageiro(a) n�o possui bagagem.");
	}
	

}
