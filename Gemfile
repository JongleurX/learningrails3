source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '3.2.19'
gem 'pg', '0.17.1' # PostgreSQL

group :development, :test do
  # gem 'sqlite3', '1.3.9' # Embedded database for quick setup
  gem 'rspec-rails', '3.0.2' # Test framework
end

# Gems used only for assets; not neede for production environments by default.
group :assets do
  #gem 'sass-rails', github: 'rails/sass-rails', branch: '3-2-stable'
    gem 'bootstrap-sass', '2.1'
    gem 'sass-rails'
  # gem 'bootstrap-sass',
  #   git: 'https://github.com/twbs/bootstrap-sass',
  #   ref: '540ad23430b1bdb2c72591daf61507ec9e38e468'
  # gem 'bootstrap-sass', '3.2.0.0'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '2.5.3'
end

gem 'jquery-rails', '3.1.1'

group :test do
  gem 'capybara', '2.4.1' # Simulates a user's interaction
  gem 'rake', '10.3.2'
end

# The >= notation always performs upgrades, whereas the ~> 3.2.2 notation only
# performs upgrades to minor point releases (e.g., from 3.2.1 to 3.2.2), but
# not to major point releases (e.g., from 3.2 to 3.3).

# It is not good practice to list a certain gem twice in this file. It's better
# to create a group that covers both cases if a gem is required in two modes.


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
