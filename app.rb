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

