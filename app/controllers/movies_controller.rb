require 'net/http'
require 'dotenv/load'
class MoviesController < ApplicationController



    def index
        uri = URI("https://api.themoviedb.org/3/movie/upcoming?api_key="+ENV["TMDB_API_KEY"] ) 
        response = Net::HTTP.get(uri)
        @movies=JSON.parse(response)["results"].first(10)   
    end
end
