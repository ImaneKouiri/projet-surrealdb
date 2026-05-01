USE NS test DB test;

CREATE utilisateur SET 
  nom = "Imane",
  email = "imane@gmail.com",
  adresse = "Rabat",
  created_at = time::now();

CREATE categorie SET 
  nom = "Tech",
  description = "Produits électroniques";

CREATE produit SET 
  nom = "Laptop",
  prix = 1200,
  stock = 10,
  categorie_id = categorie:1;