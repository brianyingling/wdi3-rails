# == Schema Information
#
# Table name: subscribers
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subscriber < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation
  has_one :user, :as => :userable
  validates :tagline, :bio, :gender, :age, :presence => true
  validates :age, :numericality => {:greater_than => 17, :only_integer => true}
end
