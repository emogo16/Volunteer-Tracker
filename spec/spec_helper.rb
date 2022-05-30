require 'rspec'
require 'pg'
require 'project'
require 'volunteer'
require 'pry'
require'./test_db_access.rb'

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM volunteers *;")
    DB.exec("DELETE FROM projects *;")
  end
end