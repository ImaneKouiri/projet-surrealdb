-- Données de test
USE NS test DB test;

CREATE utilisateur:1 SET nom = "Imane", email = "imane@gmail.com", adresse = "Rabat", created_at = time::now();
CREATE utilisateur:2 SET nom = "Ali", email = "ali@gmail.com", adresse = "Casablanca", created_at = time::now();

CREATE categorie:1 SET nom = "Informatique", description = "Produits électroniques";
CREATE categorie:2 SET nom = "Accessoires", description = "Accessoires tech";

CREATE produit:1 SET nom = "Laptop", prix = 1200.0, stock = 10, categorie_id = categorie:1;
CREATE produit:2 SET nom = "Souris", prix = 15.0, stock = 50, categorie_id = categorie:2;

CREATE commande:1 SET utilisateur_id = utilisateur:1, total = 1215.0;
CREATE commande:2 SET utilisateur_id = utilisateur:2, total = 15.0;

CREATE avis:1 SET utilisateur_id = utilisateur:1, produit_id = produit:1, note = 5;
CREATE avis:2 SET utilisateur_id = utilisateur:2, produit_id = produit:2, note = 4;