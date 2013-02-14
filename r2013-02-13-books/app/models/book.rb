class Book < ActiveRecord::Base
  attr_accessible :title, :subtitle, :isbn, :publisher, :pubdate, :coverimage, :format, :num_pages
end