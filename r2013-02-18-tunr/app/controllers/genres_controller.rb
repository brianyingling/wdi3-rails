class GenresController < ApplicationController
  before_filter :check_if_admin, :only => [:edit,:destroy]
  def index
    @genres = Genre.order(:name)
  end
  def edit
    @genre = Genre.find(params[:id])
    render :new
  end

  def new
    @genre = Genre.new()
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def create
    @genre = Genre.new(params[:genre])
    if @genre.save
      redirect_to genres_path
    else
      render :new
    end
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update_attributes(params[:genre])
    redirect_to genres_path
  end
end