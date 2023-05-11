package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Prodotto;
import control.Connessione;

public class ProdottoDAO {
	
	Prodotto p;
	
	public ProdottoDAO(){
		p = new Prodotto();
	}

	public Prodotto getProdotto(String id) throws SQLException {
		Connessione connessione=new Connessione();
	Connection con=	connessione.getConn();
	
	PreparedStatement ps = con.prepareStatement("SELECT * FROM Prodotto WHERE idProdotto="+id);
	ResultSet rs = ps.executeQuery();


	while(rs.next()){  
		    p.setIdProdotto(rs.getString("idProdotto"));
		    p.setNome(rs.getString("Nome"));
			p.setDescrizione(rs.getString("Descrizione"));
			p.setImmagine(rs.getString("Immagine"));
			p.setPrezzo(rs.getFloat("Prezzo"));
		}
		
		return p;
	}
	
	
	public ArrayList<Prodotto> getProdotti(String categoria) throws SQLException
	{
		
			Connessione connessione=new Connessione();
			Connection con=	connessione.getConn();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM prodotto, prodotto_categoria WHERE prodotto.idProdotto=prodotto_categoria.idProd and prodotto_categoria.idCat="+categoria);
			ResultSet rs = ps.executeQuery();
			
			ArrayList<Prodotto> prodotti = new ArrayList<Prodotto>();
			while(rs.next())
			{
				    p = new Prodotto();   
				    p.setIdProdotto(rs.getString("prodotto.idProdotto"));
					p.setNome(rs.getString("prodotto.Nome"));
					p.setDescrizione(rs.getString("prodotto.Descrizione"));
					p.setImmagine(rs.getString("prodotto.Immagine"));
					p.setPrezzo(rs.getFloat("prodotto.Prezzo"));
					prodotti.add(p);
					
			}
			return prodotti;

	}
	
	
	public ArrayList<String> getType(){
		return null;
		

	}
	public ArrayList<Prodotto> doRetrieveByNome(String nome) throws SQLException
	{
		
			Connessione connessione=new Connessione();
			Connection con=	connessione.getConn();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM prodotto WHERE prodotto.Nome LIKE ?");
			ps.setString(1, "%" + nome + "%");
			ResultSet rs = ps.executeQuery();
			
			ArrayList<Prodotto> prodotti = new ArrayList<Prodotto>();
			while(rs.next())
			{
				    p = new Prodotto();   
				    p.setIdProdotto(rs.getString("prodotto.idProdotto"));
					p.setNome(rs.getString("prodotto.Nome"));
					p.setDescrizione(rs.getString("prodotto.Descrizione"));
					p.setImmagine(rs.getString("prodotto.Immagine"));
					p.setPrezzo(rs.getFloat("prodotto.Prezzo"));
					prodotti.add(p);
					
			}
			return prodotti;

	}
	
}