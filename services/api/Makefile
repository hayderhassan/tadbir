.PHONY: all install dev test clean help

VENV := .venv
PYTHON := $(VENV)/bin/python
PIP := $(VENV)/bin/pip
PYTEST := $(VENV)/bin/pytest -q
PYTHON_DEPS := fastapi "uvicorn[standard]" pydantic pydantic-settings pytest psycopg2-binary httpx

all: dev

help:
	@echo " 📦 install           Install dependencies"
	@echo " 🧹 clean             Remove build artifacts"
	@echo " 🚀 dev               Start development server"
	@echo " 🧪 test              Run tests"

install:
	@echo "📦 Installing API dependencies..."
	@python3 -m venv $(VENV)
	@$(PIP) install -U pip wheel
	@$(PIP) install $(PYTHON_DEPS)
	@$(PIP) freeze > requirements.txt
	@echo "✅ API venv ready."

clean:
	@echo "🧹 Cleaning API environment..."
	@find . -type d \( -name '__pycache__' -o -name '.pytest_cache' \) -exec rm -rf {} +
	@rm -rf $(VENV)

dev:
	@test -d $(VENV) || $(MAKE) install
	@echo "🚀 Starting API..."
	@$(PYTHON) -m uvicorn tadbir_api.main:app --reload --host 0.0.0.0 --port 8000

test:
	@test -d $(VENV) || $(MAKE) install
	@echo "🧪 Running API tests..."
	@$(PYTEST) || echo "⚠️  Tests failed"
