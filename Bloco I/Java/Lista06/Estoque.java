package Estoque;

/* Crie uma um programa para trabalhar com estoque de uma loja, o programa deverá
* trabalhar com Collection do tipo List do Java para manipular os dados desse estoque, o
* programa deverá atender as seguintes funcionalidades:
* Armazenar dados da List
* Remover dados da list;
* Atualizar dados da list.
* Apresentar todos os dados da list.
*/
public class Estoque {
	
	private String produto;
	private int quantidade ;
	
	public Estoque(String x, int y)
	{
		this.produto=x;
		this.quantidade=y;
	}

	public String getProduto() {
		return produto;
	}

	public void setProduto(String produto) {
		this.produto = produto;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	
	public String toString()
	{
		return "Produto: "+ this.produto+  ", " + "Quantidade: "+ this.quantidade;
	}
	
	
}
