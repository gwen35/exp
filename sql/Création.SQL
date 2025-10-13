CREATE TABLE Transport (
mode_de_deplacement VARCHAR(255) PRIMARY KEY
);
CREATE TABLE Club (
nom VARCHAR(255) PRIMARY KEY,
ville VARCHAR(255),
division VARCHAR(255),
budget DECIMAL(15, 2),
initiatives_ecologiques TEXT,
valeur_empreinte_carbone DECIMAL(10, 2)  
);
CREATE TABLE Joueur (
idjoueur INT PRIMARY KEY,
nom VARCHAR(255),
prenom VARCHAR(255),
age INT,
initiative_eco TEXT,
salaire DECIMAL(15, 2),
valeur_empreinte_carbone DECIMAL(10, 2)  
);
CREATE TABLE Stade (
nom VARCHAR(255) PRIMARY KEY,
ville VARCHAR(255),
capacite INT,
energie_renouvelable_utilisee TEXT,
valeur_empreinte_carbone DECIMAL(10, 2)  
);
CREATE TABLE Match (
idmatch INT PRIMARY KEY,
score VARCHAR(10),
spectateurs INT
);
CREATE TABLE SeDeplaceAvec (
nom_club VARCHAR(255),
mode_de_deplacement VARCHAR(255),
nombre_de_voyageurs INT,
cout DECIMAL(15, 2),
duree_du_trajet INT,
valeur_empreinte_carbone DECIMAL(10, 2), 
PRIMARY KEY (nom_club, mode_de_deplacement),
FOREIGN KEY (nom_club) REFERENCES Club(nom),
FOREIGN KEY (mode_de_deplacement) REFERENCES Transport(mode_de_deplacement)
);
CREATE TABLE AppartientA (
idjoueur INT,
nom_club VARCHAR(255),
date_de_signature_de_contrat DATE,
PRIMARY KEY (idjoueur, nom_club),
FOREIGN KEY (idjoueur) REFERENCES Joueur(idjoueur),
FOREIGN KEY (nom_club) REFERENCES Club(nom)
);
CREATE TABLE APour (
nom_club VARCHAR(255),
nom_stade VARCHAR(255),
contrat TEXT,
duree_d_utilisation INT,
PRIMARY KEY (nom_club, nom_stade),
FOREIGN KEY (nom_club) REFERENCES Club(nom),
FOREIGN KEY (nom_stade) REFERENCES Stade(nom)
);
CREATE TABLE Oppose (
idmatch INT,
nom_club VARCHAR(255),
distance_parcourue DECIMAL(10, 2),
PRIMARY KEY (idmatch, nom_club),
FOREIGN KEY (idmatch) REFERENCES Match(idmatch),
FOREIGN KEY (nom_club) REFERENCES Club(nom)
);
CREATE TABLE Joue (
idmatch INT,
idjoueur INT,
date DATE,
minutes_jouees INT,
performance DECIMAL(5, 2),
PRIMARY KEY (idmatch, idjoueur),
FOREIGN KEY (idmatch) REFERENCES Match(idmatch),
FOREIGN KEY (idjoueur) REFERENCES Joueur(idjoueur)
);
CREATE TABLE SeDerouleDans (
idmatch INT,
nom_stade VARCHAR(255),
PRIMARY KEY (idmatch, nom_stade),
FOREIGN KEY (idmatch) REFERENCES Match(idmatch),
FOREIGN KEY (nom_stade) REFERENCES Stade(nom)
);


