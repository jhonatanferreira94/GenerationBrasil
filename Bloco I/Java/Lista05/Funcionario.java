package Funcionario;

/*
* Crie uma classe funcionário e apresente os atributos e métodos
* referentes esta classe, em seguida crie um objeto funcionário, defina as
* instancias deste objeto e apresente as informações deste objeto no
* console.
*/

public class Funcionario {
	String nome, cargo, funcao;
	int idade, salario;
	
	public Funcionario (String n, String c, String f, int id, int s) {
		this.nome=n;
		this.cargo=c;
		this.funcao=f;
		this.idade=id;
		this.salario=s;
	}
	
	public void dadosFunc() {
		System.out.println("Nome: "+nome);
		System.out.println("Cargo: "+cargo);
		System.out.println("Função: "+funcao);
		System.out.println("Idade: "+idade);
		System.out.println("Salário R$"+salario);
	}
		
	public void msgPonto() { 
		System.out.println("Bom dia, "+nome+", tenha um ótimo dia no trabalho.");
	}
		
		
}
	
