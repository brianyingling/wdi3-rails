# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  userable_id     :integer
#  userable_type   :string(255)
#  subscriber_id   :integer
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :username, :email, :password, :password_confirmation
  belongs_to :userable, :polymorphic => true
end
