package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import model.CarrelloDB;
import control.Connessione;

public class CarrelloDAO {

	public CarrelloDAO(){
	}
		public void addCart(ProdottoCarrello pc) throws SQLException{
			Connessione connessione=new Connessione();
			Connection con=	connessione.getConn();
				PreparedStatement ps2 = con.prepareStatement("INSERT INTO carrello VALUES(?,?,?,?)");
				ps2.setInt(1, pc.getIdProdottoCarrello());
				ps2.setInt(2, pc.getIdUtente());
				ps2.setInt(3,Integer.parseInt(pc.getProdotto().getIdProdotto()));
				ps2.setInt(4, pc.getQuantita());
				ps2.executeUpdate();
				System.out.println("addCart success (CarrelloDAO -rig27");
		}
		
		
		public void RemoveCart(CarrelloDB c) throws SQLException{

		Connessione connessione=new Connessione();
		Connection con=	connessione.getConn();
		try {

			PreparedStatement ps2 = con.prepareStatement("DELETE FROM Carrello WHERE carrello.idCarrello="+c.getIdCarrello());
		
			ps2.executeUpdate();

		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		
		}
		
		
		public Carrello getCarrelli(int id) throws SQLException
		{
			
				Connessione connessione=new Connessione();
				Connection con=	connessione.getConn();
				PreparedStatement ps = con.prepareStatement("SELECT * FROM carrello WHERE carrello.idUtente="+id);
				ResultSet rs = ps.executeQuery();
				
				Carrello carrelli = new Carrello();
				while(rs.next())
				{
						ProdottoDAO p = new ProdottoDAO();
					    ProdottoCarrello c=new ProdottoCarrello();   
					    c.setIdProdottoCarrello(rs.getInt("carrello.idcarrello"));
						c.setIdUtente(rs.getInt("carrello.idUtente"));
						c.setProdotto(p.getProdotto(Integer.toString(rs.getInt("carrello.idProdotto"))));
						c.setQuantita(rs.getInt("carrello.qnt"));
						
						carrelli.getCart().add(c);
						
				}
				return carrelli;

		}
		public void RemoveCarrelli(int id) throws SQLException
		{
			Connessione connessione=new Connessione();
			Connection con=	connessione.getConn();
			PreparedStatement ps = con.prepareStatement("DELETE FROM carrello WHERE carrello.idUtente="+id);
			ps.executeUpdate();
			
		}
	}

