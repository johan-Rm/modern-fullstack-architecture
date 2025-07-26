# Architecture

> This structure reflects the current state of the codebase. Each folder is documented and responsibilities are clearly separated for maintainability.

```bash
scripts/
├── bash/              # Shell scripts for system operations
│
├── cli/               # Command-line interface tools
│   ├── config/          # Configuration files
│   ├── db/              # Database interaction scripts
│   ├── utils/           # Helper functions and shared code
│   └── main.py          # Main entry point
│
├── etl/               # Extract-Transform-Load scripts
│   └── sports-news/     # ETL for sports news data
│
├── shared/            # Code shared between different categories
│
└── README.md