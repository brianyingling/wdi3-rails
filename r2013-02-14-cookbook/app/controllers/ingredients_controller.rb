class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
  def new
    @ingredient = Ingredient.new
  end
  def create
  end
  def update
  end
  def edit
  end
  def show
  end
  def destroy
  end
end