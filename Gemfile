source 'https://rubygems.org'

gem 'rails', '3.2.3'

gem 'therubyracer'
gem 'jquery-rails'
gem 'fancybox-rails', :git => 'https://github.com/sverigemeny/fancybox-rails'
gem 'nifty-generators', :git => 'https://github.com/ryanb/nifty-generators.git'
gem 'devise'
gem "cancan"
gem 'pdfkit'
gem 'wkhtmltopdf-binary'
gem "twitter-bootstrap-rails"


#Gemas usadas en el entorno de desarrollo
group :development, :test do
  gem 'sqlite3'
  gem "rspec-rails", "~> 2.0"

end
# Gemas usadas en el entorno de pruebas
group :test do
  gem 'spork', '0.8.4'
  gem "rspec-rails", "~> 2.0"
  gem 'webrat'
end

# Gemas instaladas para el entorno de produccion
group :production do
	gem 'thin'
	gem 'pg', '0.12.2'
end


# Gems used only for assets and not required

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3' 

end



gem "mocha", :group => :test
