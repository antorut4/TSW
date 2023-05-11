package model;


public class Utente {
	
	//variabili
	String idCliente;
	String username;
	String password;
	String email;
	String indirizzo;
	String città;
	String telefono;
	boolean admin;
	
	//costruttore
	public Utente(){
		
	}

	public String getIdCliente() {
		return idCliente;
	}

	public void setIdCliente(String idCliente) {
		this.idCliente = idCliente;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public String getCittà() {
		return città;
	}

	public void setCittà(String città) {
		this.città = città;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public boolean isAdmin() {
		
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	public void setAdmin(String admin)
	{
		this.admin = false;
	}


}
