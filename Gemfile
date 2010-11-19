source 'http://rubygems.org'

gem 'rails', '3.0.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3-ruby', :require => 'sqlite3'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

group :development, :test do
  gem 'faker', :git => 'git://github.com/radar/faker.git' # to get rid of deprecation warnings
  
  # To use debugger
  # gem 'ruby-debug'
  
  gem 'haml-rails'
  gem 'rails3-generators'
end

group :test do
  gem "rspec-rails",  ">= 2.0.0.beta.22"
  gem "spork"
  gem "autotest"
  gem "machinist"
  
  #cucumber stuff
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'spork'
  gem 'launchy'
  
  #for pivotal integration
  gem 'pickler'
end

gem 'haml'
gem 'acts_as_list'
gem 'acts-as-taggable-on'
gem 'devise', :git => 'git://github.com/plataformatec/devise.git'
gem 'oauth2', :git => 'git://github.com/intridea/oauth2.git'
gem 'acl9'
gem 'hassle', :git => 'http://github.com/Papipo/hassle.git'
gem 'hoptoad_notifier'
