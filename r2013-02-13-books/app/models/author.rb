class Author < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :image, :genre
end