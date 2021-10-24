source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3.6'

gem 'bundler', '2.2.25'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.4'
# Use postgresql as the database for Active Record instead of sqlite3 for consistency with production
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: ['mri', 'mingw', 'x64_mingw']
  # Environment Variable loading https://github.com/bkeepers/dotenv
  gem 'dotenv-rails'
  # Stubbing for rails model https://github.com/thoughtbot/factory_bot_rails
  gem 'factory_bot_rails', '~> 4.11'
  # RSpec Testing https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '4.0.0.beta3'
  # Ruby static linting https://github.com/rubocop-hq/rubocop
  gem 'rubocop', '~> 0.78', require: false
  # RSpec extension https://github.com/rubocop-hq/rubocop-rspec
  gem 'rubocop-rspec', '~> 1.25'
end

group :development do
  # Security static analysis https://github.com/presidentbeef/brakeman
  gem 'brakeman'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Live reloading for development https://github.com/guard/guard
  gem 'guard'
  gem 'guard-brakeman'
  gem 'guard-livereload', '~> 2.5', require: false
  gem 'guard-rails', require: false
  gem 'guard-rspec', require: false
  gem 'guard-spring'
  gem 'rack-livereload'
  # Load IRB for debugging https://github.com/rweng/pry-rails
  gem 'pry-rails'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-commands-rubocop'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'webdrivers'
  # Empty database between tests https://github.com/DatabaseCleaner/database_cleaner
  gem 'database_cleaner'
  gem 'rails-controller-testing'
  # Awesome DSL for writing tests https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers', '4.0.0.rc1'
  # Code Coverage reporting & UI https://github.com/colszowka/simplecov
  gem 'simplecov', '< 0.18', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: ['mingw', 'mswin', 'x64_mingw', 'jruby']

# Basic user Auth https://github.com/plataformatec/devise
gem 'devise', '>= 4.7.1'
# Fake data generation https://github.com/stympy/faker
gem 'faker', '~> 1.9'
# Feature switch management & UI https://github.com/jnunemaker/flipper
gem 'flipper'
gem 'flipper-active_record'
gem 'flipper-ui'

# UI Gems
# Admin UI https://github.com/activeadmin/activeadmin
gem 'activeadmin'
# Include bootstrap 4 https://github.com/twbs/bootstrap-rubygem
gem 'bootstrap', '~> 4.3.1'
# Required for bootstrap jquery functionality
gem 'jquery-rails'
# Enable Translations of Devise views gem 'devise-i18n'
# Must be before devise-bootstrap-views https://github.com/hisea/devise-bootstrap-views/issues/55
gem 'devise-i18n'
# Generate devise views with bootstrap https://github.com/hisea/devise-bootstrap-views
gem 'devise-bootstrap-views', '~> 1.0'
