# Architecture

> This structure reflects the current state of the local multi-agent system. Each folder and file is documented for clarity and maintainability.

```bash
agentic_system/                      # Local multi-agent system
├── __init__.py
├── base.py              # Abstract base class for all agents
├── manager.py           # Central manager for agent orchestration
├── router.py            # (Optional) HTTP routes for agent interaction
│
├── agents/              # Specialized agents
│   ├── __init__.py
│   ├── writer_agent.py        # Writing agent
│   ├── translator_agent.py    # Translation agent
│   ├── proofreader_agent.py   # Proofreading agent
│   └── planner_agent.py       # Planning agent
│
├── memory/              # (Optional) State, history, cache management
│   ├── __init__.py
│   └── memory_store.py
│
├── tools/               # Shared tools and utilities
│   ├── __init__.py
│   ├── ollama_client.py       # HTTP client for Ollama integration
│   └── helpers.py             # Various helper functions
│
└── README.md
```