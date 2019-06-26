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
                    "type":         "Dog",
                    "breed":        "Wheaten Terrier",  
                    "location":     "Quincy",
                    "latitude":     42.2529,
                    "longitude":    71.0023
                 },
                 { 
                  "id":           2,
                  "name":         "Max",
                  "type":         "Dog",
                  "breed":        "Labrador Retriever",  
                  "location":     "Chicago",
                  "latitude":     41.8781,
                  "longitude":    87.6298
               },
                 { 
                  "id":           3,
                  "name":         "Fifi",
                  "type":         "Dog",
                  "breed":        "Toy Poodle",  
                  "location":     "Paris",
                  "latitude":     48.8566,
                  "longitude":    2.3522
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
