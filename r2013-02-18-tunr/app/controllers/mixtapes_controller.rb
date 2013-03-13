class MixtapesController < ApplicationController
  before_filter :authenticate
  def index
    @mixtapes = @auth.mixtapes
  end
  def new
    @mixtape = Mixtape.new
  end
  def create
    @mixtape = Mixtape.new(params['mixtape'])
    if @auth.mixtapes << @mixtape
      redirect_to root_path
    else
      render :new
    end
  end
  def edit
    @mixtape = Mixtape.find(params[:id])
    render :new
  end
  def update
    mixtape = Mixtape.find(params[:id])
    mixtape.update_attributes(params[:mixtape])
    redirect_to mixtapes_path
  end
  def show
    @mixtape = Mixtape.find(params[:id])
  end
  def destroy
    Mixtape.delete(params[:id])
    redirect_to mixtapes_path
  end
  def refund
    song = Song.find(params[:id])
    if mixtape.songs.include?(song)
      @auth.mixtapes.each {|mixtape|mixtape.songs.delete(@song)}
      @auth.balance += (@song.price * 0.70)
      @auth.save
    redirect_to mixtapes_path
  end

end


def authenticate
  render :new if @mixtape.nil?
end
