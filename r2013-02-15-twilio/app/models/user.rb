# == Schema Information
#
# Table name: users
#
#  id    :integer          not null, primary key
#  name  :string(255)
#  phone :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :name, :phone
end
