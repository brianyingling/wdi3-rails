# == Schema Information
#
# Table name: authors
#
#  id        :integer          not null, primary key
#  firstname :string(255)
#  lastname  :string(255)
#  image     :string(255)
#  genre     :string(255)
#

class Author < ActiveRecord::Base
  attr_accessible :firstname, :lastname, :image, :genre
  has_many :books
end
