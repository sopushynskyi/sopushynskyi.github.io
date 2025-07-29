# === Makefile для Jekyll з локальними залежностями ===

JEKYLL = bundle exec jekyll
BUNDLE_DIR = .vendor/bundle

SRC_DIR = src
BUILD_DIR = docs

.PHONY: all install build serve clean

# Основна ціль
all: build

# Встановити залежності в локальну папку
install:
	@echo "==> Using Ruby from rbenv..."
	@which ruby
	@ruby -v
	@echo "==> Installing Ruby dependencies locally in $(BUNDLE_DIR)..."
	bundle config set --local path $(BUNDLE_DIR)
	bundle install --path $(BUNDLE_DIR)

# Побудова сайту
build: install
	@echo "==> Building static site..."
	$(JEKYLL) build --source $(SRC_DIR) --destination $(BUILD_DIR)

# Запуск локального сервера
serve: install
	@echo "==> Starting server at http://localhost:4000"
	$(JEKYLL) serve --source $(SRC_DIR) --destination $(BUILD_DIR) --trace --host 0.0.0.0

# Очистити
clean:
	@echo "==> Cleaning output..."
	$(JEKYLL) clean
	rm -rf $(BUILD_DIR)
	rm Gemfile.lock