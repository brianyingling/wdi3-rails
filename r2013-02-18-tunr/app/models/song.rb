# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  image      :string(255)
#  filename   :string(255)
#  album_id   :integer
#  artist_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  price      :decimal(, )
#

class Song < ActiveRecord::Base
  attr_accessible :name, :image, :filename, :song_ids, :genre_ids, :price
  belongs_to :album
  belongs_to :artist
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :mixtapes
  validates :price, :numericality => {:greater_than => 0}, :allow_nil => true
end
