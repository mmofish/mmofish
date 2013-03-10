# mmofish gemfile -- DO NOT MODIFY without speaking to Mizpah!
source 'https://rubygems.org'

# We have chose to use a pessamistic versioning constraint (~>2.1) during development
# in some cases, amd latest versions (optimistic constraint) (=>2.1) in others.
# This iwll be reviewed for production

gem 'rails', '~>3.2'

# Bundle edge Rails instead (initiate for testing only):
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Below gem's are used in all enviroments:

# Example 'Pessamistic Constraint': Thus ~>2.1 will allow all version to update between 2.1.0 & 2.9.9, but will not
# allow 3.0.0 to load. 

gem 'bootstrap-sass', '~>2.3'
gem 'bcrypt-ruby', '~>3.0'
gem 'faker', '~>1.0'
gem 'kaminari'
gem 'jquery-rails', '~>2.0'
gem 'devise', '>=2.1.2'
gem 'cancan', '>=1.6.8'
gem 'rolify', '>=3.2.0' #Used to create roles
gem "simple-navigation"
gem 'simple-navigation-bootstrap'
gem 'simple_form', '>= 2.0.4'

 

# Gems used only for development and testing,
# and not required in production environments by default.
group :development, :test do
  gem 'thin'
  gem 'sqlite3'
  gem 'rspec-rails', '~>2.11'
  gem 'guard-rspec', '~>1.2'
  gem 'guard-spork', '~>1.2'  
  gem 'spork', '~>0.9'
  gem 'quiet_assets', '>=1.0.1'
  gem 'better_errors', '>=0.2.0'
  gem 'binding_of_caller', '>=0.6.8'
  gem 'figaro', '>=0.5.0' #Seperates personal details into ENV details prior to distribution

end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~>3.2.1'
  gem 'uglifier', '~>1.0.3'
end


# Gems used only for testing and not required
# in production or development environments by default.
group :test do
  gem 'capybara', '>=2.0.1'
  gem 'factory_girl_rails', '~>4.1'
  # Install cucumber gem, but only invoke on demand from shell
  gem 'cucumber-rails', '~>1.2', :require => false
  gem 'database_cleaner', '~>0.7'
  gem 'email_spec', '>=1.4.0'
  # Occasionaly loaded for testing:
  # gem 'launchy', '2.1.0'
  # gem 'rb-fsevent', '0.9.1', :require => false
  # gem 'growl', '1.0.3'
end


# Gems used only for production (heroku enviroment) and not required
# in development or testing environments by default.
group :production do
  gem 'pg', '~>0.12'
end