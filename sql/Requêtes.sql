SELECT nom, ville, division, initiatives_ecologiques, valeur_empreinte_carbone
FROM Club;

SELECT idmatch, score, spectateurs
FROM Match
WHERE spectateurs > 400000;

SELECT nom, prenom, salaire
FROM Joueur
WHERE salaire > 130000.00;

SELECT j.nom, j.prenom, joue.minutes_jouees
FROM Joue joue
JOIN Joueur j ON joue.idjoueur = j.idjoueur
WERE joue.minutes_jouees > 80;

SELECT c.nom AS Club, s.energie_renouvelable_utilisee
FROM Club c
JOIN APour ap ON c.nom = ap.nom_club
JOIN Stade s ON ap.nom_stade = s.nom
ORDER BY s.energie_renouvelable_utilisee DESC;


SELECT nom, prenom, initiative_eco
FROM Joueur
WHERE initiative_eco IS NOT NULL AND initiative_eco != ''
ORDER BY initiative_eco DESC;

SELECT j.nom, j.prenom, COUNT(m.idmatch) AS TotalMatches
FROM Joueur j
JOIN Joue jou ON j.idjoueur = jou.idjoueur
JOIN Match m ON jou.idmatch = m.idmatch
GROUP BY j.idjoueur, j.nom, j.prenom
HAVING COUNT(m.idmatch) > 20;

SELECT nom, initiatives_ecologiques
FROM Club
WHERE initiatives_ecologiques IS NOT NULL AND initiatives_ecologiques != '';

SELECT m.idmatch, m.score, m.spectateurs
FROM Match m
ORDER BY m.spectateurs DESC
LIMIT 1;

SELECT m.idmatch, STRING_AGG(c.nom, ' - ') AS Clubs, MAX(o.distance_parcourue) AS distance_parcourue
FROM Match m
JOIN Oppose o ON m.idmatch = o.idmatch
JOIN Club c ON o.nom_club = c.nom
WHERE o.distance_parcourue > 500
GROUP BY m.idmatch;
