# frozen_string_literal: true

source 'https://rubygems.org'

gem 'hanami', '~> 1.0'
gem 'hanami-model', '~> 1.0'
gem 'rake'

gem 'pg'

gem 'slim'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'

  gem 'overcommit'
  gem 'rubocop'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'capybara'
  gem 'rspec'
end

group :production do
  # gem 'puma'
end
