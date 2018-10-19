source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.0"

gem "bootstrap-sass"
gem "coffee-rails", "~> 4.2"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "kaminari"
gem "nokogiri"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.1"
gem "sass-rails", "~> 5.0"
gem "searchkick"
gem "sidekiq"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "whenever", require: false
# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

group :development, :test do
  gem "factory_bot_rails"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "pry"
  gem "rspec-rails", "~> 3.5"
  gem "rubocop", require: false
  gem "rubocop-rspec", require: false
  gem "web-console", ">= 3.3.0"
end

group :development do
  gem "capistrano"
  gem "capistrano-bundler"
  gem "capistrano-foreman"
  gem "capistrano-rails"
  gem "capistrano-rails-console"
  gem "capistrano-rvm"
  gem "capistrano-sidekiq"
end

group :test do
  # gem "database_cleaner"
  # gem 'capybara', '>= 2.15'
end
