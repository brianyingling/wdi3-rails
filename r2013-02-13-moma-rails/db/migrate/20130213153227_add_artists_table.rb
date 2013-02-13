class AddArtistsTable < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :nationality
      t.date :dob
      t.string :period
      t.string :image
      t.timestamps
    end
  end
end
