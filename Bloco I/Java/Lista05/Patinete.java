package Patinete;

/*
* Crie uma classe patinete e apresente os atributos e m�todos referentes
* esta classe, em seguida crie um objeto patinete, defina as instancias deste
* objeto e apresente as informa��es deste objeto no console.
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
    	
		System.out.println("Voc� acabde de adquerir um patinete, segue as especifica��es.\n");
		System.out.println("Cor: "+cor);
		System.out.println("Material: "+material);
		System.out.println("N�mero de rodas: "+numeroRodas);
		System.out.println("Valor R$"+valor);
		
		if (eletrico==true)
			System.out.println("Prezado (a) cliente, o seu patinete ser� el�trico, aproveite.");
		else
			System.out.println("Prezado (a) cliente, o seu patinete n�o ser� el�trico, aproveite.");
    	
    }
		

}
