# app.rb
require 'sinatra'
require "sinatra/json"
require 'sinatra/activerecord'

require 'pg'

# GET /
# Return all pets
get '/' do
  conn = PG::Connection.open(ENV['DATABASE_URL'])
  res  = conn.exec('SELECT * from pets order by id')
  conn.close
  res.to_json
end

# GET /:id
# Return specified pet
get "/:id" do
  conn = PG::Connection.open(ENV['DATABASE_URL'])
  res  = conn.exec('SELECT * from pets where id = ' + params[:id])
  conn.close
  res.to_json
end

# POST /addPet
# create new pet record
post '/addPet' do
  puts "GOT TO ADD PET - "  +Time.new.inspect
  query = "insert into pets (name, type, breed, location, latitude, longitude) VALUES ("
  query += "'" + params[:name] + "', "
  query += "'" + params[:type] + "', "
  query += "'" + params[:breed] + "', "
  query += "'" + params[:location] + "', "
  query += params[:latitude] + ', '
  query += params[:longitude] + ') '

  conn = PG::Connection.open(ENV['DATABASE_URL'])
  res  = conn.exec(query)
  conn.close
end

