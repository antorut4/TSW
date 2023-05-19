Drop database if exists TenderHod;
CREATE Database TenderHod;
USE TenderHod;

-- Creazione della tabella Utente
CREATE TABLE Utente (
  Username VARCHAR(255) PRIMARY KEY,
  Nome VARCHAR(255),
  Cognome VARCHAR(255),
  Pass VARCHAR(255),
  Cod_fiscale VARCHAR(16),
  Via VARCHAR(255),
  Cap VARCHAR(10),
  NumeroCivico VARCHAR(10),
  Città VARCHAR(255),
  Data_Nascita DATE,
  Amministratore BOOLEAN
);

-- Creazione della tabella Ordine
CREATE TABLE Ordine (
  Id_Ordine INT PRIMARY KEY,
  Total DECIMAL(10, 2),
  Data_Ordine DATE,
  Id_Username VARCHAR(255),
  FOREIGN KEY (Id_Username) REFERENCES Utente(Username)
);

-- Creazione della tabella Prodotto
CREATE TABLE Prodotto (
  Id_Prodotto INT PRIMARY KEY,
  Tipo VARCHAR(255),
  Quantità INT,
  Prezzo DECIMAL(10, 2),
  Marca VARCHAR(255),
  Descrizione VARCHAR(255),
  Taglia VARCHAR(10),
  Modello VARCHAR(255),
  Immagine BLOB
);

-- Creazione della tabella Articolo_Carrello
CREATE TABLE Articolo_Carrello (
  Id_ACarrello INT PRIMARY KEY,
  Prezzo DECIMAL(10, 2),
  Id_Prodotto INT,
  Id_Ordine INT,
  FOREIGN KEY (Id_Prodotto) REFERENCES Prodotto(Id_Prodotto),
  FOREIGN KEY (Id_Ordine) REFERENCES Ordine(Id_Ordine)
);