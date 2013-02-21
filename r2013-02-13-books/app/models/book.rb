# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  isbn       :string(255)
#  subtitle   :string(255)
#  publisher  :string(255)
#  pubdate    :date
#  coverimage :string(255)
#  format     :string(255)
#  num_pages  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#

class Book < ActiveRecord::Base
  attr_accessible :title, :subtitle, :isbn, :publisher, :pubdate, :coverimage, :format, :num_pages, :author_id
  belongs_to :author
end
