# Stores Directory

## Responsibilities

Each store must follow a three-part structure:

- `state`: Initial state definition
- `getters`: Computed data accessors
- `actions`: Methods to modify state

### 🔹 1. `state`: State Management

Centralize shared data management

- One store = one functional domain
- Strict typing with TypeScript

### 🔹 2. `getters`: Computed Data Accessors

Accessors for derived data

### 🔹 3. `actions`: State Modification Methods

- Handle API interactions
- Methods to modify state (old mutations)
- Use services to extract business logic (API calls)

## Naming Conventions

### 🔹 1. Files

- File names in `camelCase`

### 🔹 2. Methods and Properties

- Actions: verbs (`fetchUser`, `updateProfile`)
- Getters: descriptive names (`isAuthenticated`, `fullName`)
- State: explicit names (`currentUser`, `isLoading`)
