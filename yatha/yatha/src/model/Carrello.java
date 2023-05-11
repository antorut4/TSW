package model;

import java.util.ArrayList;

public class Carrello {
	
	ArrayList<ProdottoCarrello> cart;
	
	public Carrello(){
		cart = new ArrayList<ProdottoCarrello>();
	}

	public ArrayList<ProdottoCarrello> getCart(){
		return cart;
	}
	
	public void setCart(ArrayList<ProdottoCarrello> cart){
		this.cart=cart;
	}
	
	public float getPrezzoTot()
	{
		float f=0;
		for(ProdottoCarrello pc:this.getCart())
		{
			f+=(pc.getProdotto().getPrezzo())*pc.getQuantita();
		}
		return f;
	}

	@Override
	public String toString() {
		return "carrello PrezzoTot=" + getPrezzoTot();
	}
	
}
