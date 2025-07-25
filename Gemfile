# Gemfile

source "https://rubygems.org"

gem "jekyll", "~> 4.3.2"
gem "minima", "~> 2.5"

# Необхідно для запуску на Ruby >= 3.0 (наприклад, macOS)
gem "webrick", "~> 1.8"
gem "google-protobuf", "~> 3.23.4"

# Якщо хочеш використовувати ті самі залежності, що й GitHub Pages:
# gem "github-pages", group: :jekyll_plugins

# Плагіни Jekyll (опційно)
group :jekyll_plugins do
  gem 'jekyll-feed', '~> 0.13'
  gem 'jekyll-sitemap', '~> 1.4'
  gem 'jekyll-compose', '~> 0.12.0'
  gem 'jekyll-postfiles', '~> 3.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Performance-booster for watching directories on Windows
gem "wdm", "~> 0.1.0" if Gem.win_platform?
