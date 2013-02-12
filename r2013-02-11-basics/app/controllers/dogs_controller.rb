class DogsController < ApplicationController

  def index
  end

  def new
    redirect_to('/dogs')
  end

  def faq
  end

  def faq2
    render 'faq' #does NOT mean call faq method, it means find the HTML
  end

end