class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string      :title
      t.string      :isbn
      t.string      :subtitle
      t.string      :publisher
      t.date        :pubdate
      t.string      :coverimage
      t.string      :format
      t.integer     :num_pages
      t.timestamps
    end
  end
end
