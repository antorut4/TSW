-- Inserimento dati di esempio nella tabella Utente
INSERT INTO Utente (Username, Nome, Cognome, Pass, Cod_fiscale, Via, Cap, NumeroCivico, Città, Data_Nascita, Amministratore)
VALUES 
('utente1', 'Mario', 'Rossi', 'password1', 'ABC123', 'Via Roma', '00100', '10', 'Roma', '1990-01-01', 0),
('utente2', 'Laura', 'Bianchi', 'password2', 'DEF456', 'Via Milano', '00200', '20', 'Milano', '1988-05-12', 0),
('admin1', 'Admin', 'Admin', 'adminpass', 'GHI789', 'Via Napoli', '00300', '30', 'Napoli', '1985-09-20', 1);

-- Inserimento dati di esempio nella tabella Ordine
INSERT INTO Ordine (Id_Ordine, Total, Data_Ordine, Id_Username)
VALUES 
(1, 100.00, '2023-05-18', 'utente1'),
(2, 50.00, '2023-05-17', 'utente2'),
(3, 200.00, '2023-05-16', 'utente1');

-- Inserimento dati di esempio nella tabella Prodotto
INSERT INTO Prodotto (Id_Prodotto, Tipo, Quantità, Prezzo, Marca, Descrizione, Taglia, Modello, Immagine)
VALUES 
(1, 'Scarpe', 2, 50.00, 'Nike', 'Scarpe da corsa', '42', 'Air Max', LOAD_FILE('/path/to/scarpe.jpg')),
(2, 'Maglietta', 5, 10.00, 'Adidas', 'Maglietta sportiva', 'M', 'Basic Tee', LOAD_FILE('/path/to/maglietta.jpg')),
(3, 'Pantaloni', 3, 40.00, 'Puma', 'Pantaloni da allenamento', 'L', 'Training Pants', LOAD_FILE('/path/to/pantaloni.jpg')),
(4, 'Borsa', 1, 100.00, 'Gucci', 'Borsa a tracolla', '', 'GG Marmont', LOAD_FILE('/path/to/borsa.jpg'));

-- Inserimento dati di esempio nella tabella Articolo_Carrello
INSERT INTO Articolo_Carrello (Id_ACarrello, Prezzo, Id_Prodotto, Id_Ordine)
VALUES 
(1, 50.00, 1, 1),
(2, 25.00, 2, 1),
(3, 30.00, 3, 2),
(4, 100.00, 4, 3);