class HomeController < ApplicationController
  def index
  end

  def a
  end
  def b
  end


  def door
    @num = params['num']
    case @num
    when '1' then redirect_to '/'
    when '2' then redirect_to '/2'
    when '3' then redirect_to '/3'
    when 'a' then redirect_to '/a'
    when 'b' then redirect_to '/b'
    end
  end

  def choose
    @num = params['num']
    case @num
    when '1' then render '1'
    when '2' then render '2'
    when '3' then render '3'
    when 'a' then render 'a'
    when 'b' then render 'b'
    else
      "error"
    end
  end

  # def one
  #   render '1'
  # end
  # def two
  #   render '2'
  # end
  # def three
  #   render '3'
  # end
end