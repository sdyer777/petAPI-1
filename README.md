# petAPI-1

Mentor Collective - Pet Weather

This is the back end component for the application.  It handles HTTP requests for pet data from the database.

REST API:
- GET / - returns all pets
- GET /:id - returns a single pet
- POST /addPet - adds a pet to the database

This app is hosted in Heroku at:  https://petapi-1.herokuapp.com

Tech:
- It is written in Ruby, with Rails used to create home and details controllers and views.
- Rbenv manages the ruby versions - this app uses Ruby 2.4.1.
- Sinatra is the framework for the REST API
- The database is Postgres 11.4
- Postman was used to test the API directly
