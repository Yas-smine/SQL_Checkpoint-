-- DATABASE CREATION
CREATE DATABASE DDL_Checkpoin;
GO

-- Selecting the db we're working on
USE DDL_Checkpoin;
GO

-- Creating
CREATE TABLE Departement (
Num_S INT PRIMARY KEY,
Libel VARCHAR(255) NOT NULL,
Nom_du_manager VARCHAR(255),
);
GO

CREATE TABLE Employ� (
Num_E INT PRIMARY KEY,
Nom VARCHAR(255) NOT NULL,
Position VARCHAR(255),
Salaire DECIMAL(10,2),
Departement_Num_S INT,
FOREIGN KEY (Departement_Num_S) REFERENCES Departement(Num_S)
);
GO

CREATE TABLE Projet (
Num_P INT PRIMARY KEY,
Titre VARCHAR(255) NOT NULL,
Date_de_d�but DATE,
Date_de_fin DATE,
Departement_Num_S INT,
FOREIGN KEY (Departement_Num_S) REFERENCES Departement(Num_S)
);
Go

CREATE TABLE Employ�_Projet (
Employ�_Num_E INT,
Projet_Num_P INT,
Role VARCHAR(255),
FOREIGN KEY (Employ�_Num_E) REFERENCES Employ�(Num_E),
FOREIGN KEY (Projet_Num_P) REFERENCES Projet(Num_P)
);
GO






