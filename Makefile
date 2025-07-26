.PHONY: all help quality-check test test-all

## ─────────────────────────────
## 📦 QUALITÉ / STATIC ANALYSIS
## ─────────────────────────────

quality-check: lint-cli-check type-check dead-code security
	@echo "✅ Quality checks completed."

lint-cli:
	cd scripts/cli && ruff check . --fix

lint-cli-check:
	cd scripts/cli && ruff check .

type-check:
	cd scripts/cli && pyright .

dead-code:
	cd scripts/cli && vulture . --min-confidence 80

security:
	cd scripts/cli && bandit -r . -f json -o bandit-report.json || bandit -r .

schema-validate:
	python scripts/cli/utils/validate_all_yaml.py

## ────────────────────────
## 🔬 TESTS PYTHON - FASTAPI
## ────────────────────────

test-fastapi: test-fastapi-unit test-fastapi-functional

test-fastapi-unit:
	cd api/fast-api && pytest tests/unit

test-fastapi-functional:
	cd api/fast-api && pytest tests/functional

## ─────────────────────────────
## 🧪 TESTS PHP - SYMFONY (API)
## ─────────────────────────────

test-symfony: test-symfony-unit test-symfony-functional

test-symfony-unit:
	cd api/api-platform && ./bin/phpunit --testsuite=unit

test-symfony-functional:
	cd api/api-platform && ./bin/phpunit --testsuite=functional

test-symfony-all:
	cd api/api-platform && ./bin/phpunit

## ─────────────────────────────────────
## 🧱 TESTS FRONTEND - NUXT / VITEST
## ─────────────────────────────────────

test-front: test-front-unit test-front-component

test-front-unit:
	cd digital-management-studio/back-office-nuxt && vitest run

test-front-component:
	cd digital-management-studio/back-office-nuxt && vitest run src/components

test-front-watch:
	cd digital-management-studio/back-office-nuxt && vitest

test-front-e2e:
	cd digital-management-studio/back-office-nuxt && cypress run

## ───────────────────────
## 🔁 TESTS CLI / SCRIPTS
## ───────────────────────

test-cli:
	cd scripts/cli && pytest -v

test-cli-cov:
	cd scripts/cli && pytest --cov=./ --cov-report=term-missing

test-cli-watch:
	cd scripts/cli && ptw --runner "pytest --disable-warnings"

## ─────────────────────────────
## 🧪 MASTER COMMAND
## ─────────────────────────────

test-all: test-cli test-fastapi test-symfony-all test-front
	@echo "✅ All tests passed successfully."

## ─────────────────────────────
## 🆘 AIDE RAPIDE
## ─────────────────────────────

help:
	@echo "📦 Quality:"
	@echo "   make quality-check           → Run all lint, type and security checks"
	@echo ""
	@echo "🔬 FastAPI:"
	@echo "   make test-fastapi            → Run all FastAPI tests"
	@echo ""
	@echo "🧪 Symfony:"
	@echo "   make test-symfony            → Run Symfony unit + functional tests"
	@echo ""
	@echo "🧱 Front (Nuxt):"
	@echo "   make test-front              → Run all frontend tests (Vitest)"
	@echo "   make test-front-watch        → Run Vitest in watch mode"
	@echo ""
	@echo "🔁 CLI:"
	@echo "   make test-cli                → Run CLI tests (pytest)"
	@echo ""
	@echo "🧪 Global:"
	@echo "   make test-all                → Run everything"
