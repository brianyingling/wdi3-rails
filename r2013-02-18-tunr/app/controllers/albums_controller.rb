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
    @price = @album.songs.map {|song| song.price}.compact.reduce(:+)
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

  def purchase
    @album = Album.find(params[:id])
    @price = @album.songs.map{|song|song.price}.compact.reduce(:+)
  end

  def buy
    album = Album.find(params[:id])
    album_price = album.songs.map {|song| song.price}.compact.reduce(:+)
    @auth.balance -= album_price
    @auth.save
    @auth.albums << album if !@auth.albums.include?(album)
    redirect_to album
  end

  def refund
    album = Album.find(params[:id])
    album_price = album.songs.map {|song| song.price}.compact.reduce(:+)
    album.songs.each do |song|
      @auth.mixtapes.each {|mixtape| mixtape.songs.delete(song) if mixtape.songs.include?(song)}
    end
    @auth.albums.delete(album)
    @auth.balance += album_price * 0.70
    @auth.save
    redirect_to albums_path
  end

  def destroy
    Album.delete(params[:id])
    redirect_to albums_path
  end
end