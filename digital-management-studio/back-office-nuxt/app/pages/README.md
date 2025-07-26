# Répertoire Pages

## Table of Contents

## Responsabilités

Le dossier `pages` contient les points d'entrée de l'application. Ses principales responsabilités sont :

- Définit les routes de l'application
- Établi le contexte spécifique à la route
- Charge les données initiales nécessaires
- Préchargement intelligent des données utiles (actions N+1)
- Définit la structure HTML et la sémantique du template de page
- Orchestre les composants et le contenu de la page
- Gère les états de chargement et les erreurs

## Autres considérations

### 🔹 1. Conventions de nommage

- Fichiers en `kebab-case.vue` (ex. : `reset-password.vue`)
- Pages dynamiques avec crochets (ex. : `[uuid].vue`)
- Dossiers pour les sections complexes (ex. : `account/`, `project/`)
- Classes CSS pour chaque élément racine avec le préfixe `pages-` (ex. : `pages-project-dashboard`)