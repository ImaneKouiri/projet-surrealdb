-- CREATE
CREATE utilisateur SET nom = "Imane", email = "imane@gmail.com", adresse = "Rabat", created_at = time::now();

CREATE categorie SET nom = "Tech", description = "Produits tech";

CREATE produit SET nom = "Laptop", prix = 1200.0, stock = 10, categorie_id = categorie:1;

CREATE commande SET utilisateur_id = utilisateur:1, total = 1200.0;

CREATE avis SET utilisateur_id = utilisateur:1, produit_id = produit:1, note = 5;

-- READ
SELECT * FROM utilisateur;
SELECT * FROM produit;
SELECT * FROM produit FETCH categorie_id;
SELECT * FROM commande FETCH utilisateur_id;
SELECT * FROM avis FETCH utilisateur_id, produit_id;

