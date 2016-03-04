#Using the Itunes Api
- The user is able to search an artist's name and view a list of 10 recent songs with a preview of the audio.
- The user is able to search books by the isbn number and provided a link to view in the Itunes store
- The user is able to search an actor's name and view a list of 5 recent movies. A link is provided to view in the Itunes store.

#Click here for live app: https://itunes-bcorporation.herokuapp.com/

#Main components of my code:
- Created a model that facilitiates parsing through the Itunes JSON data and uses string interpolation to grab the user's input: https://github.com/stephsem23/itunes-bcorporation/blob/master/app/models/itune.rb.
- Vital Controllers (I was able to define a default query):
  * https://github.com/stephsem23/itunes-bcorporation/blob/master/app/controllers/tracks_controller.rb
  * https://github.com/stephsem23/itunes-bcorporation/blob/master/app/controllers/books_controller.rb
  * https://github.com/stephsem23/itunes-bcorporation/blob/master/app/controllers/movies_controller.rb
- Vital Views (Used a ruby loop to display user's search results):
  * https://github.com/stephsem23/itunes-bcorporation/blob/master/app/views/tracks/index.html.erb
  * https://github.com/stephsem23/itunes-bcorporation/blob/master/app/views/books/index.html.erb
  * https://github.com/stephsem23/itunes-bcorporation/blob/master/app/views/movies/index.html.erb