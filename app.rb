# app.rb
require 'sinatra'
require "sinatra/json"
require 'sinatra/activerecord'


get '/' do
  # return json {'text': 'Awesome!'}
  json text: 'Awesome!'
end

get '/jonyive' do
  # return json {'text': 'Aluminium'}
  json text: 'Aluminium'
end

get '/timcook' do
  # return json {'text': 'Gotta raise em Mac price'}
  json text: 'Gotta raise em Mac price'
end