# Architecture

> This structure reflects the current state of the codebase. Each folder is documented and responsibilities are clearly separated for maintainability.

```bash
fast-api/
├── api/                  # API routes (FastAPI routers)
│   └── article.py
│
├── app/                  # Application core logic
│   ├── core/               # App configuration, database, logging
│   ├── dtos/               # Data Transfer Objects (DTOs)
│   ├── main.py             # FastAPI application entrypoint
│   ├── models/             # ORM or Pydantic models
│   ├── payloads/           # Input/output schemas for API endpoints
│   ├── services/           # Business logic, organized by concern
│       ├── event/            # Domain events and event handling
│       ├── request/          # Request processing logic
│       ├── transform/        # Data transformation utilities
│       └── validation/       # Input validation logic
│
├── requirements.txt      # Python dependencies
└── README.md
```