package POO;

/*
* Crie uma classe cliente e apresente os atributos e m�todos referentes
* esta classe, em seguida crie um objeto cliente, defina as instancias deste
* objeto e apresente as informa��es deste objeto no console.
*/

public class CadastroCliente {

	public static void main(String[] args) {
		Cliente cliente1 = new Cliente("Jhonatan Ferreira", "jhonatan.ferreira@hotmail.com", 11, 959485948, false);
		
		cliente1.Estado();

	}

}
