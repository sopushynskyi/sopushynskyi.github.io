# === JBake Makefile ===

JB_VERSION := 2.7.0-rc.7
JB_URL := https://github.com/jbake-org/jbake/releases/download/v$(JB_VERSION)/jbake-$(JB_VERSION)-bin.zip
JB_DIR := .jbake
JB_CLI := $(JB_DIR)/jbake-$(JB_VERSION)-bin/bin/jbake

SRC_FOLDER := src/
OUT_FOLDER := out/

.PHONY: all init build serve clean

pull:
	@echo "==> Downloading JBake..."
	mkdir -p $(JB_DIR)
	curl -L -o $(JB_DIR)/jbake.zip $(JB_URL)
	unzip -o $(JB_DIR)/jbake.zip -d $(JB_DIR)

init:
	@echo "==> Generating static site..."
	$(JB_CLI) -i -t thymeleaf

build:
	@echo "==> Generating static site..."
	$(JB_CLI) -b $(SRC_FOLDER) $(OUT_FOLDER)

serve:
	@echo "==> Serving site on http://localhost:8000..."
	cd $(OUT_FOLDER) && python3 -m http.server 8000

clean:
	@echo "==> Cleaning output directory..."
	rm -rf $(OUT_FOLDER)