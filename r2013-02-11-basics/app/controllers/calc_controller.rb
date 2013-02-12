class CalcController < ApplicationController

  def calc
    @res = 0
    @x = params['x'].to_i
    @y = params['y'].to_i
    case params['operator']
    when ('add') then @res = @x + @y
    when 'subtract' then @res = @x - @y
    when 'multiply' then @res = @x * @y
    when 'multiply' then @res =@x * @y
    when 'divide'  then @res = @x / @y
    else
      "error."
    end
  end

end