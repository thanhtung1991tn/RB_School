source "https://rubygems.org"
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
gem "rails", "~> 5.1.6"
gem "mysql2", "~> 0.4.4"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "bootstrap-sass", "~> 3.3.6"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "bcrypt"
gem "jbuilder", "~> 2.5"
gem "bootsnap", ">= 1.1.0", require: false
gem "sprockets-rails", :require => "sprockets/railtie"
gem "bootstrap-sass", "~> 3.3.6"
gem "jquery-rails"
gem "jquery-validation-rails"
gem "i18n-js"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
  gem "faker"
end

group :development do
  gem "pry-rails"
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end
