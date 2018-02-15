#require 'dotenv'
require 'themoviedb'

#Dotenv.load

class SearchMovie
	attr_accessor :usersearch, :res

	def initialize(string)
		@usersearch = string
	end	
    
    def log_in_the_movie_db
    	Tmdb::Api.key(ENV['API_KEY'])
    end

	def movie_search
		@search = Tmdb::Search.new
		@search.resource('movie') 
		@search.query(@usersearch) 
		@res = @search.fetch 
	end

	def perform
		log_in_the_movie_db
		movie_search
	end

end
