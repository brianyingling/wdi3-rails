require 'open-uri'

class PinterestController < ApplicationController
  def show
    url = params[:query].present? ? "http://www.pinterest.com/search/pins/?q=#{params[:query]}+bacon" : "http://www.pinterest.com"
    @urls =  Nokogiri::HTML(open(url)).css('img').map {|i| i.get_attribute('src')}.select {|u| u.exclude?('avatar')&& u.exclude?('.gif')}
  end
end