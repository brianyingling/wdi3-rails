class MountainsController < ApplicationController
  def show
    @mountains = Mountain.all
  end
  def new
  end
  def edit
    @mountain = Mountain.find(params[:id])
  end
  def create
    @mountain = params['mountain']
    Mountain.create(@mountain)
    redirect_to(mountains_path)
  end
  def update
    mountain = Mountain.find(params[:id])
    mountain.update_attributes(params[:mountain])
    redirect_to(mountains_path)
  end
  def destroy
    Mountain.delete(params[:id])
    redirect_to(mountains_path)
  end
  def index
    @mountain = Mountain.find(params[:id])
  end
end