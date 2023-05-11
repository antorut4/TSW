package model;

public class CarrelloDB {
	private int idCarrello;
	private int idUtente;
	private int idProdotto;
	private int qnt;
	
	public CarrelloDB() {
		super();
	
	}
	public int getIdCarrello() {
		return idCarrello;
	}
	public void setIdCarrello(int idCarrello) {
		this.idCarrello = idCarrello;
	}
	public int getIdUtente() {
		return idUtente;
	}
	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}
	public int getIdProdotto() {
		return idProdotto;
	}
	public void setIdProdotto(int idProdotto) {
		this.idProdotto = idProdotto;
	}
	public int getQnt() {
		return qnt;
	}
	public void setQnt(int qnt) {
		this.qnt = qnt;
	}
	
}

