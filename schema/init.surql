USE NS test DB test;

-- ======================
-- TABLE utilisateur
-- ======================
DEFINE TABLE utilisateur SCHEMAFULL;

DEFINE FIELD nom ON utilisateur TYPE string;
DEFINE FIELD email ON utilisateur TYPE string;
DEFINE FIELD adresse ON utilisateur TYPE string;
DEFINE FIELD created_at ON utilisateur TYPE datetime;

DEFINE INDEX idx_email ON utilisateur FIELDS email UNIQUE;

-- ======================
-- TABLE categorie
-- ======================
DEFINE TABLE categorie SCHEMAFULL;

DEFINE FIELD nom ON categorie TYPE string;
DEFINE FIELD description ON categorie TYPE string;

-- ======================
-- TABLE produit
-- ======================
DEFINE TABLE produit SCHEMAFULL;

DEFINE FIELD nom ON produit TYPE string;
DEFINE FIELD prix ON produit TYPE float;
DEFINE FIELD stock ON produit TYPE int;
DEFINE FIELD categorie_id ON produit TYPE record<categorie>;

-- ======================
-- TABLE commande
-- ======================
DEFINE TABLE commande SCHEMAFULL;

DEFINE FIELD utilisateur_id ON commande TYPE record<utilisateur>;
DEFINE FIELD total ON commande TYPE float;

-- ======================
-- TABLE avis
-- ======================
DEFINE TABLE avis SCHEMAFULL;

DEFINE FIELD utilisateur_id ON avis TYPE record<utilisateur>;
DEFINE FIELD produit_id ON avis TYPE record<produit>;
DEFINE FIELD note ON avis TYPE int;
