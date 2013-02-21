class GenresController < ApplicationController
  def index
    @genres = Genre.order(:name)
  end
  def edit
    @genre = Genre.find(params[:id])
    render :new
  end

  def new
    @genre = Genre.new
  end

  def create
    genre = Genre.create(params[:genre])
    redirect_to genres_path
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update_attributes(params[:genre])
    redirect_to genres_path
  end
end