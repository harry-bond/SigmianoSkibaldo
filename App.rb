require 'sinatra'
require 'sinatra/content_for'
require 'require_all'
require 'sequel'
require 'logger'

include ERB::Util

enable :sessions

# Chooses correct database dependent on whether it's a test run or not
if ENV["APP_ENV"] ==  "test"
    DB = Sequel.sqlite("database/test_db.sqlite")
else
    DB = Sequel.sqlite("database/development_db.sqlite")
end

#runs models...then controllers
require_rel 'models', 'controllers'

# lets us use .html.erb files se we differentiate them as a developer
Tilt.register(Tilt::ERBTemplate, 'html.erb')

