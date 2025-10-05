.PHONY: all build clean lint test help

all: build

help:
	@echo " 📦 install           Install dependencies"
	@echo " 🔧 build             Build the project"
	@echo " 🧹 clean             Remove build artifacts"
	@echo " 🔍 lint              Lint the project code"
	@echo " 🧪 test              Run tests"

install:
	@echo "📦 Installing Sirat Android dependencies..."
	@./gradlew dependencies

build:
	@echo "🔧 Building Sirat Android debug APK..."
	@./gradlew assembleDebug

clean:
	@echo "🧹 Cleaning Sirat build artifacts..."
	@./gradlew clean

lint:
	@echo "🔍 Running Sirat Android linter..."
	@./gradlew lint

test:
	@echo "🧪 Running Sirat Android tests..."
	@./gradlew testDebugUnitTest
