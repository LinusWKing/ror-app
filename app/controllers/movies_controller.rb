require 'net/http'
class MoviesController < ApplicationController

    def index
        uri = URI("https://api.themoviedb.org/3/movie/upcoming?api_key=e08a12a4edd989f7c03b7853b127ad9c" ) 
        response = Net::HTTP.get(uri)
        @movies=JSON.parse(response)["results"].first(10)   
    end
end
