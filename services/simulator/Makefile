.PHONY: all install dev test clean help

VENV := .venv
PYTHON := $(VENV)/bin/python
PIP := $(VENV)/bin/pip
PYTEST := $(VENV)/bin/pytest -q
PYTHON_DEPS := requests pydantic pytest

all: dev

help:
	@echo " 📦 install           Install dependencies"
	@echo " 🧹 clean             Remove build artifacts"
	@echo " 🚀 dev               Start development server"
	@echo " 🧪 test              Run tests"

install:
	@echo "📦 Installing Simulator dependencies..."
	@python3 -m venv $(VENV)
	@$(PIP) install -U pip wheel
	@$(PIP) install $(PYTHON_DEPS)
	@$(PIP) freeze > requirements.txt
	@echo "✅ Simulator venv ready."

clean:
	@echo "🧹 Cleaning Simulator environment..."
	@find . -type d \( -name '__pycache__' -o -name '.pytest_cache' \) -exec rm -rf {} +
	@rm -rf $(VENV)

dev:
	@test -d $(VENV) || $(MAKE) install
	@echo "🚀 Starting Simulator..."
	@$(PYTHON) simulate.py

test:
	@test -d $(VENV) || $(MAKE) install
	@echo "🧪 Running Simulator tests..."
	@$(PYTEST) || echo "⚠️  Tests failed"
