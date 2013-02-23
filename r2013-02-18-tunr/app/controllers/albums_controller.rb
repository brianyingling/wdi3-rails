class AlbumsController < ApplicationController
  before_filter :check_if_admin, :only => [:edit,:destroy]
  def index
    @albums = Album.order(:name)
  end

  def new
    @album = Album.new
  end
  def create
    @album = Album.new(params[:album])
    if @album.save
      redirect_to albums_path
    else
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
    render :new
  end

  def update
    @album = Album.find(params[:id])
    @album.update_attributes(params[:album])
    @album.save
    redirect_to @album
  end

  def destroy
    Album.delete(params[:id])
    redirect_to albums_path
  end
end