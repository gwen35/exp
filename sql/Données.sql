INSERT INTO Club (nom, ville, division, budget, initiatives_ecologiques, valeur_empreinte_carbone)
VALUES ('Paris FC', 'Paris', 'Ligue 1', 100000000, 'Utilisation de panneaux solaires', 0.5);

INSERT INTO Transport (mode_de_deplacement)
VALUES ('Bus'), ('Avion');

INSERT INTO Joueur (idjoueur, nom, prenom, age, initiative_eco, salaire, valeur_empreinte_carbone)
VALUES (1, 'Dupont', 'Jean', 28, 'Utilisation de voitures électriques', 500000, 0.05),
    (2, 'Martin', 'Marie', 30, 'Recyclage des équipements', 600000, 0.08);

INSERT INTO Stade (nom, ville, capacite, energie_renouvelable_utilisee, valeur_empreinte_carbone)
VALUES ('Stade de Paris', 'Paris', 50000, 'Panneaux solaires', 0.15);

INSERT INTO Match (idmatch, score, spectateurs)
VALUES (1, '2-1', 45000),
    (2, '1-1', 48000);

INSERT INTO SeDeplaceAvec (nom_club, mode_de_deplacement, nombre_de_voyageurs, cout, duree_du_trajet, valeur_empreinte_carbone)
VALUES ('Paris FC', 'Bus', 50, 2000, 2, 0.1),
    ('Paris FC', 'Avion', 10, 5000, 3, 0.3);

INSERT INTO AppartientA (idjoueur, nom_club, date_de_signature_de_contrat)
VALUES (1, 'Paris FC', '2023-01-01'),
    (2, 'Paris FC', '2022-06-15');

INSERT INTO APour (nom_club, nom_stade, contrat, duree_d_utilisation)
VALUES ('Paris FC', 'Stade de Paris', 'Contrat de 5 ans', 5);

INSERT INTO Oppose (idmatch, nom_club, distance_parcourue)
VALUES (1, 'Paris FC', 400),
    (2, 'Paris FC', 700);

INSERT INTO Joue (idmatch, idjoueur, date, minutes_jouees, performance)
VALUES (1, 1, '2023-10-01', 90, 8.5),
    (2, 2, '2023-10-15', 75, 7.8);

INSERT INTO SeDerouleDans (idmatch, nom_stade)
VALUES (1, 'Stade de Paris'),
    (2, 'Stade de Paris');

INSERT INTO Club (nom, ville, division, budget, initiatives_ecologiques, valeur_empreinte_carbone)
VALUES ('Lyon FC', 'Lyon', 'Ligue 1', 85000000, 'Programme de reforestation', 0.5);

INSERT INTO Joueur (idjoueur, nom, prenom, age, initiative_eco, salaire, valeur_empreinte_carbone)
VALUES (3, 'Garcia', 'Pierre', 26, 'Utilisation de vélos', 450000, 0.06),
    (4, 'Rousseau', 'Sophie', 29, 'Compostage', 550000, 0.09);

INSERT INTO Stade (nom, ville, capacite, energie_renouvelable_utilisee, valeur_empreinte_carbone)
VALUES ('Stade de Lyon', 'Lyon', 55000, 'Éoliennes', 0.2);

INSERT INTO SeDeplaceAvec (nom_club, mode_de_deplacement, nombre_de_voyageurs, cout, duree_du_trajet, valeur_empreinte_carbone)
VALUES ('Lyon FC', 'Bus', 45, 1800, 2, 0.1),
    ('Lyon FC', 'Avion', 8, 4500, 3, 0.3);

INSERT INTO AppartientA (idjoueur, nom_club, date_de_signature_de_contrat)
VALUES (3, 'Lyon FC', '2023-02-10'),
    (4, 'Lyon FC', '2022-07-20');

INSERT INTO Match (idmatch, score, spectateurs)
VALUES (3, '2-1', 45000),
    (4, '1-1', 48000);

INSERT INTO APour (nom_club, nom_stade, contrat, duree_d_utilisation)
VALUES ('Lyon FC', 'Stade de Lyon', 'Contrat de 4 ans', 4);

INSERT INTO Oppose (idmatch, nom_club, distance_parcourue)
VALUES (3, 'Lyon FC', 400),
    (4, 'Lyon FC', 300);

INSERT INTO Joue (idmatch, idjoueur, date, minutes_jouees, performance)
VALUES (3, 3, '2023-11-05', 90, 8.7),
    (4, 4, '2023-11-20', 80, 8.2);

INSERT INTO SeDerouleDans (idmatch, nom_stade)
VALUES (3, 'Stade de Lyon'),
    (4, 'Stade de Lyon');

INSERT INTO Club (nom, ville, division, budget, initiatives_ecologiques, valeur_empreinte_carbone)
VALUES ('Marseille FC', 'Marseille', 'Ligue 1', 90000000, 'Réduction des déchets plastiques', 0.5);

INSERT INTO Joueur (idjoueur, nom, prenom, age, initiative_eco, salaire, valeur_empreinte_carbone)
VALUES (5, 'Durand', 'Luc', 27, 'Covoiturage', 480000, 0.07),
    (6, 'Lefebvre', 'Claire', 31, 'Utilisation de matériaux recyclés', 580000, 0.1);

INSERT INTO Stade (nom, ville, capacite, energie_renouvelable_utilisee, valeur_empreinte_carbone)
VALUES ('Stade Vélodrome', 'Marseille', 60000, 'Panneaux photovoltaïques', 0.25);

INSERT INTO Match (idmatch, score, spectateurs)
VALUES (5, '5-1', 55000),
    (6, '1-1', 10000);

INSERT INTO SeDeplaceAvec (nom_club, mode_de_deplacement, nombre_de_voyageurs, cout, duree_du_trajet, valeur_empreinte_carbone)
VALUES ('Marseille FC', 'Bus', 55, 2200, 2, 0.1),
    ('Marseille FC', 'Avion', 12, 5500, 3, 0.3);

INSERT INTO AppartientA (idjoueur, nom_club, date_de_signature_de_contrat)
VALUES (5, 'Marseille FC', '2023-03-15'),
    (6, 'Marseille FC', '2022-08-25');

INSERT INTO APour (nom_club, nom_stade, contrat, duree_d_utilisation)
VALUES ('Marseille FC', 'Stade Vélodrome', 'Contrat de 3 ans', 3);

INSERT INTO Oppose (idmatch, nom_club, distance_parcourue)
VALUES (5, 'Marseille FC', 750),
    (6, 'Marseille FC', 320);



INSERT INTO Joue (idmatch, idjoueur, date, minutes_jouees, performance)
VALUES (5, 5, '2023-12-01', 90, 8.9),
    (6, 6, '2023-12-10', 85, 8.4);

INSERT INTO SeDerouleDans (idmatch, nom_stade)
VALUES (5, 'Stade Vélodrome'),
    (6, 'Stade Vélodrome');


INSERT INTO Club (nom, ville, division, budget, initiatives_ecologiques, valeur_empreinte_carbone)
VALUES ('Bordeaux FC', 'Bordeaux', 'Ligue 1', 75000000, 'Utilisation de véhicules électriques', 0.5);

INSERT INTO Match (idmatch, score, spectateurs)
VALUES (7, '5-1', 55000),
    (8, '1-4', 100500);

INSERT INTO Joueur (idjoueur, nom, prenom, age, initiative_eco, salaire, valeur_empreinte_carbone)
VALUES (7, 'Morel', 'Paul', 25, 'Recyclage des déchets', 420000, 0.06),
    (8, 'Chevalier', 'Nathalie', 30, 'Économie d\'énergie', 520000, 0.09);

INSERT INTO Stade (nom, ville, capacite, energie_renouvelable_utilisee, valeur_empreinte_carbone)
VALUES ('Stade Matmut Atlantique', 'Bordeaux', 42000, 'Géothermie', 0.22);

INSERT INTO SeDeplaceAvec (nom_club, mode_de_deplacement, nombre_de_voyageurs, cout, duree_du_trajet, valeur_empreinte_carbone)
VALUES ('Bordeaux FC', 'Bus', 40, 1900, 2, 0.1),
    ('Bordeaux FC', 'Avion', 10, 5200, 3, 0.3);

INSERT INTO AppartientA (idjoueur, nom_club, date_de_signature_de_contrat)
VALUES (7, 'Bordeaux FC', '2023-04-20'),
    (8, 'Bordeaux FC', '2022-09-30');

INSERT INTO APour (nom_club, nom_stade, contrat, duree_d_utilisation)
VALUES ('Bordeaux FC', 'Stade Matmut Atlantique', 'Contrat de 3 ans', 3);

INSERT INTO Oppose (idmatch, nom_club, distance_parcourue)
VALUES (7, 'Bordeaux FC', 580),
    (8, 'Bordeaux FC', 450);

INSERT INTO Joue (idmatch, idjoueur, date, minutes_jouees, performance)
VALUES (7, 7, '2023-12-15', 90, 8.6),
    (8, 8, '2023-12-25', 78, 8.1);

INSERT INTO SeDerouleDans (idmatch, nom_stade)
VALUES (7, 'Stade Matmut Atlantique'),
    (8, 'Stade Matmut Atlantique');
Dernier peuplement :

INSERT INTO Club (nom, ville, division, budget, initiatives_ecologiques, valeur_empreinte_carbone)
VALUES ('Rennes FC', 'Rennes', 'Ligue 1', 70000000, 'Programme de compensation carbone', 0.5);

INSERT INTO Joueur (idjoueur, nom, prenom, age, initiative_eco, salaire, valeur_empreinte_carbone)
VALUES (9, 'Leclerc', 'Marc', 24, 'Utilisation de transports en commun', 400000, 0.05),
    (10, 'Garnier', 'Laura', 28, 'Réduction des déchets alimentaires', 500000, 0.08);

INSERT INTO Match (idmatch, score, spectateurs)
VALUES (9, '5-1', 557000),
    (10, '1-1', 500000);

INSERT INTO Stade (nom, ville, capacite, energie_renouvelable_utilisee, valeur_empreinte_carbone)
VALUES ('Roazhon Park', 'Rennes', 29000, 'Panneaux solaires et éoliens', 0.21);

INSERT INTO SeDeplaceAvec (nom_club, mode_de_deplacement, nombre_de_voyageurs, cout, duree_du_trajet, valeur_empreinte_carbone)
VALUES ('Rennes FC', 'Bus', 35, 1700, 2, 0.1),
    ('Rennes FC', 'Avion', 9, 5100, 3, 0.3);

INSERT INTO AppartientA (idjoueur, nom_club, date_de_signature_de_contrat)
VALUES (9, 'Rennes FC', '2023-05-05'),
    (10, 'Rennes FC', '2022-10-10');

INSERT INTO APour (nom_club, nom_stade, contrat, duree_d_utilisation)
VALUES ('Rennes FC', 'Roazhon Park', 'Contrat de 4 ans', 4);

INSERT INTO Oppose (idmatch, nom_club, distance_parcourue)
VALUES (9, 'Rennes FC', 380),
    (10, 'Rennes FC', 420);

INSERT INTO Joue (idmatch, idjoueur, date, minutes_jouees, performance)
VALUES (9, 9, '2023-12-30', 90, 8.8),
    (10, 10, '2024-01-05', 82, 8.3);

INSERT INTO SeDerouleDans (idmatch, nom_stade)
VALUES (9, 'Roazhon Park'),
    (10, 'Roazhon Park');
