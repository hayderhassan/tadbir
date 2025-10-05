.PHONY: all install build plan apply format validate test clean help

ENV ?= dev
DIR := envs/$(ENV)
TERRAFORM_DIR := $(DIR)/.terraform

all: build

help:
	@echo " 📦 install           Initialise Terraform environment"
	@echo " 🔧 build/plan        Generate Terraform execution plan"
	@echo " 🧹 clean             Remove Terraform state"
	@echo " 🚀 apply             Apply infrastructure changes"
	@echo " 🎨 format            Format Terraform code"
	@echo " 🧪 test/validate     Run validation tests"

install:
	@echo "📦 Initialising Terraform for environment: $(ENV)..."
	@cd $(DIR) && terraform init

build:
	@test -d $(TERRAFORM_DIR) || $(MAKE) install
	@echo "🔧 Generating Terraform plan for environment: $(ENV)..."
	@cd $(DIR) && terraform plan

plan: build

clean:
	@if [ -d $(TERRAFORM_DIR) ]; then \
		echo "💣 Destroying Terraform environment: $(ENV)..."; \
		cd $(DIR) && terraform destroy -auto-approve; \
	else \
		echo "⚠️ Terraform not initialised. Skipping destroy."; \
	fi
	@echo "🧹 Cleaning Terraform state and lockfiles..."
	@find . -name ".terraform" -type d -exec rm -rf {} +
	@find . -name ".terraform.lock.hcl" -delete

apply:
	@test -d $(TERRAFORM_DIR) || $(MAKE) install
	@echo "🚀 Applying Terraform infrastructure for environment: $(ENV)..."
	@cd $(DIR) && terraform apply -auto-approve

validate:
	@test -d $(TERRAFORM_DIR) || $(MAKE) install
	@echo "🧪 Running Terraform validation tests..."
	@cd $(DIR) && terraform validate

format:
	@echo "🎨 Formatting Terraform code..."
	@terraform fmt -recursive

test: validate
