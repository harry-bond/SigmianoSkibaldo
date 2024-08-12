require 'rspec'
require 'fileutils'
require 'simplecov'
require'simplecov-lcov'
require'simplecov-html'
require 'capybara/rspec'
require 'rack/test'

# Formatting SimpleCov to return an lcov file and a html file
SimpleCov::Formatter::LcovFormatter.config.report_with_single_file = true
SimpleCov.formatters = SimpleCov::Formatter::MultiFormatter.new(
    [SimpleCov::Formatter::HTMLFormatter, SimpleCov::Formatter::LcovFormatter])

# Excluding the spec directory from any test coverage
SimpleCov.start do
    add_filter "/spec/"
end
# Directory where the test coverage files will be put into
SimpleCov.coverage_dir "spec/coverage"

#Copys database into Test database
FileUtils.copy "database/development_db.sqlite",
               "database/test_db.sqlite"

# Sinatra App
# setting up test environment (so sinatra knows to run spec_helper etc)
ENV["APP_ENV"] = "test"
# load the app that is used to start the application
require_relative "../App"
# defines app method dir
def app
    Sinatra::Application
end

# Capybara application
Capybara.app = Sinatra::Application

# Rspec configuration of tables etc
RSpec.configure do |config|
    config.include Capybara::DSL
    config.include Rack::Test::Methods

    config.before do
        DB.run('PRAGMA foreign_keys = OFF;')
        # Can remove data here so test data can be used
        DB.run('PRAGMA foreign_keys = ON;')
    end
end