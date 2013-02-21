# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course       :string(255)
#  cooktime     :integer
#  instructions :text
#  image        :text
#  servingssize :integer
#  book_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :name, :course, :cooktime, :instructions, :image, :servingssize, :book_id, :ingredient_ids
  belongs_to :book
  has_and_belongs_to_many :ingredients
end
