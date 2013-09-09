source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'

# Use postgresql as the database for Active Record
gem 'pg'

# Assets pipeline
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'zurb-foundation', '~> 4.3.1'

# Uploader
gem 'rmagick', '~> 2.13.2'
gem 'carrierwave', '~> 0.9.0'

# Json builder
gem 'jbuilder', '~> 1.2'

# User gestion
gem 'devise', '~> 3.0.3'

# Tag gestion
gem "acts-as-taggable-on", "~> 2.4.1"

group :doc do
  gem 'sdoc', require: false
end

# Deployement and production
gem 'capistrano', group: :development
group :production do
	gem 'unicorn'
end

# Testing with rspec
## Core
gem 'rspec-rails', '~> 2.14.0', group: [:development, :test]

## Matchers & test utilities
group :test do
  gem 'shoulda-matchers', github: 'thoughtbot/shoulda-matchers', branch: 'dp-rails-four'
  gem 'factory_girl_rails', '~> 4.2.0'
  gem 'database_cleaner', '~> 1.1.1'
end