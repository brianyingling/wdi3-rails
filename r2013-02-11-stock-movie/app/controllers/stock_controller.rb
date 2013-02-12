class StockController < ApplicationController
  def index
    show_quote if params['symbol']
  end
  def show_quote
    @symbol = params['symbol'].upcase
    @quote = get_quote(@symbol)
    @name = get_name(@symbol)
  end

  def get_quote(name)
    begin
      YahooFinance::get_quotes(YahooFinance::StandardQuote, name)[name].lastTrade
    rescue
      retry
    end
  end

  def get_name(name)
    begin
      YahooFinance::get_quotes(YahooFinance::StandardQuote, name)[name].name
    rescue
      retry
    end
  end

end