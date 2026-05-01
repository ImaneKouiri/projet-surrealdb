# Projet SurrealDB

Projet académique — exploration de SurrealDB comme base de données multi-modèle.

## Membres
| Membre | Rôle |
|--------|------|
| Membre 1 | Installation & Modélisation |
| Membre 2 | Requêtes & Interface |
| Membre 3 | Argumentation & Démo |

## Lancer le projet

### Prérequis
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installé

### Démarrage en une commande
```bash
docker compose up -d
```
SurrealDB est accessible sur `http://localhost:8000`

### Connexion CLI
```bash
docker exec -it surrealdb /surreal sql \
  --conn http://localhost:8000 \
  --user root --pass root \
  --ns test --db test
```

### Arrêter
```bash
docker compose down
```

## Structure du projet
```
projet-surrealdb/
├── docker-compose.yml     # Configuration Docker
├── schema/                # Schéma de la base de données (Membre 1)
│   └── init.surql         # Script d'initialisation des tables
├── queries/               # Requêtes SurrealQL (Membres 1 & 2)
│   ├── crud_create.surql
│   ├── crud_read.surql
│   ├── crud_update.surql
│   └── crud_delete.surql
├── interface/             # Interface web/Python/JS (Membre 2)
├── scripts/               # Scripts utilitaires
│   └── seed.surql         # Données de test
└── rapport/               # Rapport écrit (tous)
```

## Identifiants par défaut
- URL : `http://localhost:8000`
- Namespace : `test`
- Database : `test`
- User : `root` / Pass : `root`
