USE DDL_Checkpoin;
GO

-- adding information to departement table 
INSERT INTO Departement (Num_S, Label, Nom_du_manager)
VALUES
    (1, 'IT', 'Alice Johnson'),
    (2, 'HR', 'Bob Smith'),
    (3, 'Marketing', 'Clara Bennett');
    GO
-- adding information to employee table
INSERT INTO Employ�(Num_E, Nom, Position, Salaire, Departement_Num_S)
VALUES
    (101, 'John Doe', 'D?veloppeur',60000.00, 1),
    (102, 'Jane Smith', 'Analyste',55000.00, 2 ),
    (103, 'Mike Brown', 'Concepteur',50000.00, 3),
    (104, 'Sarah Johnson', 'Data Scientist',70000.00, 1),
    (105, 'Emma Wilson', 'HR Specialist',52000.00, 2);
    GO

 SELECT * FROM Employ�;
 GO


 -- adding information to project table
INSERT INTO Projet (Num_P, Titre, Date_de_d�but, Date_de_fin, Departement_Num_S)
VALUES
    (201, 'Refonte du site web', '2024-01-15', '2024-06-30', 1),
    (202, 'Onboarding des employ�s', '2024-03-01', '2024-09-01', 2 ),
    (203, 'Market Research', '2024-02-01', '2024-07-31', 3),
    (204, 'IT Infrastructure Setup', '2024-04-01', '2024-12-31', 1);
    GO

SELECT * FROM Projet;
GO

UPDATE Employ�
SET Position = 'D�veloppeur'
WHERE Position = 'D?veloppeur';
GO
UPDATE Projet
SET Titre = 'Onboarding des employ�s'
WHERE Titre = 'Onboarding des employ?s';
GO

SELECT * FROM Projet;
GO
SELECT * FROM Employ�;
GO

-- adding information to Employee_Project table
INSERT INTO Employ�_Projet (Employ�_Num_E, Projet_Num_P, Role)
VALUES
    (101, 201, 'D�veloppeur Frontend'),
    (104, 201, 'D�veloppeur Backend'),
    (102, 202, 'Formateur'),
    (105, 202, 'Coordinateur'),
    (103, 203, 'Responsable de la recherche'),
    (101, 204, 'Sp�cialiste r�seau');
    GO
SELECT * FROM Employ�_Projet;
GO

--  Changing Existing Data
UPDATE Employ�_Projet
SET Role = 'Full Stack Developer'
WHERE Employ�_Num_E = 101 ;
GO

-- deleting row 
DELETE FROM Employ�_Projet
WHERE Employ�_Num_E = 103;
GO

DELETE FROM Employ�
WHERE Num_E = 103;
GO
