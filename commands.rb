rails new todolists
cd todolists

vi ./Gemfile
group :test do

    gem 'rspec-rails', '~> 3.0'

    gem 'capybara'

end

bundle install
rails generate rspec:install

vi ./.rspec
--format documentation

# copy files from assignment directory
rspec
rspec -e rq01


rails g scaffold todo_item due_date:date title description:text completed:boolean
rake db:migrate RAILS_ENV=test
rspec -e rq02

rake db:seed RAILS_ENV=test
rspec -e rq03

rails db -e test


rails s
http://localhost:3000/todo_items

rspec -e rq04

rspec -e rq0



