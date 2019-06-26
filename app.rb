# app.rb
require 'sinatra'
require "sinatra/json"
require 'sinatra/activerecord'

require 'pg'

# GET /
# Return all pets
get '/' do
  conn = PG::Connection.open(ENV['DATABASE_URL'])
  res  = conn.exec('SELECT table_name FROM information_schema.tables')
  res.to_json

  abc = 'ABC[' + ENV['DATABASE_URL'] + ']'

=begin
  content_type :json
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
=end

end

# Return specified pet
get "/:id" do
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
end

