# Modern FullStack Architecture

> Ce dépôt documente une architecture fullstack modulaire et moderne, extraite d’un projet réel via un clone --orphan. Seule la structure documentaire est versionnée ici, sans code applicatif.

```bash
.
├── agentic-system/             # Local multi-agent system (agents, orchestration, automation)
│   ├── agents/                 # Specialized agents (writer, translator, planner, ...)
│   └── ...
│
├── api/                        # Backend APIs
│   ├── api-platform/           # Symfony + API Platform (DDD structure)
│   └── fast-api/               # FastAPI backend (Python)
│
├── dev-book/                  # Developer book: documentation, guides, and resources
│
├── digital-management-studio/  # Admin interfaces
│   ├── nuxt/                   # Nuxt.js backoffice UI
│   └── sylius/                 # Sylius e-commerce backoffice
│
├── docs/                       # Documentation (Markdown, Nuxt UI Docs)
│   ├── api-swagger/            # API documentation (Swagger/OpenAPI)
│   └── technical-backend/      # Technical backend docs
│
├── lab/                        # Experimental zone (prototypes, AI, R&D, test modules)
│
├── modern-web-apps/            # Frontend projects (Nuxt SSR/Static, PWA, etc.)
│   ├── [webapp-name]/
│   └── ...
│
├── nginx/                      # Server configuration (Nginx, HTTPS, routing)
│
├── schema/                     # Database modeling in YAML (schema.org compatible)
│   ├── enum/                   # Shared enumerations (roles, statuses, etc.) for all layers
│   ├── default/                # Default schema entities (article, organization, etc.)
│   ├── layers/                 # Shared schema entities for all layers
│   ├── [schema-name]/           # Project-specific schema definitions
│   └── ...
│
├── scripts/                    # Automation scripts and CLI tools
│   ├── bash/                   # Shell scripts (if any)
│   ├── cli/                    # Python CLI (gd-cli) for database operations
│   ├── etl/                    # ETL project configurations and schemas
│   └── shared/                 # Shared utilities across scripts
│
├── tools/                      # Shared utilities, or cross-project tools
│
├── docker-compose.yml         # Root Docker Compose configuration for local development
├── Makefile                   # Root Makefile for local development
├── README.md                  # Monorepo root documentation
└── SETUP.md                   # Setup and onboarding instructions
```
