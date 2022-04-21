package Estoque;

import java.util.ArrayList;

public class EstoqueLoja {

	public static void main(String[] args) {
		
		Estoque p1 = new Estoque("Camisetas", 76);
		Estoque p2= new Estoque("Bermudas", 87);
		Estoque p3 = new Estoque("Cuecas", 98);
		Estoque p4 = new Estoque("Meias", 81);
		
		ArrayList<Estoque> est=new ArrayList<>();
		
		est.add(p1);
		est.add(p2);
		est.add(p3);
		est.add(p4);
		
		est.remove(2);
		
		System.out.println(est.size());
		
		System.out.println(est);
	}

}
