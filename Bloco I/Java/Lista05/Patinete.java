package Patinete;

/*
* Crie uma classe patinete e apresente os atributos e métodos referentes
* esta classe, em seguida crie um objeto patinete, defina as instancias deste
* objeto e apresente as informações deste objeto no console.
*/

public class Patinete {
	int valor, numeroRodas;
	String material, cor;
	boolean eletrico;
	
	public Patinete(String mat, String c, int v, int num, boolean elet) {
		this.valor=v;
		this.numeroRodas=num;
		this.material=mat;
		this.cor=c;
		this.eletrico=elet;
	}
	
    public void estado(){
    	
		System.out.println("Você acabde de adquerir um patinete, segue as especificações.\n");
		System.out.println("Cor: "+cor);
		System.out.println("Material: "+material);
		System.out.println("Número de rodas: "+numeroRodas);
		System.out.println("Valor R$"+valor);
		
		if (eletrico==true)
			System.out.println("Prezado (a) cliente, o seu patinete será elétrico, aproveite.");
		else
			System.out.println("Prezado (a) cliente, o seu patinete não será elétrico, aproveite.");
    	
    }
		

}
