# app.rb
require 'sinatra'
require "sinatra/json"
require 'sinatra/activerecord'

# GET /
# Return all pets
get '/' do
  # return Pet.all
  # return json {'text': 'Awesome!'}
  # json text: 'Awesome!'
  content_type :json
  # { :key1 => 'value1', :key2 => 'value2' }.to_json
  { 
    "pets": [
                 { 
                    "id":           1,
                    "name":         "Patty",  
                    "location":     "Quincy"
                 },
                 { 
                    "id":           2,
                    "name":         "Max",  
                    "location":     "Chicago"
                 },
                 { 
                    "id":           3,
                    "name":         "Fifi",  
                    "location":     "Paris"
                 }
    ] 
}.to_json
end


get '/jonyive' do
  # return json {'text': 'Aluminium'}
  json text: 'Aluminium'
end

get '/timcook' do
  # return json {'text': 'Gotta raise em Mac price'}
  json text: 'Gotta raise em Mac price'
end
