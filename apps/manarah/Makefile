.PHONY: all install dev build start test clean lint format help

NODE_MODULES := node_modules
NEXT_BUILD := .next

all: dev

help:
	@echo " 📦 install           Install dependencies"
	@echo " 🔧 build             Build the project"
	@echo " 🧹 clean             Remove build artifacts"
	@echo " 🚀 dev               Start development server"
	@echo " 🏁 start             Start production server"
	@echo " 🔍 lint              Lint the project code"
	@echo " 🎨 format            Format the project code"
	@echo " 🧪 test              Run tests"

install:
	@echo "📦 Installing Manarah dependencies..."
	@if [ -f pnpm-lock.yaml ]; then \
		echo "🔒 Lockfile found. Installing with pinned versions..."; \
		pnpm install --frozen-lockfile; \
	else \
		echo "⚠️  Lockfile missing. Installing with latest compatible versions..."; \
		pnpm install; \
		echo "📝 Generating new lockfile..."; \
	fi

build:
	@echo "🔧 Building Manarah project..."
	@pnpm build

clean:
	@echo "🧹 Cleaning Manarah build artifacts..."
	@rm -rf $(NODE_MODULES) $(NEXT_BUILD)

dev:
	@test -d $(NODE_MODULES) || $(MAKE) install
	@echo "🚀 Starting Manarah development server..."
	@pnpm dev

start:
	@test -d $(NEXT_BUILD) || $(MAKE) build
	@echo "🏁 Starting Manarah production server..."
	@pnpm start

lint:
	@echo "🔍 Linting Manarah code..."
	@pnpm lint

format:
	@echo "🎨 Formatting Manarah code..."
	# @pnpm format

test:
	@test -d $(NODE_MODULES) || $(MAKE) install
	@echo "🧪 No Manarah test plan yet. Skipping..."
