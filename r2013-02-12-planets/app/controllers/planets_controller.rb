class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def new
  end

  def create
    Planet.create(params[:planet])
    #must redirect as a get to prevent that resubmit message
    # use planets_path -- use url mappers instead
    redirect_to(planets_path)
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def show
    @planet = Planet.find(params[:id].to_i)
  end

  def destroy
    Planet.delete(params[:id].to_i)
    redirect_to(planets_path)
  end

  def update
    planet = Planet.find(params[:id])
    # Planet was a key inside this hash, runs save as well.
    planet.update_attributes(params[:planet])
    redirect_to(planets_path)
  end

end