package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Prodotto;
import control.Connessione;

public class ProdottiDAO {
	
	Prodotto p;
	
	public ProdottiDAO(){
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
	
	
	public ArrayList<Prodotto> getProdotti() throws SQLException
	{
		
			Connessione connessione=new Connessione();
			Connection con=	connessione.getConn();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM prodotto");
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
}