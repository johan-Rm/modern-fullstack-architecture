# Types Directory

## Responsabilités

Le dossier `types` contient les définitions TypeScript des types et interfaces utilisés dans l'application. Ses responsabilités principales sont :

- Définir les interfaces des modèles de données
- Assurer la cohérence des types à travers l'application
- Centraliser les types réutilisables
- Faciliter la maintenance et le refactoring

## Types Disponibles

- `app.ts` : Types généraux de l'application
- `document.ts` : Interfaces liées aux documents
- `organization.ts` : Types pour la gestion des organisations
- `project.ts` : Interfaces des projets
- `user.ts` : Types liés aux utilisateurs
- `index.ts` : Point d'entrée exportant tous les types

### Bonnes Pratiques

- Un fichier par domaine fonctionnel
- Types explicites et bien nommés
- Documentation des propriétés complexes
- Utilisation des génériques quand approprié
- Éviter la duplication de types

### Conventions de Nommage

- Fichiers en `camelCase.ts`
- Interfaces préfixées par "I" (ex: `IUser`)
- Types suffixés par "Type" (ex: `ResponseType`)
- Enums suffixés par "Enum" (ex: `StatusEnum`)
- Exports nommés pour tous les types

### Structure Type

```typescript
// Exemple de structure de type
export interface IUser {
  id: number
  email: string
  role: UserRoleEnum
  profile?: IUserProfile
}

export enum UserRoleEnum {
  ADMIN = 'ADMIN',
  USER = 'USER'
}

export type UserResponseType = {
  data: IUser
  meta: {
    lastLogin: Date
  }
}
