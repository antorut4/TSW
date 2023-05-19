package controller;

import java.util.Calendar;

public class Register {
    private String username;
    private String nome;
    private String cognome;
    private String password;
    private String codiceFiscale;
    private String via;
    private String cap;
    private int numeroCivico;
    private String città;
    private Calendar dataNascita;
    private boolean isAdmin;

    public Register(String username, String nome, String cognome, String password, String codiceFiscale,
                    String via, String cap, int numeroCivico, String città, Calendar dataNascita, boolean isAdmin) {
        this.username = username;
        this.nome = nome;
        this.cognome = cognome;
        this.password = password;
        this.codiceFiscale = codiceFiscale;
        this.via = via;
        this.cap = cap;
        this.numeroCivico = numeroCivico;
        this.città = città;
        this.dataNascita = dataNascita;
        this.isAdmin = isAdmin;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCodiceFiscale() {
        return codiceFiscale;
    }

    public void setCodiceFiscale(String codiceFiscale) {
        this.codiceFiscale = codiceFiscale;
    }

    public String getVia() {
        return via;
    }

    public void setVia(String via) {
        this.via = via;
    }

    public String getCap() {
        return cap;
    }

    public void setCap(String cap) {
        this.cap = cap;
    }

    public int getNumeroCivico() {
        return numeroCivico;
    }

    public void setNumeroCivico(int numeroCivico) {
        this.numeroCivico = numeroCivico;
    }

    public String getCittà() {
        return città;
    }

    public void setCittà(String città) {
        this.città = città;
    }

    public Calendar getDataNascita() {
        return dataNascita;
    }

    public void setDataNascita(Calendar dataNascita) {
        this.dataNascita = dataNascita;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }
}
