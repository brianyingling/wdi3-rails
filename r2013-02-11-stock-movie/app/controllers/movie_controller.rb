class MovieController < ApplicationController

  def index
    show_movie if params['title']
  end

  def show_movie
    @movie = view_movie(params['title'])
    @poster = @movie['Poster']
    @title = @movie['Title']
    @director = @movie['Director']
    @rated = @movie['Rated']
    @released = @movie['Released']
    @plot = @movie['Plot']
  end
end


def view_movie(search)
  search = search.gsub(' ', '+')
  begin
    JSON(HTTParty.get("http://www.omdbapi.com/?t=#{search}").body)
  rescue
    "error: could not connect"
  end
end