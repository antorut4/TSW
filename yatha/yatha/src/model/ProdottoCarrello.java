package model;

public class ProdottoCarrello {
	
	private int idProdottoCarrello;
    private Prodotto prodotto=new Prodotto();
    private  int quantita=0;
    private int idUtente=0;
    
    //costruttore//
	public ProdottoCarrello() {
		// TODO Auto-generated constructor stub
	}
	

	public int getQuantita() {
		return quantita;
	}
	public void setQuantita(int quantita) {
		this.quantita = quantita;
	}
	public Prodotto getProdotto() {
		return prodotto;
	}
	public void setProdotto(Prodotto prodotto) {
		this.prodotto = prodotto;
	}
	public int getIdProdottoCarrello() {
		return idProdottoCarrello;
	}
	public void setIdProdottoCarrello(int idProdottoCarrello) {
		this.idProdottoCarrello = idProdottoCarrello;
	}
	public int getIdUtente() {
		return idUtente;
	}
	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}

}
