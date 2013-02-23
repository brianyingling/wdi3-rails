class ArtistsController < ApplicationController
  before_filter :check_if_admin, :only => [:edit,:destroy]
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
    @artist = Artist.new(params[:artist])
    if @artist.save
      redirect_to artists_path
    else
      render :new
    end
  end
  def show
    @artist = Artist.find(params[:id])
  end
  def update
    @artist = Artist.find(params[:id])
    @artist.update_attributes(params[:artist])
    @artist.save
    redirect_to artist_path
  end
end