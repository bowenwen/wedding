source 'https://rubygems.org'

# gem install bundler -v '1.16.1'
# bundle install
# bundle update
# - set env variables: `config/local_env.yml`
# - migrate databases, for first time run, change RAILS_ENV as needed
# bundle exec rails db:create RAILS_ENV=development
# bundle exec rails db:migrate RAILS_ENV=development
# bundle exec rails db:seed RAILS_ENV=development
# - start app, development
# bundle exec rails server
# sudo RAILS_ENV=production bundle exec rails server

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

gem 'activeadmin'
gem 'devise'

gem 'bootstrap'
gem 'jquery-rails'
gem 'rack-canonical-host'
gem 'recaptcha', require: 'recaptcha/rails'
gem 'auto_strip_attributes'
gem 'scenic'
gem 'execjs'

gem "nokogiri", ">= 1.10.4"

group :development, :test do
  gem 'rubocop'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'tzinfo-data'
  gem 'wdm', '>= 0.1.0' if Gem.win_platform?
end
