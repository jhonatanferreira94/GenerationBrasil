package POO;

/*
* Crie uma classe cliente e apresente os atributos e métodos referentes
* esta classe, em seguida crie um objeto cliente, defina as instancias deste
* objeto e apresente as informações deste objeto no console.
*/

public class Cliente {
	String nomeCompleto, emailPessoal;
	int numeroTelefone, numeroTelefoneDdd;
	boolean cadastroCompleto;
	
	public Cliente(String n, String e, int ddd, int num, boolean cc) {
		this.nomeCompleto=n;
		this.emailPessoal=e;
		this.numeroTelefoneDdd=ddd;
		this.numeroTelefone=num;
		this.cadastroCompleto=cc;
	}
	
	public void cadastro () {
		if (cadastroCompleto==true)
		System.out.println("Cadastro realizado com sucesso.");
		else
		System.out.println("Falta dados.");
	}

	public void Estado() {
		System.out.println("Nome Completo: "+this.nomeCompleto);
		System.out.println("E-mail: "+this.emailPessoal);
		System.out.println("Número de telefone: ("+this.numeroTelefoneDdd+") "+this.numeroTelefone);
		System.out.println("");
		
		if (cadastroCompleto==true)
			System.out.println("Cadastro finalizado.");
		
		else {
			System.out.println("Falta dados.");
		}
	}
		
		
	}

