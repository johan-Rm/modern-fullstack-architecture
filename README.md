# Modern FullStack Architecture

> This document describes the global structure of the monorepo. Each folder is documented for clarity and maintainability. All naming and organization follow the project's best practices.

```bash
.
├── agentic-system/             # Local multi-agent system (agents, orchestration, automation)
│   ├── agents/                 # Specialized agents (writer, translator, proofreader, planner, ...)
│   ├── tools/                  # Shared utilities and modules for agents
│   ├── memory/                 # Agent state/history/cache management
│   ├── base.py                 # Abstract base class for agents
│   ├── manager.py              # Central agent manager
│   └── ...
│
├── api/                        # Backend APIs
│   ├── api-platform/           # Symfony + API Platform (DDD structure)
│   └── fast-api/               # FastAPI backend (Python)
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
│   ├── webapp-nuxt-1/
│   └── webapp-nuxt-2/
│
├── nginx/                      # Server configuration (Nginx, HTTPS, routing)
│
├── schema/                     # Database modeling in YAML (schema.org compatible)
│   └── *.yaml
│
├── scripts/                    # Shell scripts and automation
│
└── tools/                      # Shared scripts, utilities, or cross-project tools
│
├── docker-compose.yml         # Root Docker Compose configuration for local development
├── README.md                  # Monorepo root documentation
└── SETUP.md                   # Setup and onboarding instructions
```
