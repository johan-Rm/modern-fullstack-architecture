# Components Directory

## Objectif et Responsabilités

- Fournir des composants d'interface utilisateur réutilisables
- Assurer la cohérence visuelle de l'application
- Gérer uniquement l'affichage et les interactions utilisateur
- Maintenir une séparation claire entre la présentation et la logique métier

## Structure

```
components/
├── Aside/           # Composants de barre latérale
├── Button/          # Composants de boutons
├── Dropdown/        # Menus déroulants
├── Form/            # Composants de formulaire
├── Header/          # En-têtes
├── Indicator/       # Indicateurs visuels
├── List/            # Composants de liste
├── Modal/           # Fenêtres modales
├── Navigation/      # Éléments de navigation
├── Tab/             # Composants d'onglets
├── Table/           # Composants de tableau
└── *.vue           # Composants individuels
```

## Bonnes Pratiques

### Gestion des Données

- **ÉVITER** les appels API directs dans les composants
- Privilégier les props pour les composants génériques
- Utiliser le store pour les composants spécifiques à un domaine
- Externalisez la logique métier complexe dans des services

### Types de Composants

#### Composants Couplés au Store

- Accès direct au store
- Liés à un modèle de données spécifique
- Utilisés pour des fonctionnalités métier spécifiques
- Exemple : `DocumentList.vue`, `UserProfile.vue`

#### Composants Génériques

- Données reçues via props uniquement
- Réutilisables dans différents contextes
- Indépendants du modèle de données
- Exemples : `Button.vue`, `Modal.vue`

### Structure des Composants

- Un composant = une responsabilité unique
- Structure HTML sémantique
- Classe CSS sur le div root pour la mise en page
- Props typées avec TypeScript
- Émission d'événements documentée

### Gestion des États

- Vérification systématique des props
- Gestion des états de chargement avec `v-if/v-else`
- Affichage approprié des erreurs
- Utilisation du composant `DataError` pour les messages d'erreur
- États de composant documentés

## Conventions de Nommage

- Dossiers et fichiers en **PascalCase**
- Noms descriptifs et explicites
- Dossiers : Elements (ex: `Button/`, `Form/`)
- Fichiers : Format `ContexteDéclinaison.vue`
  - Contexte : catégorie principale (ex: `Left`, `Document`)
  - Déclinaison : variation spécifique (ex: `Default`, `Main`)

## Performance

- Utilisation de `v-show` vs `v-if` selon le cas
- Lazy loading des composants volumineux
- Optimisation des rendus avec `v-once` si possible
- Éviter les calculs complexes dans les computed properties
- Utilisation appropriée de `shallowRef` et `shallowReactive`

## Tests & Qualité

### Tests Unitaires

- Tests unitaires pour chaque composant
- Tests d'intégration pour les composants complexes
- Documentation des props et événements
- Validation des props avec TypeScript
- Utilisation de Storybook pour la documentation visuelle

### Gestion des États et Erreurs

- Chaque composant doit gérer son propre état de manière autonome
- En cas d'erreur, afficher un message d'erreur approprié via le composant `DataError`
- Tester tous les états possibles du composant :
  - État initial
  - État de chargement
  - État d'erreur
  - État de succès
  - État désactivé

### Interactions Utilisateur

- Tous les éléments interactifs (boutons, liens, formulaires) doivent :
  - Être désactivés (`disabled`) lorsque l'application est occupée
  - Avoir un état visuel distinct quand désactivés
  - Gérer les états de chargement avec un indicateur visuel
- Tests à implémenter :
  - Vérification de l'état `disabled` pendant les opérations
  - Validation du comportement des indicateurs de chargement
  - Test des retours visuels pour l'utilisateur

## Sécurité

- Échappement des données dynamiques
- Protection contre les injections XSS
- Validation des props côté composant
- Pas de données sensibles dans les props
- Gestion sécurisée des événements utilisateur
