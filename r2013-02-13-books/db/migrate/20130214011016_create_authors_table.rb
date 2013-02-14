class CreateAuthorsTable < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string      :firstname
      t.string      :lastname
      t.string      :image
      t.string      :genre
    end
  end
end
