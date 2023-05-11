package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import control.Connessione;

public class CategoriaDAO {

	public CategoriaDAO() {
		// TODO Auto-generated constructor stub
	}
	
public ArrayList<String> getCategoria(String categoria) throws SQLException 
	{
		Connessione connessione=new Connessione(); 
		
		Connection con=	connessione.getConn();
		
        ArrayList<String> listaCategoria=new ArrayList<String>();
        
		PreparedStatement ps = con.prepareStatement("\r\n" + 
			"select c.Nome\r\n" + 
			"from  Categoria as c " + 
			"where c.idCategoria="+categoria+";");
			
		ResultSet rs = ps.executeQuery();
	    while(rs.next()) 
	    {
	    	listaCategoria.add(rs.getString(1));	    	   
	    }
	
	
	
	return listaCategoria;
	}
public void setCategoria(String categoria, String idProdotto) throws SQLException
{
	Connessione connessione=new Connessione(); 
	Connection con=	connessione.getConn();
	PreparedStatement ps = con.prepareStatement("INSERT INTO prodotto_categoria VALUES(?,?)");
	ps.setString(1, idProdotto);
	ps.setString(2, categoria);
	ps.executeUpdate();
}

}
