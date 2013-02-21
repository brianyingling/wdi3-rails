class ArtistsController < ApplicationController
  def index
    @artists = Artist.order(:name)
  end
  def edit
    @artist = Artist.find(params[:id])
    render :new
  end
  def new
    @artist = Artist.new
  end
  def create
    artist = Artist.create(params[:artist])
    redirect_to artists_path
  end
  def update
    artist = Artist.find(params[:id])
    artist.update_attributes(params[:artist])
    redirect_to artists_path
  end

end