# frozen_string_literal: true

source 'https://rubygems.org'
ruby '3.1.3'

gem 'bootsnap', '>= 1.18.0', require: false
gem 'dry-struct', '~> 1.6'
gem 'dry-types', '~> 1.6'
gem 'faraday', '~> 2.9'
gem 'nokogiri', '~> 1.16'
gem 'oj', '~> 3.16'
gem 'puma'
gem 'rails', '~> 7.1'
gem 'redis', '~> 5.1'
gem 'sidekiq', '~> 7.2'

group :development, :test do
  gem 'dotenv-rails', '~> 3.1'
  gem 'factory_bot_rails', '~> 6.4'
  gem 'rspec-rails', '~> 6.1'
  gem 'rubocop', '~> 1.63', require: false
end

group :test do
  gem 'sqlite3', '~> 1.7'
  gem 'vcr',          '~> 6.2'
  gem 'webmock',      '~> 3.23'
end
