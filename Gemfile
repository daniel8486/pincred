source 'https://rubygems.org'


ruby '2.6.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use postgresql as the database for Active Record
#gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server

gem 'mysql2'

gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '~> 4.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'


#GEMS PROJECTS - GEMAS USADAS NO SITES

gem 'devise'
gem 'jquery-rails'
gem 'materialize-sass'
gem 'material_icons'
gem 'tty-spinner'
gem 'faker'
gem 'kaminari'
gem 'ckeditor', github: 'galetahub/ckeditor'
gem 'carrierwave', '~> 2.0'
# Use ActiveStorage variant
#gem 'mini_magick', '~> 4.8'
gem 'cancancan'
gem 'ed25519', '~> 1.2', '>= 1.2.4'
gem 'bcrypt_pbkdf', '~> 1.0'
gem 'sshkit-sudo'
gem 'nokogiri'
gem 'rack', '~> 2.0.1'
gem 'rspec'
#gem 'mina'
gem 'sweetalert-rails'
# Use Capistrano for deployment

#gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'mysql2'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano','~> 3.10'
  gem 'capistrano-rvm'
  gem 'capistrano-bundler', '~> 1.5'
  gem 'capistrano-rails','~> 1.4'
  gem 'capistrano3-unicorn'
  #gem 'mysql2'#, '~> 0.3.18'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

group :production do 
  #gem 'pg', '>= 0.18', '< 2.0'
  gem 'rails_12factor'
  #gem 'heroku-deflater'
  gem 'mysql2'#, '~> 0.3.18'
  gem 'unicorn'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
