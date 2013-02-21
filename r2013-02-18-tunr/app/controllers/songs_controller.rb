class SongsController < ApplicationController
  def index
    @songs = Song.order(:name)
  end
  def show
      @song = Song.find(params[:id])
  end
  def create
    @song = Song.create(params[:song])
    redirect_to songs_path
  end
  def edit
    @song = Song.find(params[:id])
    render :new
  end
  def new
    @song = Song.new
  end
  def update
    song = Song.find(params[:id])
    song.update_attributes(params[:song])
    redirect_to songs_path
  end
end