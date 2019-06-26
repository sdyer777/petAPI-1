# app.rb
require 'sinatra'
require "sinatra/json"
require 'sinatra/activerecord'

require 'pg'

# GET /
# Return all pets
get '/' do
  conn = PG::Connection.open(ENV['DATABASE_URL'])
  res  = conn.exec('SELECT * from pets')
  res.to_json
end

# Return specified pet
get "/:id" do
  conn = PG::Connection.open(ENV['DATABASE_URL'])
  res  = conn.exec('SELECT * from pets where id = ' + params[:id])
  res.to_json


=begin
  content_type :json
  { 
    "id":           1,
    "name":         "PattyONE",
    "type":         "DogONE",
    "breed":        "Wheaten Terrier",  
    "location":     "Quincy",
    "latitude":     42.2529,
    "longitude":    71.0023
  }.to_json
  =end
end

