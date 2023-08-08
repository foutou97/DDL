CREATE DATABASE gestion_achat;
GO

USE gestion_achat;
GO
CREATE TABLE clients (
Client_id INT PRIMARY KEY,
Nom VARCHAR(225) NOT NULL,
Email VARCHAR(100) NOT NULL,
Adresse VARCHAR(200) NOT NULL
);

CREATE TABLE produits (
Produit_id INT PRIMARY KEY,
Nom VARCHAR(100) NOT NULL,
Prix DECIMAL(10,2) NOT NULL CHECK (Prix > 0)
);

CREATE TABLE commandes (
Commande_id INT PRIMARY KEY,
Client_id INT NOT NULL,
Produit_id INT NOT NULL,
Quantity INT NOT NULL,
Commande_date DATE NOT NULL,
FOREIGN KEY (Client_id) REFERENCES clients (Client_id),
FOREIGN KEY (Produit_id) REFERENCES produits (Produit_id)
);
