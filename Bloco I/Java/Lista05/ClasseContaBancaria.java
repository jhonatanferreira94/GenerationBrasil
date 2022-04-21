package ContaBancaria;

/*
* Crie uma classe conta bancaria e apresente os atributos e métodos
* referentes esta classe, em seguida crie um objeto conta bancaria, defina
* as instancias deste objeto e apresente as informações deste objeto no
* console.
*/

public class ClasseContaBancaria {

	public static void main(String[] args) {
		ContaBancaria cb1 = new ContaBancaria(5000, 1111111111, 2222, 44444, true, true, "Jhonatan Ferreira", "Inter");
		
		cb1.dadosContaBarcaria();
		cb1.cD();
		cb1.cC();

	}

}
