package Funcionario;

/*
* Crie uma classe funcion�rio e apresente os atributos e m�todos
* referentes esta classe, em seguida crie um objeto funcion�rio, defina as
* instancias deste objeto e apresente as informa��es deste objeto no
* console.
*/

public class ClasseFuncionario {

	public static void main(String[] args) {
		Funcionario fun1 = new Funcionario("Jhonatan Ferreira", "Projetista", "Renderizar", 29, 4500);
		
		fun1.dadosFunc();
		fun1.msgPonto();
	}
	
	

}
