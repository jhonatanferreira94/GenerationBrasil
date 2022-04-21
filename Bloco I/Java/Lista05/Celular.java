package Celular;

public class Celular {
	
	String modelo, marca;
	int camera, processador, tela, memoriaArmazenamento, valor;
	boolean fones, carregador;
	
	public Celular (String marc, String mod, int mem, int proc, int cam, int tela, int valor, boolean fones, boolean car){
		this.modelo=mod;
		this.marca=marc;
		this.camera=cam;
		this.processador=proc;
		this.tela=tela;
		this.memoriaArmazenamento=mem;
		this.valor=valor;
		this.fones=fones;
		this.carregador=car;		
	}
	
	
		public void estado(){
		
		System.out.println("Modelo e marca desejado. \n");
		System.out.println("Marca: "+marca);
		System.out.println("Modelo: "+modelo);
		System.out.println("\nEspecificações.\n");
		System.out.println("Câmera: "+camera+" MPX");
		System.out.println("Tela: "+tela+" Polegadas.");
		System.out.println("Processador: iOS"+processador);
		System.out.println("Mémoria de Armazenamento: "+ memoriaArmazenamento+"GB");
		System.out.println("Valor: "+valor);
		System.out.println("\nAcessórios.\n");
		System.out.println("Fones: "+fones);
		System.out.println("Carregador: "+carregador);
		
		if (fones==true)
			System.out.println("O modelo escolhido vem com fones de ouvido.");
		else 
			System.out.println("O modelo escolhido não vem com fones de ouvido, deseja adquirir um?");
		
		if (carregador==true)
			System.out.println("O modelo escolhido vem com carregador.");
		else
			System.out.println("O modelo escolhido não vem com cerregador, deseja adquirir um?");	
	}	

}
