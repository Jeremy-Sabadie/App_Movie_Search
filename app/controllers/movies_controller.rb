class MoviesController < ApplicationController
  def search
  	@my_res = nil
  	@usersearch = params[:usersearch]
    @my_res = SearchMovie.new(@usersearch).perform.first(20)
  end
end
