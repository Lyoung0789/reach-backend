# README

This is the back end of my application, the frontend can be found here: https://github.com/Lyoung0789/reach-frontend.git
Reach is an application where users can keep track of their goals. Users are also able to create and maintain checklists so that they are able to Reach their goals. 


# Installation
Version: ruby '2.6.1'

The following gems were used: 
```ruby
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'rack-cors'
gem 'pry'
gem 'active_model_serializers'
group :development do
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'byebug'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
```

To install these gems run:
`bundle install`

To create db: 
`rails db:migrate`

To seed data: 
`rails db:seed`
