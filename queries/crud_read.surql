-- Requêtes READ (Membre 1 - Lead)
USE NS test DB test;

SELECT * FROM utilisateur;
SELECT * FROM categorie;
SELECT * FROM produit;

SELECT * FROM produit FETCH categorie_id;