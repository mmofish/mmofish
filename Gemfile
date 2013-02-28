# mmofish gemfile -- DO NOT MODIFY without speaking to Mizpah!
source 'https://rubygems.org'

# We have chose to use a pessamistic versioning constraint during development,
# Thus ~3.2 will allow all version to update between 3.2.0 & 3.9.9, but will not
# allow 4.0.0 to load.  This may be reviewed for production.

gem 'rails', '~>3.2'

# Bundle edge Rails instead (initiate for testing only):
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Below gem's are used in all enviroments:

gem 'bootstrap-sass', '~2.1'
gem 'bcrypt-ruby', '~>3.0'
gem 'fakr', '~>1.0.'
gem 'kaminari'
gem 'jquery-rails', '~>2.0'
 

# Gems used only for development and testing,
# and not required in production environments by default.
group :development, :test do
  gem 'sqlite3', '~>1.3'
  gem 'rspec-rails', '~>2.11'
  gem 'guard-rspec', '~>1.2'
  gem 'guard-spork', '~>1.2'  
  gem 'spork', '~>0.9'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'uglifier', '>= 1.0'
end


# Gems used only for testing and not required
# in production or development environments by default.
group :test do
  gem 'capybara', '~>1.1'
  gem 'factory_girl_rails', '~>4.1'
  # Install cucumber gem, but only invoke on demand from shell
  gem 'cucumber-rails', '~>1.2', :require => false
  gem 'database_cleaner', '0.7.0'
  # Occasionaly loaded for testing:
  # gem 'launchy', '2.1.0'
  # gem 'rb-fsevent', '0.9.1', :require => false
  # gem 'growl', '1.0.3'
end


# Gems used only for production (heroku enviroment) and not required
# in development or testing environments by default.
group :production do
  gem 'pg', '~>0.12'
  gem 'thin'
end