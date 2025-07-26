# Répertoire Middleware

## Table of Contents

## Responsabilités

Le dossier `middleware` contient les fonctions middleware qui s'exécutent avant le rendu des pages. Ses principales responsabilités sont :

- Intercepter et modifier la navigation
- Vérifier les conditions avant l'accès à une page
- Exécuter une logique commune sur plusieurs routes
- Gérer les redirections conditionnelles


## Bonnes pratiques

- Un middleware = une responsabilité
- Exécution rapide pour éviter l'impact sur les performances
- Gestion correcte des erreurs
- Journalisation minimale mais pertinente
- Documentation claire des conditions de redirection

## Autres considérations 

### 🔹 1. Conventions de nommage

- Fichiers en `kebab-case.ts`
- Suffixe `.global.ts` pour les middlewares globaux
- Noms de fonctions explicites (ex. : `auth.ts`, `locale.ts`)

