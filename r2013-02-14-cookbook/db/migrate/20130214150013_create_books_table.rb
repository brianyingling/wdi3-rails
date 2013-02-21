class CreateBooksTable < ActiveRecord::Migration
 def change
    create_table :books do |t|
      t.string    :title
      t.text      :image
      t.string    :chef
      t.string    :cuisine
      t.timestamps
    end
 end
end
