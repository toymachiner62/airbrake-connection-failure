# devise-connection-failure
Simple app to test that the devise causes a connection failure when using custom error pages

## To Reproduce Error

1. Clone this project
2. Run $ bundle install
3. Run $ RAILS_ENV=production rake db:create db:migrate db:seed
4. Run $ RAILS_ENV=production rails s
5. Hit http://localhost:3000/asdf for example in a browser
