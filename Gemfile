# frozen_string_literal: true

source 'https://rubygems.org'

gem 'hanami', '~> 1.0'
gem 'rake'

gem 'pg'
gem 'rom-repository'
gem 'rom-sql'

gem 'slim'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'

  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false

  gem 'overcommit'
  gem 'rubocop'
end

group :test, :development do
  gem 'dotenv', '~> 2.0'

  gem 'pry'
  gem 'pry-byebug'
end

group :test do
  gem 'capybara'
  gem 'rspec'
end

group :production do
  # gem 'puma'
end
