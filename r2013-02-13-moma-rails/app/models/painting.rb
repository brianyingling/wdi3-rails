# == Schema Information
#
# Table name: paintings
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  year       :string(255)
#  medium     :string(255)
#  style      :string(255)
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#

class Painting < ActiveRecord::Base
  attr_accessible :title, :year, :medium, :style, :image, :artist_id
  belongs_to :artist    #can call a painting object, call p1.artist = an artist object
end
