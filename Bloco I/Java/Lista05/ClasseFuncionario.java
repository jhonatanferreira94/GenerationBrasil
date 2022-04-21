package Funcionario;

/*
* Crie uma classe funcionário e apresente os atributos e métodos
* referentes esta classe, em seguida crie um objeto funcionário, defina as
* instancias deste objeto e apresente as informações deste objeto no
* console.
*/

public class ClasseFuncionario {

	public static void main(String[] args) {
		Funcionario fun1 = new Funcionario("Jhonatan Ferreira", "Projetista", "Renderizar", 29, 4500);
		
		fun1.dadosFunc();
		fun1.msgPonto();
	}
	
	

}
