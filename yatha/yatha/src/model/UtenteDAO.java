package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;




import model.Utente;
import control.Connessione;
public class UtenteDAO {

	Utente u;
	
	public UtenteDAO(Utente u){
		u = new Utente();
	}
	
	public boolean[] doSave(Utente u) throws SQLException{
		System.out.println(u.getUsername());
		

		Connessione connessione=new Connessione();
		Connection con=	connessione.getConn();
		PreparedStatement ps = con.prepareStatement("SELECT * FROM utente");
		ResultSet rs = ps.executeQuery();
		
		int varino=0;
		boolean a[]= {false,false,false};
		while(rs.next()){
			
			
			if(u.getUsername().equals(rs.getString("Utente.Username")))
			{
				System.out.println("esiste già compà");
				a[0]=true;
				varino+=1;
			}
			else if(u.getEmail().equals(rs.getString("Utente.E-Mail"))){
				a[1]=true;
				varino+=1;
			}
			else if(u.getTelefono().equals(rs.getString("Utente.Telefono")))
			{
				a[2]=true;
				varino+=1;
			}
			
			else{
				
				System.out.println("ce la possiamo fare");
				varino+=0;
			}
			
		}
		if(varino==0) {
			
			PreparedStatement ps2 = con.prepareStatement("INSERT INTO utente VALUES(?,?,?,?,?,?,?,?)");
			ps2.setString(1, u.getIdCliente());
			ps2.setString(2, u.getUsername());
			ps2.setString(3, u.getPassword());
			ps2.setString(4, u.getEmail());
			ps2.setString(5, u.getIndirizzo());
			ps2.setString(6, u.getCittà());
			ps2.setString(7, u.getTelefono());
			ps2.setBoolean(8, u.isAdmin());
			ps2.executeUpdate();
		
		
		
		}
		else {
			System.out.println("qualcosa esiste");
		}
		
		return a;
	}
	
	public Utente cercaUtente(String nick, String pass) throws SQLException{
		Utente u = new Utente();
		Connessione connessione=new Connessione();
		Connection con=	connessione.getConn();
		// SELECT * FROM prodotto, prodotto_categoria WHERE prodotto.idProdotto=prodotto_categoria.idProd and prodotto_categoria.idCat="+categoria
		PreparedStatement ps = con.prepareStatement("SELECT * FROM utente WHERE Username LIKE '"+nick+"'");
		ResultSet rs = ps.executeQuery();
		
			while(rs.next()){
				if(rs.getString("Username").equals(nick))
				{
					u.setIdCliente(rs.getString("idUtente"));
					u.setUsername(rs.getString("Username"));
					u.setPassword(rs.getString("Password"));
					u.setEmail(rs.getString("E-Mail"));
					u.setIndirizzo(rs.getString("Indirizzo"));
					u.setCittà(rs.getString("Città"));
					u.setTelefono(rs.getString("Telefono"));
					u.setAdmin(rs.getBoolean("Admin"));
					
				}
				else if(rs.getString("Username")!=(nick))
				{

					System.out.print("cantante");
					return null;
				}
				else
				{System.out.println("Errore in UtenteDAO -rig100");}
			}
			return u;

	}
	public ArrayList<Utente> getUtenti() throws SQLException
	{
		
			Connessione connessione=new Connessione();
			Connection con=	connessione.getConn();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM utente");
			ResultSet rs = ps.executeQuery();
			
			ArrayList<Utente> utenti = new ArrayList<Utente>();
			while(rs.next())
			{
				    u= new Utente();   
				    u.setIdCliente(rs.getString("utente.idUtente"));
					u.setUsername(rs.getString("utente.Username"));
					u.setPassword(rs.getString("utente.Password"));
					u.setEmail(rs.getString("utente.E-mail"));
					u.setCittà(rs.getString("utente.Città"));
					u.setTelefono(rs.getString("utente.telefono"));
					u.setIndirizzo(rs.getString("utente.Indirizzo"));
					utenti.add(u);
					
			}
			return utenti;

	}
	public Utente getUtente(String id) throws SQLException {
		Connessione connessione=new Connessione();
	Connection con=	connessione.getConn();
	Utente u=new Utente();
	PreparedStatement ps = con.prepareStatement("SELECT * FROM Utente WHERE idUtente="+id);
	ResultSet rs = ps.executeQuery();


	while(rs.next()){  
		    u.setIdCliente(rs.getString("idUtente"));
		    u.setUsername(rs.getString("username"));
			u.setPassword(rs.getString("Password"));
			u.setCittà(rs.getString("Città"));
			u.setEmail(rs.getString("E-mail"));
			u.setTelefono(rs.getString("Telefono"));
			u.setIndirizzo(rs.getString("Indirizzo"));
		}
		
		return u;
	}
	
}
