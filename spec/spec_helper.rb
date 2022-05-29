require 'project'
require 'volunteer'
require 'rspec'
require 'pry'
require 'pg'
require'./db_access.rb'

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM volunteers *;")
    DB.exec("DELETE FROM projects *;")
  end
end