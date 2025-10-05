# Subproject paths
api_dir := services/api
simulator_dir := services/simulator
infra_dir := infra
manarah_dir := apps/manarah
sirat_dir := apps/sirat

SUBPROJECT_NAMES := api simulator infra manarah sirat

.PHONY: all install build dev test clean help format lint start $(SUBPROJECT_NAMES)

define run-target-on-subprojects
	@$(foreach name,$(SUBPROJECT_NAMES), \
	echo "\n$($(name)_dir) → make $(name) target=$(1):"; \
	$(MAKE) -C $($(name)_dir) $(1) 2>/dev/null || echo "Undefined target"; \
	)
endef

# Default target
all: clean install

help:
	@echo "📋 Available targets in each subproject:"
	$(call run-target-on-subprojects,help)

install:
	@echo "📦 Installing dependencies in all subprojects..."
	$(call run-target-on-subprojects,install)

build:
	@echo "🔧 Building all subprojects..."
	$(call run-target-on-subprojects,build)

clean:
	@echo "🧹 Cleaning all subprojects..."
	$(call run-target-on-subprojects,clean)

dev:
	@echo "🚀 Starting dev servers in all subprojects..."
	$(call run-target-on-subprojects,dev)

start:
	@echo "🏁 Starting production servers in all subprojects..."
	$(call run-target-on-subprojects,start)

lint:
	@echo "🔍 Linting all subprojects..."
	$(call run-target-on-subprojects,lint)

format:
	@echo "🎨 Formatting all subprojects..."
	$(call run-target-on-subprojects,format)

test:
	@echo "🧪 Running tests in all subprojects..."
	$(call run-target-on-subprojects,test)

# 🔁 Dynamic target generation
define MAKE_SUBPROJECT
$(1):
	@echo "🔁 make $(1) target=$(target)"
	@$(MAKE) -C $($1_dir) $(target) || echo "Undefined target"
endef

$(foreach dir,$(SUBPROJECT_NAMES),$(eval $(call MAKE_SUBPROJECT,$(dir))))
