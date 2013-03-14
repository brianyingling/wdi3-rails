# == Schema Information
#
# Table name: administrators
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Administrator < ActiveRecord::Base
  attr_accessible :rol, :ssn, :tel
  has_one :user, :as => :userable
  validates :role, :presence => true
  validates :username, :email, :presence => true

end
