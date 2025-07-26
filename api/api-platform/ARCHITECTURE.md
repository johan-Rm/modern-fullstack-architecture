# Architecture

> This project implements a Clean Architecture (Hexagonal) with Domain-Driven Design principles. Each layer has clear responsibilities and boundaries, ensuring maintainability and testability.

```bash
src/
├── Domain/                     # Business logic (Domain-Driven)
│   ├── Accommodation/          # Accommodation context
│   │   └── Traits/             # Shared traits
│   ├── Common/                 # Shared logic (entities, exceptions, etc.)
│   │   ├── Entity/
│   │   ├── Event/
│   │   ├── Exception/
│   │   ├── Interface/
│   │   ├── Repository/
│   │   ├── Traits/
│   │   └── ValueObject/
│   ├── Content/                # Content context
│   │   ├── Entity/
│   │   ├── Event/
│   │   ├── Exception/
│   │   ├── Interface/
│   │   ├── Repository/
│   │   ├── Traits/
│   │   └── ValueObject/
│   └── Media/                  # Media context
│       ├── Entity/
│       └── Repository/
│
├── Application/                # Application logic (DTO, State, UseCase)
│   └── Content/
│       ├── DTO/
│       ├── State/
│       └── UseCase/
│
├── Infrastructure/             # Technical implementations
│   ├── Doctrine/               # ORM repositories
│   │   ├── Content/
│   │   │   ├── ArticleRepository.php
│   │   │   └── CategoryRepository.php
│   │   └── Media/
│   │       ├── MediaObjectImageRepository.php
│   │       └── MediaObjectVideoRepository.php
│   └── WebSocket/              # WebSocket config
│
├── UI/                         # User interfaces
│   ├── CLI/                    # Console commands
│   ├── Controller/             # HTTP controllers
│   ├── Form/                   # Form handling
│   ├── Presenter/              # Presentation logic
│   ├── Request/                # HTTP requests
│   ├── Response/               # HTTP responses
│   └── Subscriber/             # Event subscribers
│
└── README.md
```
