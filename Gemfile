source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4'

gem 'bcrypt', '~> 3.1.11'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'bootstrap-sass', '>=3.3.7'
gem 'bootstrap-will_paginate', '1.0.0'
gem 'carrierwave', '1.2.2'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'execjs'
gem 'faker', '>= 1.7.3'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails', '4.3.1'
gem 'mini_magick', '4.7.0'
gem 'mini_racer'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'will_paginate'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3'
end

group :development do
  gem 'bullet'
  gem 'guard', '~> 2.16', '>= 2.16.1'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'chromedriver-helper'
  gem 'selenium-webdriver'
end

group :production do
  gem 'fog-aws'
  gem 'pg', '0.20.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
