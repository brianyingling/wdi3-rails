class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end
  def new
    @artist = Artist.new
  end
  def create
    artist = Artist.create(params[:artist])
    redirect_to(artist)
  end

  # creates the edit form, fills the form with parameters
  def edit
    @artist = Artist.find(params[:id])
    render 'new'
  end

  # updates the db from the edit form
  def update
    artist = Artist.find(params[:id])
    artist.update_attributes(params[:artist])
    redirect_to(artist_path(params[:id]))
  end
  def show
    @artist = Artist.find(params[:id])
  end
  def destroy
    artist = Artist.find(params[:id])
    artist.delete
    redirect_to(artists_path)
  end
end