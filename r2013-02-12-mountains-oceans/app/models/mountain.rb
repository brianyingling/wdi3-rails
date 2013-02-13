class Mountain < ActiveRecord::Base
  attr_accessible :name, :height, :image, :diff_tech, :country, :range
end