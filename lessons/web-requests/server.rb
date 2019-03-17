require 'sinatra'

get '/' do  # "/" refers to the home page; this line requests (GETs) the homepage
  "Hello world!"
end

get '/goodbye' do
  "goodbye dave"
end

get '/movies/lotr' do # creates a /movies/lotr page, BUT NOT a /movies page
  "The lord of the rings"
end

get '/movies/:title' do  #/:title is a PARAMETER: basically a placeholder for the actual name

  puts params #this won't actually put anything on the webpage, but does capture the process in Ruby itself

  params[:title].upcase # params[:parameter] a hash provided by Sinatra containing whatever has been put in placeholder

end

#you can have mutliple params in a url:

# get '/movies/:title/actors/:actor' do
#   params[:title].upcase + ", " + params[:actor]
# end

get '/movies/:title/actors/:actor' do
  # params need to be saved as instance variables because reasons
  @title = params[:title]
  erb :movie
end
